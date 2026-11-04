package androidx.recyclerview.widget;

import x9.w3;

/* loaded from: classes.dex */
public final class c implements p1 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2050a;

    public /* synthetic */ c(Object obj) {
        this.f2050a = obj;
    }

    public boolean a(int i10, int i11) {
        androidx.fragment.app.u1 u1Var = (androidx.fragment.app.u1) this.f2050a;
        Object obj = u1Var.f1407c.get(i10);
        Object obj2 = u1Var.f1408d.get(i11);
        if (obj != null && obj2 != null) {
            ((s5.c) ((f) u1Var.f1410f).f2100b.f176c).getClass();
            return ((w3) obj).f18365b.equals(((w3) obj2).f18365b);
        }
        if (obj == null && obj2 == null) {
            return true;
        }
        throw new AssertionError();
    }

    public boolean b(int i10, int i11) {
        androidx.fragment.app.u1 u1Var = (androidx.fragment.app.u1) this.f2050a;
        Object obj = u1Var.f1407c.get(i10);
        Object obj2 = u1Var.f1408d.get(i11);
        if (obj == null || obj2 == null) {
            return obj == null && obj2 == null;
        }
        ((s5.c) ((f) u1Var.f1410f).f2100b.f176c).getClass();
        return ((w3) obj).f18365b.equals(((w3) obj2).f18365b);
    }

    public void c(int i10, int i11) {
        androidx.fragment.app.u1 u1Var = (androidx.fragment.app.u1) this.f2050a;
        Object obj = u1Var.f1407c.get(i10);
        Object obj2 = u1Var.f1408d.get(i11);
        if (obj == null || obj2 == null) {
            throw new AssertionError();
        }
        Object obj3 = ((f) u1Var.f1410f).f2100b.f176c;
    }

    public void d(int i10, int i11) {
        ((m1) this.f2050a).f2188a.e(i10, i11);
    }

    public void e(int i10, int i11) {
        ((m1) this.f2050a).f2188a.f(i10, i11);
    }
}
