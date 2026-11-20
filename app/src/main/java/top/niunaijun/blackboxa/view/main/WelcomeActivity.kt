package top.niunaijun.blackboxa.view.main

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModelProvider
import top.niunaijun.blackboxa.R
import top.niunaijun.blackboxa.license.ActivationActivity
import top.niunaijun.blackboxa.license.LicenseClient
import top.niunaijun.blackboxa.util.InjectionUtil
import top.niunaijun.blackboxa.view.list.ListViewModel

class WelcomeActivity : AppCompatActivity() {

    override fun onNewIntent(intent: Intent?) {
        super.onNewIntent(intent)
        gate()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_welcome)
        previewInstalledAppList()
        gate()
    }

    /** Cổng bản quyền: có vé hợp lệ mới vào app, không thì sang màn kích hoạt. */
    private fun gate() {
        Thread {
            val r = LicenseClient.check(this)
            runOnUiThread {
                if (isFinishing) return@runOnUiThread
                if (r.ok) {
                    jump()
                } else {
                    ActivationActivity.start(this, r.reason)
                    finish()
                }
            }
        }.start()
    }

    private fun jump() {
        MainActivity.start(this)
        finish()
    }

    private fun previewInstalledAppList() {
        val viewModel = ViewModelProvider(this, InjectionUtil.getListFactory()).get(ListViewModel::class.java)
        viewModel.previewInstalledList()
    }
}
