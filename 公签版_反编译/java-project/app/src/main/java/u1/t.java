package u1;

import android.os.SystemClock;
import j$.util.Objects;
import r1.q0;
import y1.v0;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final int f15274a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15275b;

    /* renamed from: c, reason: collision with root package name */
    public int f15276c;

    /* renamed from: d, reason: collision with root package name */
    public int f15277d;

    /* renamed from: e, reason: collision with root package name */
    public long f15278e;

    /* renamed from: f, reason: collision with root package name */
    public long f15279f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15280g;

    /* renamed from: h, reason: collision with root package name */
    public long f15281h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ x f15282i;

    public t(x xVar, int i10) {
        this.f15282i = xVar;
        this.f15274a = i10;
    }

    public final void a() {
        long jW;
        if (this.f15282i.f15303a.J() != 2 || !this.f15282i.f15303a.I() || this.f15282i.f15303a.K() != 0) {
            if (this.f15280g) {
                this.f15282i.f15308f.e(1);
            }
            this.f15280g = false;
            return;
        }
        q0 q0VarE = this.f15282i.f15303a.E();
        Object objL = q0VarE.p() ? null : q0VarE.l(this.f15282i.f15303a.B());
        int iY = this.f15282i.f15303a.y();
        int iZ = this.f15282i.f15303a.z();
        y1.x xVar = this.f15282i.f15303a;
        xVar.h0();
        if (xVar.N()) {
            v0 v0Var = xVar.f18853f1;
            jW = v0Var.f18834k.equals(v0Var.f18825b) ? f0.R(xVar.f18853f1.f18839q) : xVar.H();
        } else {
            jW = xVar.w();
        }
        long jMax = Math.max(0L, jW - this.f15282i.f15303a.C());
        y1.x xVar2 = this.f15282i.f15303a;
        xVar2.h0();
        long jMax2 = Math.max(0L, f0.R(xVar2.f18853f1.r) - jMax);
        if (objL != null && iY == -1) {
            jW -= f0.R(q0VarE.g(objL, this.f15282i.f15307e).f13507e);
        }
        this.f15282i.f15306d.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f15280g && Objects.equals(objL, this.f15275b) && iY == this.f15276c && iZ == this.f15277d && jW == this.f15278e && jMax2 == this.f15279f) {
            if (jElapsedRealtime - this.f15281h >= this.f15274a) {
                y1.t tVar = this.f15282i.f15305c;
                y yVar = new y(1, this.f15274a);
                tVar.getClass();
                tVar.f18808a.c0(new y1.k(2, yVar, 1003));
                return;
            }
            return;
        }
        this.f15280g = true;
        this.f15281h = jElapsedRealtime;
        this.f15275b = objL;
        this.f15276c = iY;
        this.f15277d = iZ;
        this.f15278e = jW;
        this.f15279f = jMax2;
        this.f15282i.f15308f.e(1);
        this.f15282i.f15308f.f15188a.sendEmptyMessageDelayed(1, this.f15274a);
    }
}
