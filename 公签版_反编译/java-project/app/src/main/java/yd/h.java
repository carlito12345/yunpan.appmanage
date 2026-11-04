package yd;

import s3.d0;

/* loaded from: classes.dex */
public final class h extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public int f19140b;

    /* renamed from: c, reason: collision with root package name */
    public g[] f19141c;

    @Override // nh.b
    public final void s(d0 d0Var) throws ch.a {
        d0Var.b(4);
        this.f19140b = d0Var.c();
        if (d0Var.c() != 0) {
            d0 d0Var2 = (d0) d0Var.f14066f;
            int iC = d0Var2.c();
            int i10 = d0Var2.f14063c;
            d0Var2.a(iC * 12);
            if (this.f19141c == null) {
                if (iC < 0 || iC > 65535) {
                    throw new ch.a("invalid array conformance");
                }
                this.f19141c = new g[iC];
            }
            d0 d0VarG = d0Var2.g(i10);
            for (int i11 = 0; i11 < iC; i11++) {
                g[] gVarArr = this.f19141c;
                if (gVarArr[i11] == null) {
                    gVarArr[i11] = new g();
                }
                gVarArr[i11].s(d0VarG);
            }
        }
    }

    @Override // nh.b
    public final void v(d0 d0Var) {
        d0Var.b(4);
        d0Var.h(this.f19140b);
        d0Var.i(this.f19141c);
        if (this.f19141c != null) {
            d0 d0Var2 = (d0) d0Var.f14066f;
            int i10 = this.f19140b;
            d0Var2.h(i10);
            int i11 = d0Var2.f14063c;
            d0Var2.a(i10 * 12);
            d0 d0VarG = d0Var2.g(i11);
            for (int i12 = 0; i12 < i10; i12++) {
                this.f19141c[i12].v(d0VarG);
            }
        }
    }
}
