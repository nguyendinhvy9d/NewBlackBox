package top.niunaijun.blackboxa.view.main

import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.net.Uri
import android.net.VpnService
import android.os.Bundle
import android.util.Log
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.widget.PopupMenu
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.edit
import com.afollestad.materialdialogs.MaterialDialog
import com.afollestad.materialdialogs.input.input
import top.niunaijun.blackbox.BlackBoxCore
import top.niunaijun.blackboxa.R
import top.niunaijun.blackboxa.app.App
import top.niunaijun.blackboxa.app.AppManager
import top.niunaijun.blackboxa.databinding.ActivityMainBinding
import top.niunaijun.blackboxa.util.inflate
import top.niunaijun.blackboxa.view.base.LoadingActivity
import top.niunaijun.blackboxa.view.deviceinfo.DeviceInfoActivity
import top.niunaijun.blackboxa.view.hub.AppEntry
import top.niunaijun.blackboxa.view.hub.HubAdapter
import top.niunaijun.blackboxa.view.hub.OCard
import top.niunaijun.blackboxa.view.list.ListActivity
import top.niunaijun.blackboxa.view.setting.SettingActivity
import java.util.concurrent.Executors

class MainActivity : LoadingActivity() {

    private val viewBinding: ActivityMainBinding by inflate()
    private lateinit var adapter: HubAdapter
    private val io = Executors.newSingleThreadExecutor()
    // Cache icon theo package -> 80 ô cùng app chỉ giữ 1 icon trong RAM (nhẹ khi nhiều ô)
    private val iconCache = HashMap<String, android.graphics.drawable.Drawable?>()
    // Chỉ quét lại danh sách ô khi thực sự có thay đổi (tạo/xóa/gỡ/đổi tên).
    // Quay về từ mở-ô/cài-đặt/thông-tin KHÔNG quét lại -> đỡ chậm khi nhiều ô.
    @Volatile private var needsReload = true

    companion object {
        private const val TAG = "MainActivity"
        private const val STORAGE_PERMISSION_REQUEST_CODE = 1001
        // Component GMS chạy nền -> KHÔNG hiện thành ô (chỉ hiện app người dùng + Play Store).
        private val GMS_HIDDEN = setOf(
            "com.google.android.gms",
            "com.google.android.gsf",
            "com.google.android.gsf.login",
            "com.google.android.configupdater",
            "com.google.android.syncadapters.contacts",
            "com.google.android.syncadapters.calendar",
            "com.google.android.feedback",
            "com.google.android.onetimeinitializer",
            "com.google.android.partnersetup",
            "com.google.android.setupwizard",
            "com.google.android.backuptransport",
            "com.google.android.backup"
        )
        fun start(context: Context) {
            context.startActivity(Intent(context, MainActivity::class.java))
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        try {
            super.onCreate(savedInstanceState)
            try { BlackBoxCore.get().onBeforeMainActivityOnCreate(this) } catch (e: Exception) {
                Log.e(TAG, "onBefore: ${e.message}")
            }
            setContentView(viewBinding.root)
            initToolbar(viewBinding.toolbarLayout.toolbar, R.string.app_name)
            setupGrid()
            initFab()
            checkStoragePermission()
            try { BlackBoxCore.get().onAfterMainActivityOnCreate(this) } catch (e: Exception) {
                Log.e(TAG, "onAfter: ${e.message}")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Critical onCreate: ${e.message}")
        }
    }

    override fun onResume() {
        super.onResume()
        checkStoragePermission()
        if (needsReload) reloadClones()
    }

    override fun onDestroy() {
        // Đóng luồng nền để không rò thread khi thoát app
        try { io.shutdown() } catch (_: Exception) {}
        super.onDestroy()
    }

    override fun onTrimMemory(level: Int) {
        super.onTrimMemory(level)
        // Thiếu RAM hoặc app bị ẩn -> trả lại cache icon cho hệ thống (nhẹ khi chạy lâu).
        // Lần quay lại reloadClones() tự nạp lại icon nên không ảnh hưởng hiển thị.
        if (level >= TRIM_MEMORY_UI_HIDDEN) {
            iconCache.clear()
        }
    }

    // ---------------- Danh sách ô ----------------

    private fun setupGrid() {
        adapter = HubAdapter(
            onLaunch = { uid, pkg -> launchApp(uid, pkg) },
            onAppMenu = { uid, pkg, view -> showAppMenu(uid, pkg, view) },
            onAddApp = { uid -> startAddAppToO(uid) },
            onCardMenu = { uid, view -> showCardMenu(uid, view) }
        )
        viewBinding.recyclerView.layoutManager =
            androidx.recyclerview.widget.LinearLayoutManager(this)
        viewBinding.recyclerView.adapter = adapter
        // Tìm ô theo số/tên/app
        viewBinding.searchInput.addTextChangedListener(object : android.text.TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, st: Int, c: Int, a: Int) {}
            override fun onTextChanged(s: CharSequence?, st: Int, b: Int, c: Int) {
                adapter.filter(s?.toString() ?: "")
            }
            override fun afterTextChanged(s: android.text.Editable?) {}
        })
    }

