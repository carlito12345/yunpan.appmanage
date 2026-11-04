package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.ShortcutCmdBean;

/* loaded from: classes.dex */
public final class w4 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_shortcut_cmd, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        ShortcutCmdBean shortcutCmdBean = (ShortcutCmdBean) obj;
        aVar.c(R.id.v_name, shortcutCmdBean.name);
        aVar.c(R.id.v_cmd, shortcutCmdBean.cmd);
    }
}
