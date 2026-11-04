package ya;

import android.media.audiofx.LoudnessEnhancer;
import android.os.Build;
import com.yunpan.appmanage.carsdk.j0;
import r1.b0;
import r1.b1;
import r1.d0;
import r1.h0;
import r1.i0;
import r1.k0;
import r1.l0;
import r1.v0;
import r1.x0;
import r1.y;
import u7.y0;
import ua.g8;
import y1.x;

/* loaded from: classes.dex */
public final class k implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f19097a;

    public k(l lVar) {
        this.f19097a = lVar;
    }

    @Override // r1.k0
    public final /* synthetic */ void A(int i10, boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void B(int i10, l0 l0Var, l0 l0Var2) {
    }

    @Override // r1.k0
    public final /* synthetic */ void C(h0 h0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void D(int i10, int i11) {
    }

    @Override // r1.k0
    public final /* synthetic */ void E(y yVar, int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void F(y0 y0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void H(boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void a(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void b(b1 b1Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void d(x0 x0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void e(v0 v0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void f(boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void g(int i10, boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void h(i0 i0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void i(float f10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void j(int i10) {
    }

    @Override // r1.k0
    public final void k(int i10) throws IllegalStateException, UnsupportedOperationException, IllegalArgumentException {
        l lVar = this.f19097a;
        if (i10 == 4 || i10 == 1) {
            lVar.c();
            return;
        }
        if (i10 == 3) {
            if (Build.VERSION.SDK_INT >= 19 && lVar.f19101d.f19480a.containsKey("volumeGain") && lVar.f19101d.o("volumeGain").e() > 0) {
                x xVar = lVar.f19103f;
                xVar.h0();
                LoudnessEnhancer loudnessEnhancer = new LoudnessEnhancer(((Integer) xVar.E.e()).intValue());
                lVar.f19105h = loudnessEnhancer;
                loudnessEnhancer.setTargetGain(lVar.f19101d.o("volumeGain").e());
                lVar.f19105h.setEnabled(true);
            }
            lVar.getClass();
            try {
                int iE = lVar.f19101d.o("systemVolumeType").e();
                lVar.f19107j = iE;
                if (iE >= 0) {
                    if (iE >= 100) {
                        com.yunpan.appmanage.carsdk.k0 k0Var = j0.f3843a;
                        lVar.f19108k = k0Var.f(iE - 100);
                        k0Var.h(lVar.f19107j - 100, lVar.f19101d.o("systemVolume").e());
                    } else {
                        lVar.f19108k = lVar.f19104g.getStreamVolume(iE);
                        lVar.f19104g.setStreamVolume(lVar.f19107j, lVar.f19101d.o("systemVolume").e(), 0);
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            x xVar2 = lVar.f19103f;
            xVar2.getClass();
            xVar2.h0();
            xVar2.e0(1, true);
            try {
                if (lVar.f19103f.H() == -9223372036854775807L || lVar.f19103f.H() <= 0) {
                    return;
                }
                lVar.f19106i.postDelayed(new g8(15, this), lVar.f19103f.H() + 300);
            } catch (Exception unused) {
            }
        }
    }

    @Override // r1.k0
    public final /* synthetic */ void m(b0 b0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void n(y1.k kVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void o(r1.j0 j0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void p(boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void q(t1.c cVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void r(y1.k kVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void t(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void u(r1.d dVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void v(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void x(d0 d0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void y() {
    }

    @Override // r1.k0
    public final /* synthetic */ void z(boolean z) {
    }
}
