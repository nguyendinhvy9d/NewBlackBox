package com.roger.catloadinglibrary

import android.app.Dialog
import android.os.Bundle
import androidx.fragment.app.DialogFragment

/** XJang stub thay cho lib CatLoadingView (jcenter chet). Dialog rong, no-op. */
class CatLoadingView : DialogFragment() {
    fun setBackgroundColor(colorRes: Int) {}
    fun setClickCancelAble(cancelable: Boolean) { isCancelable = cancelable }
    override fun onCreateDialog(savedInstanceState: Bundle?): Dialog {
        return Dialog(requireContext())
    }
}
