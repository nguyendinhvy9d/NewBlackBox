package com.imuxuan.floatingview

import android.app.Activity
import android.content.Context
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout

/** XJang stub thay cho lib imuxuan FloatingView (jcenter chet). Giu nguyen API, no-op overlay. */
open class FloatingMagnetView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : FrameLayout(context, attrs, defStyleAttr) {
    override fun onTouchEvent(event: MotionEvent?): Boolean = super.onTouchEvent(event)
}

class FloatingView private constructor() {
    private var customView: FloatingMagnetView? = null

    val view: FloatingMagnetView?
        get() = customView

    fun attach(activity: Activity?): FloatingView = this
    fun detach(activity: Activity?): FloatingView = this
    fun add(): FloatingView = this
    fun remove(): FloatingView = this
    fun customView(v: FloatingMagnetView?): FloatingView {
        customView = v
        return this
    }

    companion object {
        private val instance = FloatingView()
        @JvmStatic
        fun get(): FloatingView = instance
    }
}
