package yd;

import s3.d0;

/* loaded from: classes.dex */
public final class g extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public String f19137b;

    /* renamed from: c, reason: collision with root package name */
    public int f19138c;

    /* renamed from: d, reason: collision with root package name */
    public String f19139d;

    @Override // nh.b
    public final void s(d0 d0Var) {
        d0Var.b(4);
        int iC = d0Var.c();
        this.f19138c = d0Var.c();
        int iC2 = d0Var.c();
        if (iC != 0) {
            d0Var = (d0) d0Var.f14066f;
            this.f19137b = d0Var.f();
        }
        if (iC2 != 0) {
            this.f19139d = ((d0) d0Var.f14066f).f();
        }
    }

    @Override // nh.b
    public final void v(d0 d0Var) {
        d0Var.b(4);
        d0Var.i(this.f19137b);
        d0Var.h(this.f19138c);
        d0Var.i(this.f19139d);
        String str = this.f19137b;
        if (str != null) {
            d0Var = (d0) d0Var.f14066f;
            d0Var.l(str);
        }
        String str2 = this.f19139d;
        if (str2 != null) {
            ((d0) d0Var.f14066f).l(str2);
        }
    }
}
