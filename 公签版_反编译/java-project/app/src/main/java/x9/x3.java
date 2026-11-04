package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.PermissionBean;

/* loaded from: classes.dex */
public final class x3 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_permission, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        PermissionBean permissionBean = (PermissionBean) obj;
        aVar.c(R.id.v_is_pms, permissionBean.permissionName_ops.isEmpty() ? "pm" : "");
        aVar.c(R.id.v_name, permissionBean.permissionLabel);
        aVar.c(R.id.v_class, permissionBean.permissionName);
        aVar.c(R.id.v_description, permissionBean.permissionDesc);
        aVar.c(R.id.v_btn, permissionBean.isOpen ? "拒绝" : "允许");
        TextView textView = (TextView) aVar.a(R.id.v_state);
        if (permissionBean.isOpen) {
            textView.setText("已允许");
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_1));
        } else {
            textView.setText(permissionBean.str_status);
            textView.setTextColor(AppStart.f3772h.getResources().getColor(R.color.color_3));
        }
    }
}
