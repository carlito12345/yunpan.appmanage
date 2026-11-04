package u1;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final int f15298a;

    /* renamed from: b, reason: collision with root package name */
    public int f15299b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15300c;

    /* renamed from: d, reason: collision with root package name */
    public long f15301d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ x f15302e;

    public w(x xVar, int i10) {
        this.f15302e = xVar;
        this.f15298a = i10;
    }

    public final void a() {
        x xVar = this.f15302e;
        int iK = xVar.f15303a.K();
        y1.x xVar2 = xVar.f15303a;
        boolean zI = xVar2.I();
        b0 b0Var = xVar.f15308f;
        if (!zI || xVar2.J() == 1 || xVar2.J() == 4 || iK == 0 || iK == 1) {
            if (this.f15300c) {
                b0Var.e(4);
            }
            this.f15300c = false;
            return;
        }
        xVar.f15306d.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = this.f15300c;
        int i10 = this.f15298a;
        if (!z || this.f15299b != iK) {
            this.f15300c = true;
            this.f15301d = jElapsedRealtime;
            this.f15299b = iK;
            b0Var.e(4);
            b0Var.f15188a.sendEmptyMessageDelayed(4, i10);
            return;
        }
        if (jElapsedRealtime - this.f15301d >= i10) {
            y yVar = new y(4, i10);
            y1.t tVar = xVar.f15305c;
            tVar.getClass();
            tVar.f18808a.c0(new y1.k(2, yVar, 1003));
        }
    }
}
