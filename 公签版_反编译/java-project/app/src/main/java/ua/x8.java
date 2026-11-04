package ua;

import com.hjq.toast.Toaster;
import ha.af;
import ha.cf;
import ha.ic;
import ha.oc;
import ha.re;
import ha.xe;

/* loaded from: classes.dex */
public final /* synthetic */ class x8 implements xe, cf, af, ha.i6, ic, oc, re {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16044a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i9 f16045b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.n5 f16046c;

    public /* synthetic */ x8(i9 i9Var, x9.n5 n5Var, int i10) {
        this.f16044a = i10;
        this.f16045b = i9Var;
        this.f16046c = n5Var;
    }

    @Override // ha.i6, ha.ic, ha.oc, ha.re
    public void a() {
        switch (this.f16044a) {
            case 3:
                this.f16045b.t(this.f16046c);
                break;
            case 4:
                this.f16045b.t(this.f16046c);
                break;
            case 5:
                this.f16045b.t(this.f16046c);
                break;
            default:
                this.f16045b.t(this.f16046c);
                break;
        }
    }

    @Override // ha.xe, ha.cf, ha.af
    public void c() {
        i9 i9Var;
        x9.n5 n5Var;
        i9 i9Var2;
        x9.n5 n5Var2;
        int i10;
        switch (this.f16044a) {
            case 0:
                int i11 = 0;
                while (true) {
                    i9Var = this.f16045b;
                    int iB = i9Var.f15746j.b();
                    n5Var = this.f16046c;
                    if (i11 >= iB) {
                        i11 = -1;
                    } else if (((x9.n5) i9Var.f15746j.t(i11)).f18290a == n5Var.f18290a && ((x9.n5) i9Var.f15746j.t(i11)).f18294e.equals(n5Var.f18294e)) {
                        Toaster.show((CharSequence) "已存在该账号");
                    } else {
                        i11++;
                    }
                }
                if (i11 == -1) {
                    i9Var.f15746j.p(r0.b() - 1, n5Var);
                    com.yunpan.appmanage.util.e0.f4012a.a(n5Var);
                    i9Var.T = i9Var.f15746j.b() - 2;
                } else {
                    i9Var.f15746j.D(i11, n5Var);
                    com.yunpan.appmanage.util.e0.f4012a.h(i11, n5Var);
                    i9Var.T = i11;
                }
                i9Var.A();
                break;
            case 1:
                int i12 = 0;
                while (true) {
                    i9Var2 = this.f16045b;
                    int iB2 = i9Var2.f15746j.b();
                    n5Var2 = this.f16046c;
                    if (i12 >= iB2) {
                        i12 = -1;
                    } else if (((x9.n5) i9Var2.f15746j.t(i12)).f18290a == n5Var2.f18290a && ((x9.n5) i9Var2.f15746j.t(i12)).f18294e.equals(n5Var2.f18294e)) {
                        Toaster.show((CharSequence) "已存在该账号");
                    } else {
                        i12++;
                    }
                }
                if (i12 == -1) {
                    i9Var2.f15746j.p(r0.b() - 1, n5Var2);
                    com.yunpan.appmanage.util.e0.f4012a.a(n5Var2);
                    i9Var2.T = i9Var2.f15746j.b() - 2;
                } else {
                    i9Var2.f15746j.D(i12, n5Var2);
                    com.yunpan.appmanage.util.e0.f4012a.h(i12, n5Var2);
                    i9Var2.T = i12;
                }
                i9Var2.A();
                break;
            default:
                i9 i9Var3 = this.f16045b;
                i9Var3.getClass();
                x9.n5 n5Var3 = this.f16046c;
                if (n5Var3.f18294e.isEmpty()) {
                    i10 = -1;
                } else {
                    i10 = 0;
                    while (i10 < i9Var3.f15746j.b()) {
                        if (((x9.n5) i9Var3.f15746j.t(i10)).f18290a == n5Var3.f18290a && ((x9.n5) i9Var3.f15746j.t(i10)).f18294e.equals(n5Var3.f18294e)) {
                            Toaster.show((CharSequence) "已存在该账号");
                        } else {
                            i10++;
                        }
                    }
                    i10 = -1;
                }
                if (i10 == -1) {
                    i9Var3.f15746j.p(r2.b() - 1, n5Var3);
                    com.yunpan.appmanage.util.e0.f4012a.a(n5Var3);
                    i9Var3.T = i9Var3.f15746j.b() - 2;
                } else {
                    i9Var3.f15746j.D(i10, n5Var3);
                    com.yunpan.appmanage.util.e0.f4012a.h(i10, n5Var3);
                    i9Var3.T = i10;
                }
                i9Var3.A();
                break;
        }
    }
}
