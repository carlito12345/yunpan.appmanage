package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final class j3 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_accessibility_set, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) obj;
        aVar.c(R.id.v_name, nameContentSelectBean.name);
        aVar.c(R.id.v_content, nameContentSelectBean.content);
        aVar.b(R.id.v_ico, nameContentSelectBean.isSelect ? R.drawable.tp_check1 : R.drawable.tp_check2);
    }
}