    private fun reloadClones() {
        io.execute {
            val cards = mutableListOf<OCard>()
            try {
                val pm = BlackBoxCore.getPackageManager()
                val users = BlackBoxCore.get().users.sortedBy { it.id }
                for (u in users) {
                    val gmsOn = try { BlackBoxCore.get().isInstallGms(u.id) } catch (e: Exception) { false }
                    val device = deviceModelOf(u.id)
                    val remark = AppManager.mRemarkSharedPreferences.getString("Remark${u.id}", null)
                        ?.takeIf { it.isNotBlank() }
                    val apps: List<ApplicationInfo> = try {
                        BlackBoxCore.get().getInstalledApplications(0, u.id) ?: emptyList()
                    } catch (e: Exception) { emptyList() }
                    val entries = mutableListOf<AppEntry>()
                    for (ai in apps) {
                        if (ai?.packageName.isNullOrBlank()) continue
                        // Ẩn component GMS chạy nền (giữ Play Store thì bỏ dòng này ra khỏi set)
                        if (GMS_HIDDEN.contains(ai.packageName)) continue
                        val appLabel = try { pm.getApplicationLabel(ai).toString() } catch (e: Exception) { ai.packageName }
                        val icon = iconCache.getOrPut(ai.packageName) {
                            try { pm.getApplicationIcon(ai) } catch (e: Exception) { null }
                        }
                        entries.add(AppEntry(ai.packageName, appLabel, icon))
                    }
                    // App cũ đứng trước, app mới (cài sau) đứng sau
                    entries.sortBy {
                        AppManager.mRemarkSharedPreferences.getLong("AppOrder_${u.id}_${it.packageName}", 0L)
                    }
                    cards.add(OCard(u.id, device, gmsOn, remark, entries))
                }
            } catch (e: Exception) {
                Log.e(TAG, "reloadClones: ${e.message}")
            }
            runOnUiThread {
                adapter.submit(cards)
                viewBinding.emptyView.visibility = if (cards.isEmpty()) View.VISIBLE else View.GONE
                viewBinding.toolbarLayout.toolbar.subtitle = getString(R.string.xj_o_count, cards.size)
                needsReload = false
            }
        }
    }

    // Lấy model máy ảo của ô (qua XJProfile.describe reflection, khớp màn Thông tin thiết bị)
    private fun deviceModelOf(uid: Int): String {
        return try {
            val cls = Class.forName("io.vanta.fake.XJProfile")
            val m = cls.getMethod("describe", Int::class.javaPrimitiveType)
            val json = m.invoke(null, uid) as String
            org.json.JSONObject(json).optString("model", "")
        } catch (t: Throwable) { "" }
    }

