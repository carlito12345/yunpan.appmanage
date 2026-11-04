package yd;

import s3.d0;

/* loaded from: classes.dex */
public final class f extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19135b;

    /* renamed from: c, reason: collision with root package name */
    public String f19136c;

    public /* synthetic */ f(int i10) {
        this.f19135b = i10;
    }

    @Override // nh.b
    public final void s(d0 d0Var) {
        switch (this.f19135b) {
            case 0:
                d0Var.b(4);
                if (d0Var.c() != 0) {
                    this.f19136c = ((d0) d0Var.f14066f).f();
                    break;
                }
                break;
            case 1:
                d0Var.b(4);
                if (d0Var.c() != 0) {
                    this.f19136c = ((d0) d0Var.f14066f).f();
                    break;
                }
                break;
            default:
                d0Var.b(4);
                if (d0Var.c() != 0) {
                    this.f19136c = ((d0) d0Var.f14066f).f();
                    break;
                }
                break;
        }
    }

    @Override // nh.b
    public final void v(d0 d0Var) {
        switch (this.f19135b) {
            case 0:
                d0Var.b(4);
                d0Var.i(this.f19136c);
                String str = this.f19136c;
                if (str != null) {
                    ((d0) d0Var.f14066f).l(str);
                    break;
                }
                break;
            case 1:
                d0Var.b(4);
                d0Var.i(this.f19136c);
                String str2 = this.f19136c;
                if (str2 != null) {
                    ((d0) d0Var.f14066f).l(str2);
                    break;
                }
                break;
            default:
                d0Var.b(4);
                d0Var.i(this.f19136c);
                String str3 = this.f19136c;
                if (str3 != null) {
                    ((d0) d0Var.f14066f).l(str3);
                    break;
                }
                break;
        }
    }
}
