package yd;

import s3.d0;

/* loaded from: classes.dex */
public final class d extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19130b;

    /* renamed from: c, reason: collision with root package name */
    public int f19131c;

    /* renamed from: d, reason: collision with root package name */
    public Object f19132d;

    public /* synthetic */ d(int i10) {
        this.f19130b = i10;
    }

    @Override // nh.b
    public final void s(d0 d0Var) throws ch.a {
        switch (this.f19130b) {
            case 0:
                d0Var.b(4);
                this.f19131c = d0Var.c();
                if (d0Var.c() != 0) {
                    d0 d0Var2 = (d0) d0Var.f14066f;
                    int iC = d0Var2.c();
                    int i10 = d0Var2.f14063c;
                    d0Var2.a(iC * 4);
                    if (((f[]) this.f19132d) == null) {
                        if (iC < 0 || iC > 65535) {
                            throw new ch.a("invalid array conformance");
                        }
                        this.f19132d = new f[iC];
                    }
                    d0 d0VarG = d0Var2.g(i10);
                    for (int i11 = 0; i11 < iC; i11++) {
                        f[] fVarArr = (f[]) this.f19132d;
                        if (fVarArr[i11] == null) {
                            fVarArr[i11] = new f(0);
                        }
                        fVarArr[i11].s(d0VarG);
                    }
                    return;
                }
                return;
            case 1:
                d0Var.b(4);
                this.f19131c = d0Var.c();
                d0Var.c();
                if (d0Var.c() != 0) {
                    if (((nh.b) this.f19132d) == null) {
                        this.f19132d = new d(0);
                    }
                    ((nh.b) this.f19132d).s((d0) d0Var.f14066f);
                    return;
                }
                return;
            default:
                d0Var.b(4);
                this.f19131c = d0Var.c();
                if (d0Var.c() != 0) {
                    d0 d0Var3 = (d0) d0Var.f14066f;
                    int iC2 = d0Var3.c();
                    int i12 = d0Var3.f14063c;
                    d0Var3.a(iC2 * 4);
                    if (((f[]) this.f19132d) == null) {
                        if (iC2 < 0 || iC2 > 65535) {
                            throw new ch.a("invalid array conformance");
                        }
                        this.f19132d = new f[iC2];
                    }
                    d0 d0VarG2 = d0Var3.g(i12);
                    for (int i13 = 0; i13 < iC2; i13++) {
                        f[] fVarArr2 = (f[]) this.f19132d;
                        if (fVarArr2[i13] == null) {
                            fVarArr2[i13] = new f(2);
                        }
                        fVarArr2[i13].s(d0VarG2);
                    }
                    return;
                }
                return;
        }
    }

    @Override // nh.b
    public final void v(d0 d0Var) {
        switch (this.f19130b) {
            case 0:
                d0Var.b(4);
                d0Var.h(this.f19131c);
                d0Var.i((f[]) this.f19132d);
                if (((f[]) this.f19132d) != null) {
                    d0 d0Var2 = (d0) d0Var.f14066f;
                    int i10 = this.f19131c;
                    d0Var2.h(i10);
                    int i11 = d0Var2.f14063c;
                    d0Var2.a(i10 * 4);
                    d0 d0VarG = d0Var2.g(i11);
                    for (int i12 = 0; i12 < i10; i12++) {
                        ((f[]) this.f19132d)[i12].v(d0VarG);
                    }
                    break;
                }
                break;
            case 1:
                d0Var.b(4);
                d0Var.h(this.f19131c);
                d0Var.h(this.f19131c);
                d0Var.i((nh.b) this.f19132d);
                nh.b bVar = (nh.b) this.f19132d;
                if (bVar != null) {
                    bVar.v((d0) d0Var.f14066f);
                    break;
                }
                break;
            default:
                d0Var.b(4);
                d0Var.h(this.f19131c);
                d0Var.i((f[]) this.f19132d);
                if (((f[]) this.f19132d) != null) {
                    d0 d0Var3 = (d0) d0Var.f14066f;
                    int i13 = this.f19131c;
                    d0Var3.h(i13);
                    int i14 = d0Var3.f14063c;
                    d0Var3.a(i13 * 4);
                    d0 d0VarG2 = d0Var3.g(i14);
                    for (int i15 = 0; i15 < i13; i15++) {
                        ((f[]) this.f19132d)[i15].v(d0VarG2);
                    }
                    break;
                }
                break;
        }
    }
}
