package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class z1 {

    /* renamed from: a, reason: collision with root package name */
    public c2 f1436a;

    /* renamed from: b, reason: collision with root package name */
    public b2 f1437b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f1438c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f1439d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f1440e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1441f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1442g;

    /* renamed from: h, reason: collision with root package name */
    public final k1 f1443h;

    public z1(c2 c2Var, b2 b2Var, k1 k1Var, t0.g gVar) {
        ue.d.e(k1Var, "fragmentStateManager");
        Fragment fragment = k1Var.f1320c;
        ue.d.d(fragment, "fragmentStateManager.fragment");
        ue.d.e(fragment, "fragment");
        this.f1436a = c2Var;
        this.f1437b = b2Var;
        this.f1438c = fragment;
        this.f1439d = new ArrayList();
        this.f1440e = new LinkedHashSet();
        gVar.a(new t0.f() { // from class: androidx.fragment.app.a2
            @Override // t0.f
            public final void c() {
                z1 z1Var = this.f1196a;
                ue.d.e(z1Var, "this$0");
                z1Var.a();
            }
        });
        this.f1443h = k1Var;
    }

    public final void a() {
        if (this.f1441f) {
            return;
        }
        this.f1441f = true;
        LinkedHashSet linkedHashSet = this.f1440e;
        if (linkedHashSet.isEmpty()) {
            b();
            return;
        }
        for (t0.g gVar : new LinkedHashSet(linkedHashSet)) {
            synchronized (gVar) {
                try {
                    if (!gVar.f14631a) {
                        gVar.f14631a = true;
                        gVar.f14633c = true;
                        t0.f fVar = gVar.f14632b;
                        if (fVar != null) {
                            try {
                                fVar.c();
                            } catch (Throwable th2) {
                                synchronized (gVar) {
                                    gVar.f14633c = false;
                                    gVar.notifyAll();
                                    throw th2;
                                }
                            }
                        }
                        synchronized (gVar) {
                            gVar.f14633c = false;
                            gVar.notifyAll();
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void b() {
        if (!this.f1442g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                toString();
            }
            this.f1442g = true;
            Iterator it = this.f1439d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.f1443h.i();
    }

    public final void c(c2 c2Var, b2 b2Var) {
        int iOrdinal = b2Var.ordinal();
        c2 c2Var2 = c2.REMOVED;
        Fragment fragment = this.f1438c;
        if (iOrdinal == 0) {
            if (this.f1436a != c2Var2) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    if (fragment != null) {
                        fragment.toString();
                    }
                    this.f1436a.toString();
                    c2Var.toString();
                }
                this.f1436a = c2Var;
                return;
            }
            return;
        }
        if (iOrdinal == 1) {
            if (this.f1436a == c2Var2) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    if (fragment != null) {
                        fragment.toString();
                    }
                    this.f1437b.toString();
                }
                this.f1436a = c2.VISIBLE;
                this.f1437b = b2.ADDING;
                return;
            }
            return;
        }
        if (iOrdinal != 2) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            if (fragment != null) {
                fragment.toString();
            }
            this.f1436a.toString();
            this.f1437b.toString();
        }
        this.f1436a = c2Var2;
        this.f1437b = b2.REMOVING;
    }

    public final void d() {
        b2 b2Var = this.f1437b;
        b2 b2Var2 = b2.ADDING;
        k1 k1Var = this.f1443h;
        if (b2Var != b2Var2) {
            if (b2Var == b2.REMOVING) {
                Fragment fragment = k1Var.f1320c;
                ue.d.d(fragment, "fragmentStateManager.fragment");
                View viewRequireView = fragment.requireView();
                ue.d.d(viewRequireView, "fragment.requireView()");
                if (Log.isLoggable("FragmentManager", 2)) {
                    View viewFindFocus = viewRequireView.findFocus();
                    if (viewFindFocus != null) {
                        viewFindFocus.toString();
                    }
                    viewRequireView.toString();
                    fragment.toString();
                }
                viewRequireView.clearFocus();
                return;
            }
            return;
        }
        Fragment fragment2 = k1Var.f1320c;
        ue.d.d(fragment2, "fragmentStateManager.fragment");
        View viewFindFocus2 = fragment2.mView.findFocus();
        if (viewFindFocus2 != null) {
            fragment2.setFocusedView(viewFindFocus2);
            if (Log.isLoggable("FragmentManager", 2)) {
                viewFindFocus2.toString();
                fragment2.toString();
            }
        }
        View viewRequireView2 = this.f1438c.requireView();
        ue.d.d(viewRequireView2, "this.fragment.requireView()");
        if (viewRequireView2.getParent() == null) {
            k1Var.a();
            viewRequireView2.setAlpha(0.0f);
        }
        if (viewRequireView2.getAlpha() == 0.0f && viewRequireView2.getVisibility() == 0) {
            viewRequireView2.setVisibility(4);
        }
        viewRequireView2.setAlpha(fragment2.getPostOnViewCreatedAlpha());
    }

    public final String toString() {
        StringBuilder sbD = da.b.d("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
        sbD.append(this.f1436a);
        sbD.append(" lifecycleImpact = ");
        sbD.append(this.f1437b);
        sbD.append(" fragment = ");
        sbD.append(this.f1438c);
        sbD.append('}');
        return sbD.toString();
    }
}
