package ua;

import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class l8 extends e9.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.m5 f15812b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15813c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q8 f15814d;

    public l8(q8 q8Var, x9.m5 m5Var, int i10) {
        this.f15814d = q8Var;
        this.f15812b = m5Var;
        this.f15813c = i10;
    }

    @Override // nh.b
    public final void f0() {
        q8 q8Var = this.f15814d;
        q8Var.F.decrementAndGet();
        StringBuilder sb2 = new StringBuilder("传送失败:");
        x9.m5 m5Var = this.f15812b;
        sb2.append(m5Var.f18279b);
        com.yunpan.appmanage.util.a0.s(sb2.toString(), false);
        m5Var.f18280c = "失败";
        q8Var.E.D(this.f15813c, m5Var);
        q8Var.x();
    }

    @Override // nh.b
    public final void g0(v3.f fVar) {
        q8 q8Var = this.f15814d;
        q8Var.F.decrementAndGet();
        StringBuilder sb2 = new StringBuilder("上传完成：");
        x9.m5 m5Var = this.f15812b;
        sb2.append(m5Var.f18279b);
        com.yunpan.appmanage.util.a0.v(sb2.toString(), false);
        m5Var.f18280c = "完成";
        q8Var.E.D(this.f15813c, m5Var);
        q8Var.x();
    }

    @Override // nh.b
    public final void r0(k9.d dVar) {
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        double d10 = dVar.f10216c;
        double d11 = dVar.f10215b;
        Double.isNaN(d10);
        Double.isNaN(d11);
        String strN = ta.q.n(decimalFormat, (d10 / d11) * 100.0d, sb2, "%");
        x9.m5 m5Var = this.f15812b;
        m5Var.f18280c = strN;
        this.f15814d.E.D(this.f15813c, m5Var);
    }
}
