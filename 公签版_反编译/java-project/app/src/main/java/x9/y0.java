package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class y0 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final boolean f18398h;

    public y0(boolean z) {
        this.f18398h = z;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(this.f18398h ? R.layout.item_check_no_bg2 : R.layout.item_check_no_bg, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        x0 x0Var = (x0) obj;
        aVar.b(R.id.v_ico, x0Var.f18384b ? R.drawable.tp_check1 : R.drawable.tp_check2);
        aVar.c(R.id.v_name, x0Var.f18383a);
    }
}
