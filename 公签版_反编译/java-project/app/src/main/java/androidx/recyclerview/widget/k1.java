package androidx.recyclerview.widget;

import android.view.View;

/* loaded from: classes.dex */
public final class k1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2168a;

    public k1(RecyclerView recyclerView) {
        this.f2168a = recyclerView;
    }

    public final void a(int i10) {
        RecyclerView recyclerView = this.f2168a;
        View childAt = recyclerView.getChildAt(i10);
        if (childAt != null) {
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i10);
    }
}
