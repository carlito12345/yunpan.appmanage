package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class c0 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_apps_type, viewGroup);
    }

    public final int F() {
        for (int i10 = 0; i10 < b(); i10++) {
            if (((x0) t(i10)).f18384b) {
                return i10;
            }
        }
        return 0;
    }

    public final void G(int i10) {
        for (int i11 = 0; i11 < b(); i11++) {
            if (i10 == i11) {
                ((x0) t(i11)).f18384b = true;
                e(i11);
            } else if (((x0) t(i11)).f18384b) {
                ((x0) t(i11)).f18384b = false;
                e(i11);
            }
        }
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        x0 x0Var = (x0) obj;
        aVar.b(R.id.v_ico, x0Var.f18384b ? R.drawable.tp_radio_yes7 : R.drawable.tp_radio_no1);
        aVar.c(R.id.v_name, x0Var.f18383a);
    }
}
