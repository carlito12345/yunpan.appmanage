package f2;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class g extends l1 {
    public final long l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f5267m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f5268n;

    /* renamed from: o, reason: collision with root package name */
    public final r1.p0 f5269o;

    /* renamed from: p, reason: collision with root package name */
    public e f5270p;

    /* renamed from: q, reason: collision with root package name */
    public f f5271q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public long f5272s;

    public g(d dVar) {
        super(dVar.f5241a);
        this.l = dVar.f5242b;
        this.f5267m = dVar.f5243c;
        this.f5268n = new ArrayList();
        this.f5269o = new r1.p0();
    }

    public final void B(r1.q0 q0Var) {
        long j10;
        r1.p0 p0Var = this.f5269o;
        q0Var.n(0, p0Var);
        long j11 = p0Var.f13548o;
        e eVar = this.f5270p;
        ArrayList arrayList = this.f5268n;
        long j12 = this.l;
        if (eVar == null || arrayList.isEmpty()) {
            this.r = j11;
            this.f5272s = j12 != Long.MIN_VALUE ? j11 + j12 : Long.MIN_VALUE;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                c cVar = (c) arrayList.get(i10);
                long j13 = this.r;
                long j14 = this.f5272s;
                cVar.f5233f = j13;
                cVar.f5234g = j14;
            }
            j10 = 0;
        } else {
            long j15 = this.r - j11;
            j12 = j12 != Long.MIN_VALUE ? this.f5272s - j11 : Long.MIN_VALUE;
            j10 = j15;
        }
        try {
            e eVar2 = new e(q0Var, j10, j12);
            this.f5270p = eVar2;
            l(eVar2);
        } catch (f e7) {
            this.f5271q = e7;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((c) arrayList.get(i11)).f5235h = this.f5271q;
            }
        }
    }

    @Override // f2.a
    public final a0 a(c0 c0Var, s4.a aVar, long j10) {
        c cVar = new c(this.f5320k.a(c0Var, aVar, j10), this.f5267m, this.r, this.f5272s);
        this.f5268n.add(cVar);
        return cVar;
    }

    @Override // f2.k, f2.a
    public final void i() throws f {
        f fVar = this.f5271q;
        if (fVar != null) {
            throw fVar;
        }
        super.i();
    }

    @Override // f2.a
    public final void m(a0 a0Var) {
        ArrayList arrayList = this.f5268n;
        a9.o.t(arrayList.remove(a0Var));
        this.f5320k.m(((c) a0Var).f5228a);
        if (arrayList.isEmpty()) {
            e eVar = this.f5270p;
            eVar.getClass();
            B(eVar.f5361b);
        }
    }

    @Override // f2.k, f2.a
    public final void o() {
        super.o();
        this.f5271q = null;
        this.f5270p = null;
    }

    @Override // f2.l1
    public final void y(r1.q0 q0Var) {
        if (this.f5271q != null) {
            return;
        }
        B(q0Var);
    }
}
