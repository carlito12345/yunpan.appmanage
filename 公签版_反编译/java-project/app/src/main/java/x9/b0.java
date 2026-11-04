package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PermissionBean;

/* loaded from: classes.dex */
public final class b0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_apps_permissions_allow, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        PermissionBean permissionBean = (PermissionBean) obj;
        aVar.b(R.id.v_ico, permissionBean.isSelect ? R.drawable.tp_check1 : R.drawable.tp_check2);
        aVar.c(R.id.v_name, permissionBean.permissionLabel);
        aVar.c(R.id.v_ops, permissionBean.permissionName_ops);
        aVar.c(R.id.v_class, permissionBean.permissionName);
        aVar.c(R.id.v_state, permissionBean.str1);
    }
}
