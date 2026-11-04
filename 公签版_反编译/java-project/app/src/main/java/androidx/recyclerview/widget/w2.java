package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class w2 extends b2 {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerView f2341a;

    /* renamed from: b, reason: collision with root package name */
    public final v2 f2342b = new v2(this);

    public final void a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f2341a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        v2 v2Var = this.f2342b;
        if (recyclerView2 != null) {
            recyclerView2.removeOnScrollListener(v2Var);
            this.f2341a.setOnFlingListener(null);
        }
        this.f2341a = recyclerView;
        if (recyclerView != null) {
            if (recyclerView.getOnFlingListener() != null) {
                throw new IllegalStateException("An instance of OnFlingListener already set.");
            }
            this.f2341a.addOnScrollListener(v2Var);
            this.f2341a.setOnFlingListener(this);
            new Scroller(this.f2341a.getContext(), new DecelerateInterpolator());
            d();
        }
    }

    public abstract int[] b(RecyclerView.LayoutManager layoutManager, View view);

    public abstract View c(RecyclerView.LayoutManager layoutManager);

    public final void d() {
        RecyclerView.LayoutManager layoutManager;
        View viewC;
        RecyclerView recyclerView = this.f2341a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewC = c(layoutManager)) == null) {
            return;
        }
        int[] iArrB = b(layoutManager, viewC);
        int i10 = iArrB[0];
        if (i10 == 0 && iArrB[1] == 0) {
            return;
        }
        this.f2341a.smoothScrollBy(i10, iArrB[1]);
    }
}
