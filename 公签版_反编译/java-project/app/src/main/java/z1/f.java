package z1;

import f2.c0;
import r1.p0;
import r1.q0;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final String f19349a;

    /* renamed from: b, reason: collision with root package name */
    public int f19350b;

    /* renamed from: c, reason: collision with root package name */
    public long f19351c;

    /* renamed from: d, reason: collision with root package name */
    public final c0 f19352d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19353e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19354f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ g f19355g;

    public f(g gVar, String str, int i10, c0 c0Var) {
        this.f19355g = gVar;
        this.f19349a = str;
        this.f19350b = i10;
        this.f19351c = c0Var == null ? -1L : c0Var.f5239d;
        if (c0Var == null || !c0Var.b()) {
            return;
        }
        this.f19352d = c0Var;
    }

    public final boolean a(a aVar) {
        c0 c0Var = aVar.f19331d;
        if (c0Var == null) {
            return this.f19350b != aVar.f19330c;
        }
        long j10 = this.f19351c;
        if (j10 == -1) {
            return false;
        }
        if (c0Var.f5239d > j10) {
            return true;
        }
        c0 c0Var2 = this.f19352d;
        if (c0Var2 == null) {
            return false;
        }
        q0 q0Var = aVar.f19329b;
        int iB = q0Var.b(c0Var.f5236a);
        int iB2 = q0Var.b(c0Var2.f5236a);
        if (c0Var.f5239d < c0Var2.f5239d || iB < iB2) {
            return false;
        }
        if (iB > iB2) {
            return true;
        }
        boolean zB = c0Var.b();
        int i10 = c0Var2.f5237b;
        if (!zB) {
            int i11 = c0Var.f5240e;
            return i11 == -1 || i11 > i10;
        }
        int i12 = c0Var.f5237b;
        if (i12 > i10) {
            return true;
        }
        if (i12 == i10) {
            if (c0Var.f5238c > c0Var2.f5238c) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(q0 q0Var, q0 q0Var2) {
        int i10 = this.f19350b;
        if (i10 < q0Var.o()) {
            g gVar = this.f19355g;
            q0Var.n(i10, gVar.f19358a);
            p0 p0Var = gVar.f19358a;
            for (int i11 = p0Var.f13546m; i11 <= p0Var.f13547n; i11++) {
                int iB = q0Var2.b(q0Var.l(i11));
                if (iB != -1) {
                    i10 = q0Var2.f(iB, gVar.f19359b, false).f13505c;
                    break;
                }
            }
            i10 = -1;
        } else if (i10 >= q0Var2.o()) {
            i10 = -1;
        }
        this.f19350b = i10;
        if (i10 == -1) {
            return false;
        }
        c0 c0Var = this.f19352d;
        return c0Var == null || q0Var2.b(c0Var.f5236a) != -1;
    }
}
