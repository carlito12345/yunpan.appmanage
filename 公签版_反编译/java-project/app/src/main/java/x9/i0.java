package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StringBoolBean;

/* loaded from: classes.dex */
public final class i0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_boot_start_task, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        StringBoolBean stringBoolBean = (StringBoolBean) obj;
        aVar.c(R.id.v_name, stringBoolBean.name);
        aVar.b(R.id.v_ico, stringBoolBean.isCheck ? R.drawable.tp_check1 : R.drawable.tp_check2);
    }
}
