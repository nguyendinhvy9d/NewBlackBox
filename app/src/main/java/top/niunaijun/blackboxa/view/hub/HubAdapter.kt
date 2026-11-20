package top.niunaijun.blackboxa.view.hub

import android.graphics.drawable.Drawable
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import top.niunaijun.blackboxa.R

/** Một app bên trong một ô. */
data class AppEntry(
    val packageName: String,
    val label: String,
    val icon: Drawable?
)

/** Một Ô (user space) = một thẻ, chứa nhiều app. */
data class OCard(
    val userId: Int,
    val device: String,
    val gmsOn: Boolean,
    val remark: String?,
    val apps: List<AppEntry>
)

/**
 * Danh sách THẺ-theo-Ô (giống MultiApp): mỗi thẻ 1 ô, bên trong là các icon app.
 * - Bấm icon app = mở app đó trong ô.  - Giữ icon app = menu app (gỡ app).
 * - Bấm "+" trên thẻ = thêm app vào ô.  - Bấm "⋮" = menu ô (thiết bị/đổi tên/làm mới/xóa...).
 */
class HubAdapter(
    private val onLaunch: (userId: Int, packageName: String) -> Unit,
    private val onAppMenu: (userId: Int, packageName: String, anchor: View) -> Unit,
    private val onAddApp: (userId: Int) -> Unit,
    private val onCardMenu: (userId: Int, anchor: View) -> Unit
) : RecyclerView.Adapter<HubAdapter.VH>() {

    private val all = mutableListOf<OCard>()
    private val shown = mutableListOf<OCard>()
    private var query = ""

    fun submit(list: List<OCard>) {
        all.clear(); all.addAll(list); applyFilter()
    }

    fun filter(text: String) {
        query = text.trim().lowercase(); applyFilter()
    }

    private fun applyFilter() {
        shown.clear()
        if (query.isEmpty()) shown.addAll(all)
        else for (c in all) {
            val hay = ("ô${c.userId} ${c.remark ?: ""} ${c.device} " +
                    c.apps.joinToString(" ") { it.label + " " + it.packageName }).lowercase()
            if (hay.contains(query)) shown.add(c)
        }
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val v = LayoutInflater.from(parent.context).inflate(R.layout.item_o_card, parent, false)
        return VH(v)
    }

    override fun getItemCount(): Int = shown.size

    override fun onBindViewHolder(holder: VH, position: Int) {
        val card = shown[position]
        holder.num.text = "ô${card.userId}"
        val sub = StringBuilder()
        if (!card.remark.isNullOrBlank()) sub.append(card.remark).append("  ·  ")
        sub.append(if (card.device.isNotEmpty()) card.device else "máy mặc định")
        if (card.gmsOn) sub.append("  ·  GMS")
        holder.device.text = sub.toString()
        holder.add.setOnClickListener { onAddApp(card.userId) }
        holder.menu.setOnClickListener { onCardMenu(card.userId, holder.menu) }

        // Đổ các icon app vào thẻ
        holder.apps.removeAllViews()
        val inflater = LayoutInflater.from(holder.apps.context)
        if (card.apps.isEmpty()) {
            val tv = TextView(holder.apps.context)
            tv.text = "(ô trống — bấm + để thêm app)"
            tv.textSize = 12f
            tv.setTextColor(0xFF9AA0A6.toInt())
            tv.setPadding(8, 16, 8, 16)
            holder.apps.addView(tv)
        } else {
            for (app in card.apps) {
                val cell = inflater.inflate(R.layout.item_o_app, holder.apps, false)
                cell.findViewById<ImageView>(R.id.app_icon).setImageDrawable(app.icon)
                cell.findViewById<TextView>(R.id.app_label).text = app.label
                cell.setOnClickListener { onLaunch(card.userId, app.packageName) }
                cell.setOnLongClickListener { onAppMenu(card.userId, app.packageName, it); true }
                holder.apps.addView(cell)
            }
        }
    }

    class VH(v: View) : RecyclerView.ViewHolder(v) {
        val num: TextView = v.findViewById(R.id.card_num)
        val device: TextView = v.findViewById(R.id.card_device)
        val add: TextView = v.findViewById(R.id.card_add)
        val menu: TextView = v.findViewById(R.id.card_menu)
        val apps: LinearLayout = v.findViewById(R.id.card_apps)
    }
}
