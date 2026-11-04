package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class q4 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_apps_type, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        x0 x0Var = (x0) obj;
        if (i10 < 2) {
            aVar.b(R.id.v_ico, x0Var.f18384b ? R.drawable.tp_radio_yes1 : R.drawable.tp_radio_no1);
        } else {
            aVar.b(R.id.v_ico, x0Var.f18384b ? R.drawable.tp_check1 : R.drawable.tp_check2);
        }
        aVar.c(R.id.v_name, x0Var.f18383a);
    }
}
