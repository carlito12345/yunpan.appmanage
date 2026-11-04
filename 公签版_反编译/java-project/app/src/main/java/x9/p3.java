package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameValueBean;

/* loaded from: classes.dex */
public final class p3 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_file_arrtibute, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        NameValueBean nameValueBean = (NameValueBean) obj;
        aVar.c(R.id.v_name, nameValueBean.name);
        aVar.c(R.id.v_value, nameValueBean.value);
        aVar.d(R.id.v_modify, nameValueBean.name.equals("权限："));
    }
}
