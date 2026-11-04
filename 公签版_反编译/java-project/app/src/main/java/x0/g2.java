package x0;

import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class g2 {

    /* renamed from: b, reason: collision with root package name */
    public static final j2 f17996b;

    /* renamed from: a, reason: collision with root package name */
    public final j2 f17997a;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f17996b = (i10 >= 30 ? new z1() : i10 >= 29 ? new y1() : i10 >= 20 ? new x1() : new a2()).b().f18006a.a().f18006a.b().f18006a.c();
    }

    public g2(j2 j2Var) {
        this.f17997a = j2Var;
    }

    public j2 a() {
        return this.f17997a;
    }

    public j2 b() {
        return this.f17997a;
    }

    public j2 c() {
        return this.f17997a;
    }

    public k e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g2)) {
            return false;
        }
        g2 g2Var = (g2) obj;
        return n() == g2Var.n() && m() == g2Var.m() && qf.c.o(j(), g2Var.j()) && qf.c.o(h(), g2Var.h()) && qf.c.o(e(), g2Var.e());
    }

    public p0.c f(int i10) {
        return p0.c.f12539e;
    }

    public p0.c g() {
        return j();
    }

    public p0.c h() {
        return p0.c.f12539e;
    }

    public int hashCode() {
        return qf.c.E(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), e());
    }

    public p0.c i() {
        return j();
    }

    public p0.c j() {
        return p0.c.f12539e;
    }

    public p0.c k() {
        return j();
    }

    public j2 l(int i10, int i11, int i12, int i13) {
        return f17996b;
    }

    public boolean m() {
        return false;
    }

    public boolean n() {
        return false;
    }

    public void d(View view) {
    }

    public void o(p0.c[] cVarArr) {
    }

    public void p(j2 j2Var) {
    }

    public void q(p0.c cVar) {
    }
}
