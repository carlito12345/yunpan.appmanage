package com.yunpan.appmanage.carsdk;

/* loaded from: classes.dex */
public final class b0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3788a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h0 f3789b;

    public /* synthetic */ b0(h0 h0Var, int i10) {
        this.f3788a = i10;
        this.f3789b = h0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3788a) {
            case 0:
                h0 h0Var = this.f3789b;
                try {
                    int i10 = h0Var.f3830u;
                    if (i10 > 0) {
                        h0Var.G.b(((z7.s) h0Var.H.get(Integer.valueOf(i10))).p("longClick"));
                        h0Var.f3834y.removeCallbacks(h0Var.A);
                        h0Var.f3830u = -1;
                        h0Var.f3831v = 0L;
                        h0Var.f3832w = 0;
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                h0 h0Var2 = this.f3789b;
                try {
                    int i11 = h0Var2.f3830u;
                    if (i11 > 0) {
                        h0Var2.G.b(((z7.s) h0Var2.H.get(Integer.valueOf(i11))).p("click"));
                        h0Var2.f3834y.removeCallbacks(h0Var2.z);
                        h0Var2.f3830u = -1;
                        h0Var2.f3831v = 0L;
                        h0Var2.f3832w = 0;
                        break;
                    }
                } catch (Exception unused2) {
                    return;
                }
                break;
        }
    }
}
