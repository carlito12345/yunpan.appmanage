package ua;

import com.yunpan.appmanage.bean.WpPathBean;
import ha.gb;

/* loaded from: classes.dex */
public final /* synthetic */ class t8 implements ha.y6, gb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15971a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i9 f15972b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15973c;

    public /* synthetic */ t8(i9 i9Var, int i10, int i11) {
        this.f15971a = i11;
        this.f15972b = i9Var;
        this.f15973c = i10;
    }

    @Override // ha.gb
    public void a(x9.w3 w3Var) {
        this.f15972b.z.D(this.f15973c, w3Var);
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        mc.g gVarA;
        i9 i9Var = this.f15972b;
        i9Var.getClass();
        if (!z || str.isEmpty()) {
            return;
        }
        x9.n5 n5Var = (x9.n5) i9Var.f15746j.t(i9Var.T);
        x9.y5 y5Var = i9Var.f15751q;
        int i10 = this.f15973c;
        WpPathBean wpPathBean = (WpPathBean) y5Var.t(i10);
        int i11 = n5Var.f18290a;
        if (i11 == 1) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 4)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 2) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 6)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 3) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 12)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 4) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 10)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 5) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 11)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 6) {
            gVarA = new mc.c(0, new ba.f(n5Var, wpPathBean, str, 14)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 7) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 13)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i11 == 20) {
            gVarA = new mc.c(0, new ba.e(n5Var, wpPathBean, str, 8)).d(rc.f.f13757b).a(fc.b.a());
        } else {
            if (i11 != 21) {
                return;
            }
            gVarA = new mc.c(0, new ba.e(wpPathBean, str, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        }
        gVarA.b(new b9(i9Var, wpPathBean, str, i10));
    }
}
