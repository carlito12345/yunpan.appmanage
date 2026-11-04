package x9;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class g3 extends c6.g {
    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_menu, viewGroup);
    }

    public final int F() {
        for (int i10 = 0; i10 < b(); i10++) {
            if (((h3) t(i10)).f18237b) {
                return i10;
            }
        }
        return -1;
    }

    public final void G(int i10) {
        for (int i11 = 0; i11 < b(); i11++) {
            if (i11 == i10) {
                ((h3) t(i11)).f18237b = true;
                e(i11);
            } else if (((h3) t(i11)).f18237b) {
                ((h3) t(i11)).f18237b = false;
                e(i11);
            }
        }
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        h3 h3Var = (h3) obj;
        aVar.c(R.id.v_name, h3Var.f18236a);
        if (h3Var.f18237b) {
            aVar.a(R.id.v_xhx).setBackgroundResource(R.color.color_17);
        } else {
            aVar.a(R.id.v_xhx).setBackgroundColor(0);
        }
    }
}
