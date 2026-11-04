package ua;

import com.yunpan.appmanage.bean.WpPathBean;
import ha.af;
import ha.cf;
import ha.ic;
import ha.oc;
import ha.re;
import ha.xe;

/* loaded from: classes.dex */
public final /* synthetic */ class h9 implements xe, cf, af, ha.i6, ic, oc, re {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15721a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ha.h3 f15722b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.n5 f15723c;

    public /* synthetic */ h9(ha.h3 h3Var, x9.n5 n5Var, int i10) {
        this.f15721a = i10;
        this.f15722b = h3Var;
        this.f15723c = n5Var;
    }

    @Override // ha.i6, ha.ic, ha.oc, ha.re
    public void a() {
        switch (this.f15721a) {
            case 3:
                ha.h3 h3Var = this.f15722b;
                h3Var.getClass();
                com.yunpan.appmanage.util.d0 d0Var = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var = (i9) h3Var.f7143d;
                int i10 = i9Var.T;
                x9.n5 n5Var = this.f15723c;
                d0Var.h(i10, n5Var);
                i9Var.f15749n.q(new WpPathBean(n5Var.f18291b, "/"));
                i9Var.z(false);
                break;
            case 4:
                ha.h3 h3Var2 = this.f15722b;
                h3Var2.getClass();
                com.yunpan.appmanage.util.d0 d0Var2 = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var2 = (i9) h3Var2.f7143d;
                int i11 = i9Var2.T;
                x9.n5 n5Var2 = this.f15723c;
                d0Var2.h(i11, n5Var2);
                i9Var2.f15749n.q(new WpPathBean(n5Var2.f18291b, "/"));
                i9Var2.z(false);
                break;
            case 5:
                ha.h3 h3Var3 = this.f15722b;
                h3Var3.getClass();
                com.yunpan.appmanage.util.d0 d0Var3 = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var3 = (i9) h3Var3.f7143d;
                int i12 = i9Var3.T;
                x9.n5 n5Var3 = this.f15723c;
                d0Var3.h(i12, n5Var3);
                i9Var3.f15749n.q(new WpPathBean(n5Var3.f18291b, ""));
                i9Var3.z(false);
                break;
            default:
                ha.h3 h3Var4 = this.f15722b;
                h3Var4.getClass();
                com.yunpan.appmanage.util.d0 d0Var4 = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var4 = (i9) h3Var4.f7143d;
                int i13 = i9Var4.T;
                x9.n5 n5Var4 = this.f15723c;
                d0Var4.h(i13, n5Var4);
                i9Var4.f15749n.q(new WpPathBean(n5Var4.f18291b, n5Var4.f18292c));
                i9Var4.z(false);
                break;
        }
    }

    @Override // ha.xe, ha.cf, ha.af
    public void c() {
        switch (this.f15721a) {
            case 0:
                ha.h3 h3Var = this.f15722b;
                h3Var.getClass();
                com.yunpan.appmanage.util.d0 d0Var = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var = (i9) h3Var.f7143d;
                int i10 = i9Var.T;
                x9.n5 n5Var = this.f15723c;
                d0Var.h(i10, n5Var);
                i9Var.f15749n.q(new WpPathBean(n5Var.f18291b, n5Var.f18290a == 1 ? "-1" : "0"));
                i9Var.z(false);
                break;
            case 1:
                ha.h3 h3Var2 = this.f15722b;
                h3Var2.getClass();
                com.yunpan.appmanage.util.d0 d0Var2 = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var2 = (i9) h3Var2.f7143d;
                int i11 = i9Var2.T;
                x9.n5 n5Var2 = this.f15723c;
                d0Var2.h(i11, n5Var2);
                i9Var2.f15749n.q(new WpPathBean(n5Var2.f18291b, "0"));
                i9Var2.z(false);
                break;
            default:
                ha.h3 h3Var3 = this.f15722b;
                h3Var3.getClass();
                com.yunpan.appmanage.util.d0 d0Var3 = com.yunpan.appmanage.util.e0.f4012a;
                i9 i9Var3 = (i9) h3Var3.f7143d;
                int i12 = i9Var3.T;
                x9.n5 n5Var3 = this.f15723c;
                d0Var3.h(i12, n5Var3);
                i9Var3.f15749n.q(new WpPathBean(n5Var3.f18291b, ""));
                i9Var3.z(false);
                break;
        }
    }
}
