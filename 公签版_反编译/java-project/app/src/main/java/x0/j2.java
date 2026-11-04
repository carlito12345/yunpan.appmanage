package x0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public final class j2 {

    /* renamed from: b, reason: collision with root package name */
    public static final j2 f18005b;

    /* renamed from: a, reason: collision with root package name */
    public final g2 f18006a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f18005b = f2.f17981q;
        } else {
            f18005b = g2.f17996b;
        }
    }

    public j2(WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.f18006a = new f2(this, windowInsets);
            return;
        }
        if (i10 >= 29) {
            this.f18006a = new e2(this, windowInsets);
            return;
        }
        if (i10 >= 28) {
            this.f18006a = new d2(this, windowInsets);
            return;
        }
        if (i10 >= 21) {
            this.f18006a = new c2(this, windowInsets);
        } else if (i10 >= 20) {
            this.f18006a = new b2(this, windowInsets);
        } else {
            this.f18006a = new g2(this);
        }
    }

    public static p0.c e(p0.c cVar, int i10, int i11, int i12, int i13) {
        int iMax = Math.max(0, cVar.f12540a - i10);
        int iMax2 = Math.max(0, cVar.f12541b - i11);
        int iMax3 = Math.max(0, cVar.f12542c - i12);
        int iMax4 = Math.max(0, cVar.f12543d - i13);
        return (iMax == i10 && iMax2 == i11 && iMax3 == i12 && iMax4 == i13) ? cVar : p0.c.b(iMax, iMax2, iMax3, iMax4);
    }

    public static j2 h(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        j2 j2Var = new j2(ta.p.e(windowInsets));
        if (view != null && b1.l(view)) {
            j2 j2VarJ = b1.j(view);
            g2 g2Var = j2Var.f18006a;
            g2Var.p(j2VarJ);
            g2Var.d(view.getRootView());
        }
        return j2Var;
    }

    public final int a() {
        return this.f18006a.j().f12543d;
    }

    public final int b() {
        return this.f18006a.j().f12540a;
    }

    public final int c() {
        return this.f18006a.j().f12542c;
    }

    public final int d() {
        return this.f18006a.j().f12541b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j2) {
            return qf.c.o(this.f18006a, ((j2) obj).f18006a);
        }
        return false;
    }

    public final j2 f(int i10, int i11, int i12, int i13) {
        int i14 = Build.VERSION.SDK_INT;
        a2 z1Var = i14 >= 30 ? new z1(this) : i14 >= 29 ? new y1(this) : i14 >= 20 ? new x1(this) : new a2(this);
        z1Var.g(p0.c.b(i10, i11, i12, i13));
        return z1Var.b();
    }

    public final WindowInsets g() {
        g2 g2Var = this.f18006a;
        if (g2Var instanceof b2) {
            return ((b2) g2Var).f17965c;
        }
        return null;
    }

    public final int hashCode() {
        g2 g2Var = this.f18006a;
        if (g2Var == null) {
            return 0;
        }
        return g2Var.hashCode();
    }

    public j2() {
        this.f18006a = new g2(this);
    }
}
