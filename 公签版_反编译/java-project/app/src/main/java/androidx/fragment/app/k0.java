package androidx.fragment.app;

import android.animation.Animator;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final Cloneable f1316a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1317b;

    public k0(d1 d1Var) {
        this.f1316a = new CopyOnWriteArrayList();
        this.f1317b = d1Var;
    }

    public void a(Fragment fragment, Bundle bundle, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.a(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentActivityCreated(d1Var, fragment, bundle);
            }
        }
    }

    public void b(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        j0 j0Var = d1Var.f1246t.f1360b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.b(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentAttached(d1Var, fragment, j0Var);
            }
        }
    }

    public void c(Fragment fragment, Bundle bundle, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.c(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentCreated(d1Var, fragment, bundle);
            }
        }
    }

    public void d(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.d(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentDestroyed(d1Var, fragment);
            }
        }
    }

    public void e(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.e(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentDetached(d1Var, fragment);
            }
        }
    }

    public void f(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.f(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentPaused(d1Var, fragment);
            }
        }
    }

    public void g(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        j0 j0Var = d1Var.f1246t.f1360b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.g(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentPreAttached(d1Var, fragment, j0Var);
            }
        }
    }

    public void h(Fragment fragment, Bundle bundle, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.h(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentPreCreated(d1Var, fragment, bundle);
            }
        }
    }

    public void i(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.i(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentResumed(d1Var, fragment);
            }
        }
    }

    public void j(Fragment fragment, Bundle bundle, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.j(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentSaveInstanceState(d1Var, fragment, bundle);
            }
        }
    }

    public void k(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.k(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentStarted(d1Var, fragment);
            }
        }
    }

    public void l(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.l(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentStopped(d1Var, fragment);
            }
        }
    }

    public void m(Fragment fragment, View view, Bundle bundle, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.m(fragment, view, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentViewCreated(d1Var, fragment, view, bundle);
            }
        }
    }

    public void n(Fragment fragment, boolean z) {
        d1 d1Var = (d1) this.f1317b;
        Fragment fragment2 = d1Var.f1248v;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().l.n(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f1316a).iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (!z || r0Var.f1375b) {
                r0Var.f1374a.onFragmentViewDestroyed(d1Var, fragment);
            }
        }
    }

    public k0(Animation animation) {
        this.f1316a = animation;
        this.f1317b = null;
    }

    public k0(Animator animator) {
        this.f1316a = null;
        this.f1317b = animator;
    }
}
