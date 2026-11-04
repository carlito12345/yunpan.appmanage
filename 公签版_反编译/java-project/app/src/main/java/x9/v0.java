package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class v0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_check, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        x0 x0Var = (x0) obj;
        if (x0Var.f18383a.startsWith("文件菜单")) {
            aVar.b(R.id.v_ico, R.drawable.tp_gh1);
        } else {
            aVar.b(R.id.v_ico, x0Var.f18384b ? R.drawable.check2 : R.drawable.check1);
        }
        aVar.c(R.id.v_name, x0Var.f18383a);
    }
}