    private fun launchApp(userId: Int, packageName: String) {
        if (!top.niunaijun.blackboxa.license.LicenseClient.sessionOk()) { blockNoLicense(); return }
        io.execute {
            val ok = try { BlackBoxCore.get().launchApk(packageName, userId) } catch (e: Exception) { false }
            if (!ok) runOnUiThread { toast(getString(R.string.xj_launch_fail)) }
        }
    }

    /** Phiên chưa có vé hợp lệ (vào bằng cửa phụ / vé hết hạn) -> về màn kích hoạt. */
    private fun blockNoLicense() {
        top.niunaijun.blackboxa.license.ActivationActivity.start(this)
        finish()
    }

    // ---------------- Add N clones ----------------

    private fun initFab() {
        viewBinding.fab.setOnClickListener { startAddFlow() }
    }

    private val pickAppResult =
        registerForActivityResult(ActivityResultContracts.StartActivityForResult()) {
            if (it.resultCode == RESULT_OK) {
                val source = it.data?.getStringExtra("source")
                if (!source.isNullOrBlank()) askQuantity(source)
            }
        }

    private fun startAddFlow() {
        if (!top.niunaijun.blackboxa.license.LicenseClient.sessionOk()) { blockNoLicense(); return }
        try {
            val intent = Intent(this, ListActivity::class.java)
            intent.putExtra("userID", 0)
            pickAppResult.launch(intent)
        } catch (e: Exception) {
            Log.e(TAG, "startAddFlow: ${e.message}")
        }
    }

    private fun askQuantity(source: String) {
        MaterialDialog(this).show {
            title(res = R.string.xj_add_count_title)
            input(hintRes = R.string.xj_add_count_hint, inputType = android.text.InputType.TYPE_CLASS_NUMBER) { _, text ->
                val n = text.toString().trim().toIntOrNull()?.coerceIn(1, 80) ?: 1
                batchCreate(source, n)
            }
            positiveButton(res = R.string.done)
            negativeButton(res = R.string.cancel)
        }
    }

    /**
     * Cài 1 app vào 1 userId, xử lý ĐỦ split APK (App Bundle) + thư viện chia sẻ tĩnh (vd Chrome/Trichrome).
     * Chạy trên luồng gọi (đã ở io). Trả true nếu thành công.
     */
    private fun installAppToUser(source: String, userId: Int): Boolean {
        return try {
            val ai = try {
                packageManager.getApplicationInfo(source, android.content.pm.PackageManager.GET_SHARED_LIBRARY_FILES)
            } catch (e: Exception) { null }
            val baseApk = ai?.sourceDir
            val extra = ArrayList<String>()
            ai?.splitSourceDirs?.let { extra.addAll(it) }
            ai?.sharedLibraryFiles?.forEach { lib ->
                if (lib != null && lib.endsWith(".apk") && !extra.contains(lib)) extra.add(lib)
            }
            val success = if (baseApk != null && extra.isNotEmpty()) {
                val r = BlackBoxCore.get().installPackageWithSplits(baseApk, extra.toTypedArray(), userId)
                r != null && r.success
            } else {
                val r = BlackBoxCore.get().installPackageAsUser(source, userId)
                r != null && r.success
            }
            if (success) {
                // Ghi thứ tự cài -> app MỚI đứng SAU app cũ trong ô (chỉ ghi nếu chưa có, để giữ mốc cũ)
                try {
                    val key = "AppOrder_${userId}_$source"
                    if (!AppManager.mRemarkSharedPreferences.contains(key)) {
                        AppManager.mRemarkSharedPreferences.edit { putLong(key, System.currentTimeMillis()) }
                    }
                } catch (_: Exception) {}
            }
            success
        } catch (e: Exception) {
            Log.e(TAG, "installAppToUser $source -> $userId: ${e.message}"); false
        }
    }

