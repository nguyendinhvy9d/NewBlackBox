package top.niunaijun.blackboxa.license

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import top.niunaijun.blackboxa.R
import top.niunaijun.blackboxa.view.main.MainActivity

/** Màn nhập key + kích hoạt bản quyền. Hiện khi chưa có key hợp lệ. */
class ActivationActivity : AppCompatActivity() {

    private lateinit var input: EditText
    private lateinit var btn: Button
    private lateinit var status: TextView
    private lateinit var progress: ProgressBar

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_activation)

        input = findViewById(R.id.actKeyInput)
        btn = findViewById(R.id.actButton)
        status = findViewById(R.id.actStatus)
        progress = findViewById(R.id.actProgress)

        // Mã máy rút gọn để khách đọc cho hỗ trợ khi cần chuyển máy.
        val devShort = LicenseClient.deviceId(this).take(12).uppercase()
        findViewById<TextView>(R.id.actDeviceId).text = "Mã máy: $devShort"

        LicenseClient.savedKey(this).takeIf { it.isNotEmpty() }?.let { input.setText(it) }

        intent?.getStringExtra(EXTRA_REASON)?.let { r ->
            if (r.isNotEmpty() && r != "no_key") showStatus(reasonText(r), true)
        }

        btn.setOnClickListener { activate() }
    }

    private fun activate() {
        val key = input.text.toString().trim()
        if (key.isEmpty()) { showStatus("Nhập key trước đã.", true); return }
        setLoading(true)
        Thread {
            val r = LicenseClient.lease(this, key)
            runOnUiThread {
                setLoading(false)
                if (r.ok) {
                    Toast.makeText(this, "Kích hoạt thành công!", Toast.LENGTH_SHORT).show()
                    MainActivity.start(this)
                    finish()
                } else {
                    showStatus(reasonText(r.reason), true)
                }
            }
        }.start()
    }

    private fun setLoading(on: Boolean) {
        progress.visibility = if (on) View.VISIBLE else View.GONE
        btn.isEnabled = !on
        input.isEnabled = !on
    }

    private fun showStatus(msg: String, isError: Boolean) {
        status.visibility = View.VISIBLE
        status.text = msg
        status.setTextColor(if (isError) 0xFFD93025.toInt() else 0xFF1E8E3E.toInt())
    }

    companion object {
        private const val EXTRA_REASON = "reason"
        fun start(ctx: Context, reason: String = "") {
            val i = Intent(ctx, ActivationActivity::class.java)
            i.putExtra(EXTRA_REASON, reason)
            if (ctx !is Activity) i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            ctx.startActivity(i)
        }

        fun reasonText(reason: String): String = when (reason) {
            "not_found" -> "Key không tồn tại. Kiểm tra lại."
            "revoked" -> "Key đã bị thu hồi."
            "expired" -> "Key đã hết hạn. Hãy gia hạn."
            "device_mismatch" -> "Key đã khóa vào máy khác. Liên hệ hỗ trợ để chuyển máy."
            "wrong_tool" -> "Key này không dùng cho XjangJu."
            "bad_request" -> "Thông tin không hợp lệ."
            "rate_limited" -> "Thao tác quá nhanh. Thử lại sau ít phút."
            "bad_ticket", "bad_response", "bad_signature" -> "Lỗi xác thực vé. Thử lại."
            "offline_no_cache" -> "Chưa có mạng và chưa từng kích hoạt. Cần mạng cho lần đầu."
            "offline_expired" -> "Đã offline quá lâu. Kết nối mạng để kiểm tra lại."
            else -> "Chưa kích hoạt được. Thử lại."
        }
    }
}
