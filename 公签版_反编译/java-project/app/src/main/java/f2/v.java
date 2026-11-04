package f2;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class v extends r {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f5413e = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Object f5414c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5415d;

    public v(r1.q0 q0Var, Object obj, Object obj2) {
        super(q0Var);
        this.f5414c = obj;
        this.f5415d = obj2;
    }

    @Override // f2.r, r1.q0
    public final int b(Object obj) {
        Object obj2;
        if (f5413e.equals(obj) && (obj2 = this.f5415d) != null) {
            obj = obj2;
        }
        return this.f5361b.b(obj);
    }

    @Override // f2.r, r1.q0
    public final r1.o0 f(int i10, r1.o0 o0Var, boolean z) {
        this.f5361b.f(i10, o0Var, z);
        if (Objects.equals(o0Var.f13504b, this.f5415d) && z) {
            o0Var.f13504b = f5413e;
        }
        return o0Var;
    }

    @Override // f2.r, r1.q0
    public final Object l(int i10) {
        Object objL = this.f5361b.l(i10);
        return Objects.equals(objL, this.f5415d) ? f5413e : objL;
    }

    @Override // f2.r, r1.q0
    public final r1.p0 m(int i10, r1.p0 p0Var, long j10) {
        this.f5361b.m(i10, p0Var, j10);
        if (Objects.equals(p0Var.f13535a, this.f5414c)) {
            p0Var.f13535a = r1.p0.f13533p;
        }
        return p0Var;
    }
}
