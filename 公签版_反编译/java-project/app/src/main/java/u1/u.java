package u1;

import android.os.SystemClock;
import j$.util.Objects;
import r1.q0;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final int f15283a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15284b;

    /* renamed from: c, reason: collision with root package name */
    public int f15285c;

    /* renamed from: d, reason: collision with root package name */
    public int f15286d;

    /* renamed from: e, reason: collision with root package name */
    public long f15287e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15288f;

    /* renamed from: g, reason: collision with root package name */
    public long f15289g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ x f15290h;

    public u(x xVar, int i10) {
        this.f15290h = xVar;
        this.f15283a = i10;
    }

    public final void a() {
        x xVar = this.f15290h;
        boolean zN = xVar.f15303a.n();
        b0 b0Var = xVar.f15308f;
        if (!zN) {
            if (this.f15288f) {
                b0Var.e(2);
            }
            this.f15288f = false;
            return;
        }
        y1.x xVar2 = xVar.f15303a;
        q0 q0VarE = xVar2.E();
        Object objL = q0VarE.p() ? null : q0VarE.l(xVar2.B());
        int iY = xVar2.y();
        int iZ = xVar2.z();
        long jC = xVar2.C();
        if (objL != null && iY == -1) {
            jC -= f0.R(q0VarE.g(objL, xVar.f15307e).f13507e);
        }
        xVar.f15306d.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = this.f15288f;
        int i10 = this.f15283a;
        if (z && Objects.equals(objL, this.f15284b) && iY == this.f15285c && iZ == this.f15286d && jC == this.f15287e) {
            if (jElapsedRealtime - this.f15289g >= i10) {
                y yVar = new y(2, i10);
                y1.t tVar = xVar.f15305c;
                tVar.getClass();
                tVar.f18808a.c0(new y1.k(2, yVar, 1003));
                return;
            }
            return;
        }
        this.f15288f = true;
        this.f15289g = jElapsedRealtime;
        this.f15284b = objL;
        this.f15285c = iY;
        this.f15286d = iZ;
        this.f15287e = jC;
        b0Var.e(2);
        b0Var.f15188a.sendEmptyMessageDelayed(2, i10);
    }
}
