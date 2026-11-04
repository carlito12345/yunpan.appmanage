package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class j4 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_reboot, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        k4 k4Var = (k4) obj;
        aVar.c(R.id.v_name, k4Var.f18261a);
        aVar.c(R.id.v_text, k4Var.f18262b);
        if (k4Var.f18261a.contains("关机")) {
            aVar.b(R.id.v_ico, R.drawable.tp_gj);
        } else {
            aVar.b(R.id.v_ico, R.drawable.tp_cq);
        }
    }
}
