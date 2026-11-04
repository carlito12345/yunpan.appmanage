package h4;

import f2.c1;

/* loaded from: classes.dex */
public final class m0 {

    /* renamed from: a, reason: collision with root package name */
    public int f6458a;

    /* renamed from: b, reason: collision with root package name */
    public int f6459b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6460c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6461d;

    /* renamed from: e, reason: collision with root package name */
    public Object f6462e;

    /* renamed from: f, reason: collision with root package name */
    public Object f6463f;

    public m0(y1.a aVar, y1.a aVar2, int i10) {
        this.f6462e = aVar;
        this.f6458a = i10;
        this.f6463f = aVar2;
        this.f6459b = 0;
        this.f6460c = false;
        this.f6461d = false;
    }

    public static void b(y1.a aVar) {
        int i10 = aVar.f18559h;
        if (i10 == 2) {
            a9.o.t(i10 == 2);
            aVar.f18559h = 1;
            aVar.t();
        }
    }

    public static boolean h(y1.a aVar) {
        return aVar.f18559h != 0;
    }

    public static void l(y1.a aVar, long j10) {
        aVar.f18564n = true;
        if (aVar instanceof g2.f) {
            g2.f fVar = (g2.f) aVar;
            a9.o.t(fVar.f18564n);
            fVar.N = j10;
        }
    }

    public void a(y1.a aVar, y1.h hVar) {
        a9.o.t(((y1.a) this.f6462e) == aVar || ((y1.a) this.f6463f) == aVar);
        if (h(aVar)) {
            if (aVar == hVar.f18699c) {
                hVar.f18700d = null;
                hVar.f18699c = null;
                hVar.f18701e = true;
            }
            b(aVar);
            a9.o.t(aVar.f18559h == 1);
            aVar.f18554c.n();
            aVar.f18559h = 0;
            aVar.f18560i = null;
            aVar.f18561j = null;
            aVar.f18564n = false;
            aVar.n();
            aVar.r = null;
        }
    }

    public int c() {
        boolean zH = h((y1.a) this.f6462e);
        y1.a aVar = (y1.a) this.f6463f;
        return (zH ? 1 : 0) + ((aVar == null || !h(aVar)) ? 0 : 1);
    }

    public y1.a d(y1.l0 l0Var) {
        c1 c1Var;
        if (l0Var != null && (c1Var = l0Var.f18722c[this.f6458a]) != null) {
            y1.a aVar = (y1.a) this.f6462e;
            if (aVar.f18560i == c1Var) {
                return aVar;
            }
            y1.a aVar2 = (y1.a) this.f6463f;
            if (aVar2 != null && aVar2.f18560i == c1Var) {
                return aVar2;
            }
        }
        return null;
    }

    public boolean e(y1.l0 l0Var, y1.a aVar) {
        if (aVar == null) {
            return true;
        }
        c1[] c1VarArr = l0Var.f18722c;
        int i10 = this.f6458a;
        c1 c1Var = c1VarArr[i10];
        c1 c1Var2 = aVar.f18560i;
        if (c1Var2 == null) {
            return true;
        }
        if (c1Var2 == c1Var) {
            if (c1Var == null || aVar.k()) {
                return true;
            }
            y1.l0 l0Var2 = l0Var.f18731m;
            if (l0Var.f18726g.f18765h && l0Var2 != null && l0Var2.f18724e && ((aVar instanceof g2.f) || (aVar instanceof e2.b) || aVar.f18563m >= l0Var2.e())) {
                return true;
            }
        }
        y1.l0 l0Var3 = l0Var.f18731m;
        return l0Var3 != null && l0Var3.f18722c[i10] == aVar.f18560i;
    }

    public boolean f() {
        int i10 = this.f6459b;
        return i10 == 2 || i10 == 4 || i10 == 3;
    }

    public boolean g() {
        int i10 = this.f6459b;
        if (i10 == 0 || i10 == 2 || i10 == 4) {
            return h((y1.a) this.f6462e);
        }
        y1.a aVar = (y1.a) this.f6463f;
        aVar.getClass();
        return aVar.f18559h != 0;
    }

    public void i(boolean z) {
        if (z) {
            if (this.f6460c) {
                y1.a aVar = (y1.a) this.f6462e;
                a9.o.t(aVar.f18559h == 0);
                aVar.f18554c.n();
                aVar.r();
                this.f6460c = false;
                return;
            }
            return;
        }
        if (this.f6461d) {
            y1.a aVar2 = (y1.a) this.f6463f;
            aVar2.getClass();
            a9.o.t(aVar2.f18559h == 0);
            aVar2.f18554c.n();
            aVar2.r();
            this.f6461d = false;
        }
    }

    public int j(y1.a aVar, y1.l0 l0Var, h2.r rVar, y1.h hVar) {
        y1.a aVar2;
        int i10;
        if (aVar == null || aVar.f18559h == 0 || ((aVar == (aVar2 = (y1.a) this.f6462e) && ((i10 = this.f6459b) == 2 || i10 == 4)) || (aVar == ((y1.a) this.f6463f) && this.f6459b == 3))) {
            return 1;
        }
        c1 c1Var = aVar.f18560i;
        c1[] c1VarArr = l0Var.f18722c;
        int i11 = this.f6458a;
        boolean z = c1Var != c1VarArr[i11];
        boolean zB = rVar.b(i11);
        if (zB && !z) {
            return 1;
        }
        if (aVar.f18564n) {
            if (!aVar.l()) {
                return 0;
            }
            a(aVar, hVar);
            if (!zB || f()) {
                i(aVar == aVar2);
            }
            return 1;
        }
        h2.p pVar = rVar.f6408c[i11];
        int length = pVar != null ? pVar.length() : 0;
        r1.p[] pVarArr = new r1.p[length];
        for (int i12 = 0; i12 < length; i12++) {
            pVar.getClass();
            pVarArr[i12] = pVar.c(i12);
        }
        c1 c1Var2 = l0Var.f18722c[i11];
        c1Var2.getClass();
        aVar.y(pVarArr, c1Var2, l0Var.e(), l0Var.f18734p, l0Var.f18726g.f18758a);
        return 3;
    }

    public void k() {
        if (!h((y1.a) this.f6462e)) {
            i(true);
        }
        y1.a aVar = (y1.a) this.f6463f;
        if (aVar == null || aVar.f18559h != 0) {
            return;
        }
        i(false);
    }

    public void m() {
        int i10;
        y1.a aVar = (y1.a) this.f6462e;
        int i11 = aVar.f18559h;
        if (i11 == 1 && this.f6459b != 4) {
            a9.o.t(i11 == 1);
            aVar.f18559h = 2;
            aVar.s();
            return;
        }
        y1.a aVar2 = (y1.a) this.f6463f;
        if (aVar2 == null || (i10 = aVar2.f18559h) != 1 || this.f6459b == 3) {
            return;
        }
        a9.o.t(i10 == 1);
        aVar2.f18559h = 2;
        aVar2.s();
    }

    public m0() {
    }
}
