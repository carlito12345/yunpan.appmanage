package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;

/* loaded from: classes.dex */
public final class w0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_check_no_bg, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        StrIntBoolBean strIntBoolBean = (StrIntBoolBean) obj;
        aVar.b(R.id.v_ico, strIntBoolBean.boolValue ? R.drawable.tp_check1 : R.drawable.tp_check2);
        aVar.c(R.id.v_name, strIntBoolBean.strValue);
    }
}
