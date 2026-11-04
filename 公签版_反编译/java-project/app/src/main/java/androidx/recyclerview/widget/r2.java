package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class r2 extends x0.c {

    /* renamed from: d, reason: collision with root package name */
    public final s2 f2247d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakHashMap f2248e = new WeakHashMap();

    public r2(s2 s2Var) {
        this.f2247d = s2Var;
    }

    @Override // x0.c
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        x0.c cVar = (x0.c) this.f2248e.get(view);
        return cVar != null ? cVar.a(view, accessibilityEvent) : this.f17971a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // x0.c
    public final w.i b(View view) {
        x0.c cVar = (x0.c) this.f2248e.get(view);
        return cVar != null ? cVar.b(view) : super.b(view);
    }

    @Override // x0.c
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        x0.c cVar = (x0.c) this.f2248e.get(view);
        if (cVar != null) {
            cVar.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // x0.c
    public final void d(View view, y0.n nVar) {
        s2 s2Var = this.f2247d;
        boolean zHasPendingAdapterUpdates = s2Var.f2273d.hasPendingAdapterUpdates();
        View.AccessibilityDelegate accessibilityDelegate = this.f17971a;
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
        if (!zHasPendingAdapterUpdates) {
            RecyclerView recyclerView = s2Var.f2273d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, nVar);
                x0.c cVar = (x0.c) this.f2248e.get(view);
                if (cVar != null) {
                    cVar.d(view, nVar);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // x0.c
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        x0.c cVar = (x0.c) this.f2248e.get(view);
        if (cVar != null) {
            cVar.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // x0.c
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        x0.c cVar = (x0.c) this.f2248e.get(viewGroup);
        return cVar != null ? cVar.f(viewGroup, view, accessibilityEvent) : this.f17971a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // x0.c
    public final boolean g(View view, int i10, Bundle bundle) {
        s2 s2Var = this.f2247d;
        if (!s2Var.f2273d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = s2Var.f2273d;
            if (recyclerView.getLayoutManager() != null) {
                x0.c cVar = (x0.c) this.f2248e.get(view);
                if (cVar != null) {
                    if (cVar.g(view, i10, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i10, bundle)) {
                    return true;
                }
                return recyclerView.getLayoutManager().performAccessibilityActionForItem(view, i10, bundle);
            }
        }
        return super.g(view, i10, bundle);
    }

    @Override // x0.c
    public final void h(View view, int i10) {
        x0.c cVar = (x0.c) this.f2248e.get(view);
        if (cVar != null) {
            cVar.h(view, i10);
        } else {
            super.h(view, i10);
        }
    }

    @Override // x0.c
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        x0.c cVar = (x0.c) this.f2248e.get(view);
        if (cVar != null) {
            cVar.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
