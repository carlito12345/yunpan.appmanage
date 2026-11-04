package f2;

import android.util.Pair;

/* loaded from: classes.dex */
public final class x extends l1 {
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final r1.p0 f5422m;

    /* renamed from: n, reason: collision with root package name */
    public final r1.o0 f5423n;

    /* renamed from: o, reason: collision with root package name */
    public v f5424o;

    /* renamed from: p, reason: collision with root package name */
    public u f5425p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5426q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5427s;

    public x(a aVar, boolean z) {
        super(aVar);
        this.l = z && aVar.h();
        this.f5422m = new r1.p0();
        this.f5423n = new r1.o0();
        r1.q0 q0VarF = aVar.f();
        if (q0VarF == null) {
            this.f5424o = new v(new w(aVar.g()), r1.p0.f13533p, v.f5413e);
        } else {
            this.f5424o = new v(q0VarF, null, null);
            this.f5427s = true;
        }
    }

    @Override // f2.l1
    public final void A() {
        if (this.l) {
            return;
        }
        this.f5426q = true;
        z();
    }

    @Override // f2.a
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public final u a(c0 c0Var, s4.a aVar, long j10) {
        u uVar = new u(c0Var, aVar, j10);
        a9.o.t(uVar.f5388d == null);
        uVar.f5388d = this.f5320k;
        if (this.r) {
            Object obj = this.f5424o.f5415d;
            Object obj2 = c0Var.f5236a;
            if (obj != null && obj2.equals(v.f5413e)) {
                obj2 = this.f5424o.f5415d;
            }
            uVar.e(c0Var.a(obj2));
        } else {
            this.f5425p = uVar;
            if (!this.f5426q) {
                this.f5426q = true;
                z();
            }
        }
        return uVar;
    }

    public final boolean C(long j10) {
        u uVar = this.f5425p;
        int iB = this.f5424o.b(uVar.f5385a.f5236a);
        if (iB == -1) {
            return false;
        }
        v vVar = this.f5424o;
        r1.o0 o0Var = this.f5423n;
        vVar.f(iB, o0Var, false);
        long j11 = o0Var.f13506d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        uVar.f5391g = j10;
        return true;
    }

    @Override // f2.a
    public final void m(a0 a0Var) {
        u uVar = (u) a0Var;
        if (uVar.f5389e != null) {
            a aVar = uVar.f5388d;
            aVar.getClass();
            aVar.m(uVar.f5389e);
        }
        if (a0Var == this.f5425p) {
            this.f5425p = null;
        }
    }

    @Override // f2.k, f2.a
    public final void o() {
        this.r = false;
        this.f5426q = false;
        super.o();
    }

    @Override // f2.l1, f2.a
    public final void r(r1.y yVar) {
        if (this.f5427s) {
            v vVar = this.f5424o;
            r1.q0 q0Var = vVar.f5361b;
            int i10 = i1.f5291d;
            this.f5424o = new v(q0Var instanceof i1 ? new i1(((i1) q0Var).f5361b, yVar) : new i1(q0Var, yVar), vVar.f5414c, vVar.f5415d);
        } else {
            this.f5424o = new v(new w(yVar), r1.p0.f13533p, v.f5413e);
        }
        this.f5320k.r(yVar);
    }

    @Override // f2.l1
    public final c0 x(c0 c0Var) {
        Object obj = c0Var.f5236a;
        Object obj2 = this.f5424o.f5415d;
        if (obj2 != null && obj2.equals(obj)) {
            obj = v.f5413e;
        }
        return c0Var.a(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    @Override // f2.l1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y(r1.q0 q0Var) {
        v vVar;
        c0 c0VarA;
        v vVar2;
        if (this.r) {
            v vVar3 = this.f5424o;
            this.f5424o = new v(q0Var, vVar3.f5414c, vVar3.f5415d);
            u uVar = this.f5425p;
            if (uVar != null) {
                C(uVar.f5391g);
            }
        } else {
            if (!q0Var.p()) {
                r1.p0 p0Var = this.f5422m;
                q0Var.n(0, p0Var);
                long j10 = p0Var.f13545k;
                Object obj = p0Var.f13535a;
                u uVar2 = this.f5425p;
                if (uVar2 != null) {
                    v vVar4 = this.f5424o;
                    Object obj2 = uVar2.f5385a.f5236a;
                    r1.o0 o0Var = this.f5423n;
                    vVar4.g(obj2, o0Var);
                    long j11 = o0Var.f13507e + uVar2.f5386b;
                    this.f5424o.m(0, p0Var, 0L);
                    long j12 = j11 != p0Var.f13545k ? j11 : j10;
                    Pair pairI = q0Var.i(this.f5422m, this.f5423n, 0, j12);
                    Object obj3 = pairI.first;
                    long jLongValue = ((Long) pairI.second).longValue();
                    if (this.f5427s) {
                        v vVar5 = this.f5424o;
                        vVar = new v(q0Var, vVar5.f5414c, vVar5.f5415d);
                    } else {
                        vVar = new v(q0Var, obj, obj3);
                    }
                    this.f5424o = vVar;
                    u uVar3 = this.f5425p;
                    if (uVar3 != null && C(jLongValue)) {
                        c0 c0Var = uVar3.f5385a;
                        Object obj4 = this.f5424o.f5415d;
                        Object obj5 = c0Var.f5236a;
                        if (obj4 != null && obj5.equals(v.f5413e)) {
                            obj5 = this.f5424o.f5415d;
                        }
                        c0VarA = c0Var.a(obj5);
                    }
                }
                this.f5427s = true;
                this.r = true;
                l(this.f5424o);
                if (c0VarA == null) {
                    u uVar4 = this.f5425p;
                    uVar4.getClass();
                    uVar4.e(c0VarA);
                    return;
                }
                return;
            }
            if (this.f5427s) {
                v vVar6 = this.f5424o;
                vVar2 = new v(q0Var, vVar6.f5414c, vVar6.f5415d);
            } else {
                vVar2 = new v(q0Var, r1.p0.f13533p, v.f5413e);
            }
            this.f5424o = vVar2;
        }
        c0VarA = null;
        this.f5427s = true;
        this.r = true;
        l(this.f5424o);
        if (c0VarA == null) {
        }
    }
}
