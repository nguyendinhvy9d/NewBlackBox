package com.github.nukc.stateview

import android.content.Context
import android.util.AttributeSet
import android.widget.FrameLayout

/** XJang stub thay cho lib StateView (jcenter chet). No-op, chi de app compile + chay. */
class StateView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr) {
    // Lib that khong chiem cho layout (no la overlay). Stub -> GONE de khong day
    // sibling (RecyclerView/ViewPager) khoi man hinh. Cac ham la no-op.
    init { visibility = GONE }
    fun showLoading() {}
    fun showContent() {}
    fun showEmpty() {}
    fun showRetry() {}
}
