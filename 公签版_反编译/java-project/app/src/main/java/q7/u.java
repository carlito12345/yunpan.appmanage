package q7;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;
import w.g2;
import w.n0;
import w.q0;

/* loaded from: classes.dex */
public final class u implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13144a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13145b;

    public /* synthetic */ u(int i10, Object obj) {
        this.f13144a = i10;
        this.f13145b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        Object item;
        switch (this.f13144a) {
            case 0:
                w wVar = (w) this.f13145b;
                if (i10 < 0) {
                    g2 g2Var = wVar.f13149e;
                    item = !g2Var.B.isShowing() ? null : g2Var.f17070c.getSelectedItem();
                } else {
                    item = wVar.getAdapter().getItem(i10);
                }
                w.a(wVar, item);
                AdapterView.OnItemClickListener onItemClickListener = wVar.getOnItemClickListener();
                g2 g2Var2 = wVar.f13149e;
                if (onItemClickListener != null) {
                    if (view == null || i10 < 0) {
                        view = g2Var2.B.isShowing() ? g2Var2.f17070c.getSelectedView() : null;
                        i10 = !g2Var2.B.isShowing() ? -1 : g2Var2.f17070c.getSelectedItemPosition();
                        j10 = !g2Var2.B.isShowing() ? Long.MIN_VALUE : g2Var2.f17070c.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(g2Var2.f17070c, view, i10, j10);
                }
                g2Var2.dismiss();
                break;
            case 1:
                n0 n0Var = (n0) this.f13145b;
                n0Var.K.setSelection(i10);
                q0 q0Var = n0Var.K;
                if (q0Var.getOnItemClickListener() != null) {
                    q0Var.performItemClick(view, i10, n0Var.G.getItemId(i10));
                }
                n0Var.dismiss();
                break;
            default:
                ((SearchView) this.f13145b).p(i10);
                break;
        }
    }
}
