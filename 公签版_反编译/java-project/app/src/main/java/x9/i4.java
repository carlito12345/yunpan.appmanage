package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class i4 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final boolean f18244h = true;

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(this.f18244h ? R.layout.item_check_no_bg2 : R.layout.item_check_no_bg, viewGroup);
    }

    public final int F() {
        for (int i10 = 0; i10 < b(); i10++) {
            if (((x0) t(i10)).f18384b) {
                return i10;
            }
        }
        return -1;
    }

    public final void G(int i10) {
        int i11 = 0;
        while (i11 < b()) {
            ((x0) t(i11)).f18384b = i11 == i10;
            e(i11);
            i11++;
        }
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        x0 x0Var = (x0) obj;
        aVar.b(R.id.v_ico, x0Var.f18384b ? R.drawable.tp_radio_yes7 : R.drawable.tp_rad1);
        aVar.c(R.id.v_name, x0Var.f18383a);
    }
}