    private fun batchCreate(source: String, n: Int) {
        toast(getString(R.string.xj_creating, n))
        io.execute {
            var created = 0
            try {
                val used = BlackBoxCore.get().users.map { it.id }.toMutableSet()
                repeat(n) {
                    // lấp chỗ trống: lấy userId NHỎ NHẤT còn trống (gọn số ô)
                    var id = 0
                    while (used.contains(id)) id++
                    used.add(id)
                    try {
                        // phòng meta cũ còn sót cho id này -> ô mới KHÔNG dính thiết bị/tên cũ
                        clearSalt(id)
                        try { AppManager.mRemarkSharedPreferences.edit { remove("Remark$id") } } catch (_: Exception) {}
                        if (installAppToUser(source, id)) {
                            created++
                            // MỖI ô mới = 1 thiết bị NGẪU NHIÊN riêng
                            writeRandomSalt(id)
                        } else {
                            try { BlackBoxCore.get().deleteUser(id) } catch (_: Exception) {}
                            used.remove(id)
                        }
                    } catch (e: Exception) {
                        Log.e(TAG, "create ô $id: ${e.message}")
                        try { BlackBoxCore.get().deleteUser(id) } catch (_: Exception) {}
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "batchCreate: ${e.message}")
            }
            runOnUiThread {
                iconCache.clear()
                toast(getString(R.string.xj_created, created, n))
                reloadClones()
            }
        }
    }

    // ---------------- Thêm app vào MỘT ô có sẵn (nút + trên thẻ) ----------------

    private var pendingAddUser: Int = -1

    private val addAppResult =
        registerForActivityResult(ActivityResultContracts.StartActivityForResult()) {
            if (it.resultCode == RESULT_OK) {
                val source = it.data?.getStringExtra("source")
                val uid = pendingAddUser
                if (!source.isNullOrBlank() && uid >= 0) {
                    toast(getString(R.string.xj_creating, 1))
                    io.execute {
                        val ok = installAppToUser(source, uid)
                        runOnUiThread {
                            iconCache.clear()
                            toast(if (ok) "Đã thêm app vào ô$uid" else "Thêm app thất bại")
                            reloadClones()
                        }
                    }
                }
                pendingAddUser = -1
            }
        }

    private fun startAddAppToO(userId: Int) {
        if (!top.niunaijun.blackboxa.license.LicenseClient.sessionOk()) { blockNoLicense(); return }
        pendingAddUser = userId
        try {
            val intent = Intent(this, ListActivity::class.java)
            intent.putExtra("userID", userId)
            addAppResult.launch(intent)
        } catch (e: Exception) { Log.e(TAG, "startAddAppToO: ${e.message}") }
    }

    // ---------------- Menu mức Ô (nút ⋮ trên thẻ) ----------------

    private fun showCardMenu(userId: Int, anchor: View) {
        val popup = PopupMenu(this, anchor)
        popup.menu.add(0, 1, 0, getString(R.string.xj_device_info))
        popup.menu.add(0, 5, 1, getString(R.string.xj_stop_o))
        popup.menu.add(0, 2, 2, getString(R.string.xj_rename_o))
        popup.menu.add(0, 6, 3, "Làm mới ô (xóa data + máy mới)")
        popup.menu.add(0, 7, 4, "Thêm app vào ô")
        popup.menu.add(0, 4, 5, getString(R.string.xj_delete_user))
        popup.setOnMenuItemClickListener { mi ->
            when (mi.itemId) {
                1 -> {
                    // mở Thông tin thiết bị -> có thể Đổi hồ sơ/Về gốc -> buộc nạp lại khi quay về để cập nhật máy
                    needsReload = true
                    DeviceInfoActivity.start(this, userId, labelOf(userId))
                }
                5 -> stopO(userId)
                2 -> renameO(userId)
                6 -> confirmResetO(userId)
                7 -> startAddAppToO(userId)
                4 -> confirmDeleteO(userId)
            }
            true
        }
        popup.show()
    }

    // ---------------- Menu mức APP (giữ icon app trong thẻ) ----------------

    private fun showAppMenu(userId: Int, packageName: String, anchor: View) {
        val popup = PopupMenu(this, anchor)
        popup.menu.add(0, 1, 0, "Mở app")
        popup.menu.add(0, 2, 1, getString(R.string.app_remove))
        popup.setOnMenuItemClickListener { mi ->
            when (mi.itemId) {
                1 -> launchApp(userId, packageName)
                2 -> uninstallApp(userId, packageName)
            }
            true
        }
        popup.show()
    }

    private fun stopO(userId: Int) {
        io.execute {
            try {
                val apps = BlackBoxCore.get().getInstalledApplications(0, userId) ?: emptyList()
                for (ai in apps) {
                    if (ai?.packageName.isNullOrBlank()) continue
                    try { BlackBoxCore.get().stopPackage(ai.packageName, userId) } catch (_: Exception) {}
                }
            } catch (e: Exception) { Log.e(TAG, "stopO: ${e.message}") }
            runOnUiThread { toast(getString(R.string.xj_stopped)) }
        }
    }

    private fun stopAllClones() {
        io.execute {
            try {
                val users = BlackBoxCore.get().users
                for (u in users) {
                    val apps = try { BlackBoxCore.get().getInstalledApplications(0, u.id) ?: emptyList() } catch (e: Exception) { emptyList() }
                    for (ai in apps) {
                        if (ai?.packageName.isNullOrBlank()) continue
                        try { BlackBoxCore.get().stopPackage(ai.packageName, u.id) } catch (_: Exception) {}
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "stopAll: ${e.message}")
            }
            runOnUiThread { toast(getString(R.string.xj_stopped_all)) }
        }
    }

    private fun labelOf(userId: Int): String =
        AppManager.mRemarkSharedPreferences.getString("Remark$userId", null)
            ?.takeIf { it.isNotBlank() } ?: "User $userId"

    private fun renameO(userId: Int) {
        MaterialDialog(this).show {
            title(res = R.string.xj_rename_o)
            input(prefill = labelOf(userId)) { _, text ->
                AppManager.mRemarkSharedPreferences.edit { putString("Remark$userId", text.toString()) }
                reloadClones()
            }
            positiveButton(res = R.string.done)
            negativeButton(res = R.string.cancel)
        }
    }

    private fun uninstallApp(userId: Int, packageName: String) {
        MaterialDialog(this).show {
            title(res = R.string.app_remove)
            message(text = getString(R.string.uninstall_app_hint, packageName))
            positiveButton(res = R.string.done) {
                io.execute {
                    try { BlackBoxCore.get().uninstallPackageAsUser(packageName, userId) } catch (e: Exception) {
                        Log.e(TAG, "uninstall: ${e.message}")
                    }
                    runOnUiThread {
                        iconCache.remove(packageName)
                        reloadClones()
                    }
                }
            }
            negativeButton(res = R.string.cancel)
        }
    }

    private fun confirmDeleteO(userId: Int) {
        MaterialDialog(this).show {
            title(res = R.string.xj_delete_user)
            message(text = getString(R.string.xj_delete_user_hint, labelOf(userId)))
            positiveButton(res = R.string.done) {
                io.execute {
                    try {
                        BlackBoxCore.get().deleteUser(userId)
                        AppManager.mRemarkSharedPreferences.edit {
                            remove("Remark$userId")
                            // dọn mốc thứ tự app của ô này
                            val prefix = "AppOrder_${userId}_"
                            for (k in AppManager.mRemarkSharedPreferences.all.keys) {
                                if (k.startsWith(prefix)) remove(k)
                            }
                        }
                        clearSalt(userId)
                    } catch (e: Exception) {
                        Log.e(TAG, "deleteUser: ${e.message}")
                    }
                    runOnUiThread {
                        toast(getString(R.string.xj_delete_user_ok))
                        reloadClones()
                    }
                }
            }
            negativeButton(res = R.string.cancel)
        }
    }

    // Làm mới ô: xóa SẠCH data MỌI app trong ô -> như mới tạo, GIỮ app + số ô.
    private fun confirmResetO(userId: Int) {
        MaterialDialog(this).show {
            title(text = "Làm mới ô này?")
            message(text = "Ô sẽ bị XÓA SẠCH: đăng nhập, cookie, cache, lịch sử (mọi app trong ô) — về như MỚI TẠO. " +
                    "Kèm cấp THIẾT BỊ mới ngẫu nhiên và trả tên về mặc định. Giữ nguyên số ô. Không hoàn tác được.")
            positiveButton(text = "Làm mới") {
                io.execute {
                    try {
                        val apps = BlackBoxCore.get().getInstalledApplications(0, userId) ?: emptyList()
                        // 1) Dừng MỌI app trong ô trước (để tiến trình không ghi lại data khi đang xoá).
                        for (ai in apps) {
                            if (ai?.packageName.isNullOrBlank()) continue
                            try { BlackBoxCore.get().stopPackage(ai.packageName, userId) } catch (_: Exception) {}
                        }
                        // 2) Xoá SẠCH tài khoản (Google/GMS…) + NUKE toàn bộ cây data của ô.
                        //    Gộp trong engine (BlackBoxCore): accounts.conf là toàn-engine (clearPackage không đụng) =>
                        //    đây là lý do tài khoản Google + LINE còn sót sau khi làm mới. Bắt cả app clearPackage bỏ sót.
                        try { BlackBoxCore.get().clearUserData(userId) } catch (_: Exception) {}
                        // 4) clearPackage từng app = RemoveUser (dọn nốt) + CreateUser (tạo lại cấu trúc data TRỐNG sạch).
                        for (ai in apps) {
                            if (ai?.packageName.isNullOrBlank()) continue
                            try { BlackBoxCore.get().clearPackage(ai.packageName, userId) } catch (_: Exception) {}
                        }
                        writeRandomSalt(userId)                                      // máy random mới
                        AppManager.mRemarkSharedPreferences.edit { remove("Remark$userId") } // về tên mặc định
                        iconCache.clear()
                    } catch (e: Exception) {
                        Log.e(TAG, "resetO: ${e.message}")
                    }
                    runOnUiThread {
                        toast("Đã làm mới ô (sạch + máy mới)")
                        reloadClones()
                    }
                }
            }
            negativeButton(res = R.string.cancel)
        }
    }

    private fun toast(msg: String) {
        android.widget.Toast.makeText(this, msg, android.widget.Toast.LENGTH_SHORT).show()
    }

    // Xóa file salt thiết bị của 1 ô (dùng khi xóa ô / trước khi tạo ô mới trùng id).
    private fun clearSalt(uid: Int) {
        try { java.io.File("/storage/emulated/0/.xjsalt/$uid").delete() } catch (_: Exception) {}
    }

    // Gán 1 salt NGẪU NHIÊN cho ô mới -> mỗi ô là 1 thiết bị riêng (kể cả dùng lại userId).
    private fun writeRandomSalt(uid: Int) {
        try {
            val dir = java.io.File("/storage/emulated/0/.xjsalt"); dir.mkdirs()
            val r = java.security.SecureRandom(); val hex = "0123456789abcdef"
            val sb = StringBuilder(); repeat(8) { sb.append(hex[r.nextInt(16)]) }
            java.io.File(dir, uid.toString()).writeText(sb.toString())
        } catch (_: Exception) {}
    }

    // Tương thích ngược với AppsFragment cũ (không còn dùng ViewPager, nhưng giữ compile).
    fun showFloatButton(show: Boolean) { /* no-op: Hub có FAB cố định */ }
    fun scanUser() { reloadClones() }

    // ---------------- Menu ----------------

    override fun onCreateOptionsMenu(menu: Menu?): Boolean {
        return try { menuInflater.inflate(R.menu.menu_main, menu); true } catch (e: Exception) { false }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        try {
            when (item.itemId) {
                R.id.main_stop_all -> stopAllClones()
                R.id.main_gms -> top.niunaijun.blackboxa.view.gms.GmsManagerActivity.start(this)
                R.id.main_setting -> SettingActivity.start(this)
                R.id.main_git -> startActivity(Intent(Intent.ACTION_VIEW, Uri.parse("https://github.com/ALEX5402/NewBlackbox")))
                R.id.main_tg -> startActivity(Intent(Intent.ACTION_VIEW, Uri.parse("https://t.me/newblackboxa")))
                R.id.fake_location -> {
                    val intent = Intent(this, top.niunaijun.blackboxa.view.fake.FakeManagerActivity::class.java)
                    intent.putExtra("userID", 0)
                    startActivity(intent)
                }
            }
            return true
        } catch (e: Exception) {
            Log.e(TAG, "menu: ${e.message}")
            return false
        }
    }

    // ---------------- Storage + VPN permission (giữ nguyên) ----------------

    private var storageDialog: MaterialDialog? = null

    private fun isStoragePermissionGranted(): Boolean {
        return if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
            android.os.Environment.isExternalStorageManager()
        } else {
            androidx.core.content.ContextCompat.checkSelfPermission(
                this, android.Manifest.permission.WRITE_EXTERNAL_STORAGE
            ) == android.content.pm.PackageManager.PERMISSION_GRANTED
        }
    }

    private fun checkStoragePermission() {
        try {
            if (isStoragePermissionGranted()) {
                storageDialog?.dismiss(); storageDialog = null
                try { com.mundo.core.env.BEnvironment.load() } catch (e: Throwable) {
                    Log.e(TAG, "BEnvironment: ${e.message}")
                }
                checkVpnPermission()
                return
            }
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
                showStoragePermissionDialog()
            } else {
                androidx.core.app.ActivityCompat.requestPermissions(
                    this,
                    arrayOf(
                        android.Manifest.permission.READ_EXTERNAL_STORAGE,
                        android.Manifest.permission.WRITE_EXTERNAL_STORAGE
                    ),
                    STORAGE_PERMISSION_REQUEST_CODE
                )
            }
        } catch (e: Exception) {
            Log.e(TAG, "checkStoragePermission: ${e.message}")
        }
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == STORAGE_PERMISSION_REQUEST_CODE) checkStoragePermission()
    }

    private fun showStoragePermissionDialog() {
        try {
            if (storageDialog?.isShowing == true) return
            storageDialog = MaterialDialog(this).show {
                title(text = "Storage Permission Required")
                message(text = "XjangJu cần quyền 'Quản lý toàn bộ tệp' để chạy các ô ảo ổn định.\n\nHãy bật 'Cho phép quản lý tất cả tệp' ở màn hình kế tiếp.")
                positiveButton(text = "Cấp quyền") { openAllFilesAccessSettings() }
                negativeButton(text = "Thoát") { finishAffinity() }
                cancelable(false)
            }
        } catch (e: Exception) {
            Log.e(TAG, "showStoragePermissionDialog: ${e.message}")
            openAllFilesAccessSettings()
        }
    }

    private fun openAllFilesAccessSettings() {
        try {
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
                val intent = Intent(android.provider.Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION)
                intent.data = Uri.parse("package:$packageName")
                storagePermissionResult.launch(intent)
            }
        } catch (e: Exception) {
            try {
                storagePermissionResult.launch(Intent(android.provider.Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
            } catch (e2: Exception) {
                Log.e(TAG, "openAllFilesAccessSettings: ${e2.message}")
            }
        }
    }

    private val storagePermissionResult =
        registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { checkStoragePermission() }

    private fun checkVpnPermission() {
        try {
            val vpnIntent = VpnService.prepare(this)
            if (vpnIntent != null) vpnPermissionResult.launch(vpnIntent)
        } catch (e: Exception) {
            Log.e(TAG, "checkVpnPermission: ${e.message}")
        }
    }

    private val vpnPermissionResult =
        registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { }
}
