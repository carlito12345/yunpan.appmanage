package f2;

import ha.j2;
import ha.l2;
import ua.i8;

/* loaded from: classes.dex */
public final class w0 implements b0 {

    /* renamed from: a, reason: collision with root package name */
    public final i8 f5417a;

    /* renamed from: b, reason: collision with root package name */
    public final a1.d f5418b;

    /* renamed from: c, reason: collision with root package name */
    public final kh.h f5419c;

    /* renamed from: d, reason: collision with root package name */
    public final j2 f5420d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5421e;

    public w0(i8 i8Var, l2.r rVar) {
        a1.d dVar = new a1.d(4, rVar);
        kh.h hVar = new kh.h(1);
        j2 j2Var = new j2(9);
        this.f5417a = i8Var;
        this.f5418b = dVar;
        this.f5419c = hVar;
        this.f5420d = j2Var;
        this.f5421e = 1048576;
    }

    @Override // f2.b0
    public final b0 a(l2 l2Var) {
        return this;
    }

    @Override // f2.b0
    public final a b(r1.y yVar) {
        yVar.f13627b.getClass();
        i8 i8Var = this.f5417a;
        a1.d dVar = this.f5418b;
        this.f5419c.getClass();
        yVar.f13627b.getClass();
        yVar.f13627b.getClass();
        return new x0(yVar, i8Var, dVar, b2.g.f2532u, this.f5420d, this.f5421e, null);
    }

    @Override // f2.b0
    public final b0 c(boolean z) {
        return this;
    }

    @Override // f2.b0
    public final b0 d(int i10) {
        return this;
    }
}
