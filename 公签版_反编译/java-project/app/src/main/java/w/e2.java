package w;

import android.os.Handler;
import android.widget.AbsListView;

/* loaded from: classes.dex */
public final class e2 implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g2 f17052a;

    public e2(g2 g2Var) {
        this.f17052a = g2Var;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i10) {
        if (i10 == 1) {
            g2 g2Var = this.f17052a;
            if (g2Var.B.getInputMethodMode() == 2 || g2Var.B.getContentView() == null) {
                return;
            }
            Handler handler = g2Var.f17087x;
            d2 d2Var = g2Var.f17083s;
            handler.removeCallbacks(d2Var);
            d2Var.run();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i10, int i11, int i12) {
    }
}
