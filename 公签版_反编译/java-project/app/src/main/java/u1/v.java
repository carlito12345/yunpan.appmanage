package u1;

import android.os.SystemClock;
import j$.util.Objects;
import r1.o0;
import r1.q0;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final int f15291a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15292b;

    /* renamed from: c, reason: collision with root package name */
    public int f15293c;

    /* renamed from: d, reason: collision with root package name */
    public int f15294d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15295e;

    /* renamed from: f, reason: collision with root package name */
    public long f15296f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ x f15297g;

    public v(x xVar, int i10) {
        this.f15297g = xVar;
        this.f15291a = i10;
    }

    public final void a() {
        long jH;
        x xVar = this.f15297g;
        q0 q0VarE = xVar.f15303a.E();
        boolean zP = q0VarE.p();
        y1.x xVar2 = xVar.f15303a;
        Object objL = zP ? null : q0VarE.l(xVar2.B());
        int iY = xVar2.y();
        int iZ = xVar2.z();
        long jC = xVar2.C();
        if (objL == null || iY != -1) {
            jH = iY != -1 ? xVar2.H() : -9223372036854775807L;
        } else {
            o0 o0Var = xVar.f15307e;
            q0VarE.g(objL, o0Var);
            jC -= f0.R(o0Var.f13507e);
            jH = f0.R(o0Var.f13506d);
        }
        boolean zN = xVar2.n();
        b0 b0Var = xVar.f15308f;
        if (!zN || jH == -9223372036854775807L || jC < jH) {
            b0Var.e(3);
            if (zN && jH != -9223372036854775807L) {
                xVar2.h0();
                b0Var.f15188a.sendEmptyMessageDelayed(3, (int) Math.ceil((jH - jC) / xVar2.f18853f1.f18837o.f13452a));
            }
            this.f15295e = false;
            return;
        }
        xVar.f15306d.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = this.f15295e;
        int i10 = this.f15291a;
        if (z && Objects.equals(objL, this.f15292b) && iY == this.f15293c && iZ == this.f15294d) {
            if (jElapsedRealtime - this.f15296f >= i10) {
                y yVar = new y(3, i10);
                y1.t tVar = xVar.f15305c;
                tVar.getClass();
                tVar.f18808a.c0(new y1.k(2, yVar, 1003));
                return;
            }
            return;
        }
        this.f15295e = true;
        this.f15296f = jElapsedRealtime;
        this.f15292b = objL;
        this.f15293c = iY;
        this.f15294d = iZ;
        b0Var.e(3);
        b0Var.f15188a.sendEmptyMessageDelayed(3, i10);
    }
}
