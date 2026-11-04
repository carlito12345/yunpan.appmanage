package xd;

import s3.d0;

/* loaded from: classes.dex */
public abstract class e extends nh.b implements c {

    /* renamed from: b, reason: collision with root package name */
    public int f18450b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f18451c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f18452d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f18453e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f18454f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f18455g = 0;

    @Override // nh.b
    public final void s(d0 d0Var) throws ch.a {
        s0(d0Var);
        int i10 = this.f18450b;
        if (i10 != 12 && i10 != 2 && i10 != 3 && i10 != 13) {
            throw new ch.a("Unexpected ptype: " + this.f18450b);
        }
        if (i10 == 2 || i10 == 3) {
            this.f18454f = d0Var.c();
            d0Var.d();
            d0Var.d();
        }
        int i11 = this.f18450b;
        if (i11 == 3 || i11 == 13) {
            this.f18455g = d0Var.c();
        } else {
            t0(d0Var);
        }
    }

    public final void s0(d0 d0Var) throws ch.a {
        if (d0Var.e() != 5 || d0Var.e() != 0) {
            throw new ch.a("DCERPC version not supported");
        }
        this.f18450b = d0Var.e();
        this.f18451c = d0Var.e();
        if (d0Var.c() != 16) {
            throw new ch.a("Data representation not supported");
        }
        this.f18452d = d0Var.d();
        if (d0Var.d() != 0) {
            throw new ch.a("DCERPC authentication not supported");
        }
        this.f18453e = d0Var.c();
    }

    public abstract void t0(d0 d0Var);

    public final void u0(d0 d0Var) {
        d0Var.k(5);
        d0Var.k(0);
        d0Var.k(this.f18450b);
        d0Var.k(this.f18451c);
        d0Var.h(16);
        d0Var.j(this.f18452d);
        d0Var.j(0);
        d0Var.h(this.f18453e);
    }

    @Override // nh.b
    public final void v(d0 d0Var) {
        int i10 = d0Var.f14063c;
        d0Var.a(16);
        int i11 = 0;
        if (this.f18450b == 0) {
            int i12 = d0Var.f14063c;
            d0Var.h(0);
            d0Var.j(0);
            d0Var.j(w0());
            i11 = i12;
        }
        v0(d0Var);
        int i13 = d0Var.f14063c - i10;
        this.f18452d = i13;
        if (this.f18450b == 0) {
            d0Var.f14063c = i11;
            int i14 = i13 - i11;
            this.f18454f = i14;
            d0Var.h(i14);
        }
        d0Var.f14063c = i10;
        u0(d0Var);
        d0Var.f14063c = i10 + this.f18452d;
    }

    public abstract void v0(d0 d0Var);

    public abstract int w0();

    public ch.a x0() {
        if (this.f18455g != 0) {
            return new ch.a(this.f18455g);
        }
        return null;
    }
}
