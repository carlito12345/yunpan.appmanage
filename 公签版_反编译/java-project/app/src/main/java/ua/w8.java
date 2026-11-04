package ua;

import com.yunpan.appmanage.bean.WpPathBean;
import ha.cf;
import ha.ic;
import ha.oc;
import ha.re;
import ha.xe;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class w8 implements ha.y6, xe, cf, ha.i6, ic, oc, re {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16021a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i9 f16022b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16023c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ x9.n5 f16024d;

    public /* synthetic */ w8(i9 i9Var, int i10, x9.n5 n5Var, int i11) {
        this.f16021a = i11;
        this.f16022b = i9Var;
        this.f16023c = i10;
        this.f16024d = n5Var;
    }

    @Override // ha.i6, ha.ic, ha.oc, ha.re
    public void a() {
        switch (this.f16021a) {
            case 4:
                i9 i9Var = this.f16022b;
                int i10 = this.f16023c;
                i9Var.T = i10;
                com.yunpan.appmanage.util.d0 d0Var = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var = this.f16024d;
                d0Var.h(i10, n5Var);
                i9Var.f15749n.E(new ArrayList());
                i9Var.f15751q.E(new ArrayList());
                i9Var.f15749n.q(new WpPathBean(n5Var.f18291b, "/"));
                i9Var.z(false);
                break;
            case 5:
                i9 i9Var2 = this.f16022b;
                int i11 = this.f16023c;
                i9Var2.T = i11;
                com.yunpan.appmanage.util.d0 d0Var2 = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var2 = this.f16024d;
                d0Var2.h(i11, n5Var2);
                i9Var2.f15749n.E(new ArrayList());
                i9Var2.f15751q.E(new ArrayList());
                i9Var2.f15749n.q(new WpPathBean(n5Var2.f18291b, "/"));
                i9Var2.z(false);
                break;
            case 6:
                i9 i9Var3 = this.f16022b;
                int i12 = this.f16023c;
                i9Var3.T = i12;
                com.yunpan.appmanage.util.d0 d0Var3 = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var3 = this.f16024d;
                d0Var3.h(i12, n5Var3);
                i9Var3.f15749n.E(new ArrayList());
                i9Var3.f15751q.E(new ArrayList());
                i9Var3.f15749n.q(new WpPathBean(n5Var3.f18291b, ""));
                i9Var3.z(false);
                break;
            default:
                i9 i9Var4 = this.f16022b;
                int i13 = this.f16023c;
                i9Var4.T = i13;
                com.yunpan.appmanage.util.d0 d0Var4 = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var4 = this.f16024d;
                d0Var4.h(i13, n5Var4);
                i9Var4.f15749n.E(new ArrayList());
                i9Var4.f15751q.E(new ArrayList());
                i9Var4.f15749n.q(new WpPathBean(n5Var4.f18291b, ""));
                i9Var4.z(false);
                break;
        }
    }

    @Override // ha.xe, ha.cf, ha.af
    public void c() {
        switch (this.f16021a) {
            case 1:
                i9 i9Var = this.f16022b;
                int i10 = this.f16023c;
                i9Var.T = i10;
                com.yunpan.appmanage.util.d0 d0Var = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var = this.f16024d;
                d0Var.h(i10, n5Var);
                i9Var.f15749n.E(new ArrayList());
                i9Var.f15751q.E(new ArrayList());
                i9Var.f15749n.q(new WpPathBean(n5Var.f18291b, n5Var.f18290a == 1 ? "-1" : "0"));
                i9Var.z(false);
                break;
            case 2:
                i9 i9Var2 = this.f16022b;
                int i11 = this.f16023c;
                i9Var2.T = i11;
                com.yunpan.appmanage.util.d0 d0Var2 = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var2 = this.f16024d;
                d0Var2.h(i11, n5Var2);
                i9Var2.f15749n.E(new ArrayList());
                i9Var2.f15751q.E(new ArrayList());
                i9Var2.f15749n.q(new WpPathBean(n5Var2.f18291b, "0"));
                i9Var2.z(false);
                break;
            default:
                i9 i9Var3 = this.f16022b;
                int i12 = this.f16023c;
                i9Var3.T = i12;
                com.yunpan.appmanage.util.d0 d0Var3 = com.yunpan.appmanage.util.e0.f4012a;
                x9.n5 n5Var3 = this.f16024d;
                d0Var3.h(i12, n5Var3);
                i9Var3.f15749n.E(new ArrayList());
                i9Var3.f15751q.E(new ArrayList());
                i9Var3.f15749n.q(new WpPathBean(n5Var3.f18291b, "0"));
                i9Var3.z(false);
                break;
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        i9 i9Var = this.f16022b;
        i9Var.getClass();
        if (!z || str.trim().isEmpty()) {
            return;
        }
        x9.n5 n5Var = this.f16024d;
        n5Var.f18291b = str;
        x9.o5 o5Var = i9Var.f15746j;
        int i10 = this.f16023c;
        o5Var.e(i10);
        com.yunpan.appmanage.util.e0.f4012a.h(i10, n5Var);
    }

    public /* synthetic */ w8(i9 i9Var, x9.n5 n5Var, int i10) {
        this.f16021a = 0;
        this.f16022b = i9Var;
        this.f16024d = n5Var;
        this.f16023c = i10;
    }
}
