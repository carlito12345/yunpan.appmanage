package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* loaded from: classes.dex */
public final class s2 extends x0.c {

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f2273d;

    /* renamed from: e, reason: collision with root package name */
    public final r2 f2274e;

    public s2(RecyclerView recyclerView) {
        this.f2273d = recyclerView;
        r2 r2Var = this.f2274e;
        if (r2Var != null) {
            this.f2274e = r2Var;
        } else {
            this.f2274e = new r2(this);
        }
    }

    @Override // x0.c
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f2273d.hasPendingAdapterUpdates()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // x0.c
    public final void d(View view, y0.n nVar) {
        this.f17971a.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
        RecyclerView recyclerView = this.f2273d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(nVar);
    }

    @Override // x0.c
    public final boolean g(View view, int i10, Bundle bundle) {
        if (super.g(view, i10, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f2273d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().performAccessibilityAction(i10, bundle);
    }
}
