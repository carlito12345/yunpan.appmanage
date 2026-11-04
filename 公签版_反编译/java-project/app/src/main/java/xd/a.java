package xd;

import s3.d0;

/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f18440i = {"0", "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED", "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED", "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"};

    /* renamed from: h, reason: collision with root package name */
    public final b f18441h;

    public a(b bVar, d2.f fVar) {
        this.f18441h = bVar;
        fVar.getClass();
        this.f18450b = 11;
        this.f18451c = 3;
    }

    @Override // xd.e
    public final void t0(d0 d0Var) {
        d0Var.d();
        d0Var.d();
        d0Var.c();
        d0Var.a(d0Var.d());
        d0Var.b(4);
        d0Var.e();
        d0Var.b(4);
        this.f18455g = d0Var.d();
        d0Var.d();
        d0Var.a(20);
    }

    @Override // xd.e
    public final void v0(d0 d0Var) {
        d0Var.j(4280);
        d0Var.j(4280);
        d0Var.h(0);
        d0Var.k(1);
        d0Var.k(0);
        d0Var.j(0);
        d0Var.j(0);
        d0Var.k(1);
        d0Var.k(0);
        b bVar = this.f18441h;
        bVar.f18447e.v(d0Var);
        d0Var.j(bVar.f18448f);
        d0Var.j(bVar.f18449g);
        c.J0.v(d0Var);
        d0Var.h(2);
    }

    @Override // xd.e
    public final int w0() {
        return 0;
    }

    @Override // xd.e
    public final ch.a x0() {
        if (this.f18455g == 0) {
            return null;
        }
        int i10 = this.f18455g;
        return new ch.a(i10 < 4 ? f18440i[i10] : "0x".concat(de.c.c(i10, 4)));
    }
}
