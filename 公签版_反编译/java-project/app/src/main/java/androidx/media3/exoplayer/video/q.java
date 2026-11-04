package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Trace;
import android.util.Pair;
import android.view.Surface;
import java.util.List;
import java.util.Locale;
import u7.y0;

/* loaded from: classes.dex */
public final class q implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public u7.g0 f1959a;

    /* renamed from: b, reason: collision with root package name */
    public r1.p f1960b;

    /* renamed from: c, reason: collision with root package name */
    public long f1961c;

    /* renamed from: d, reason: collision with root package name */
    public long f1962d;

    /* renamed from: e, reason: collision with root package name */
    public int f1963e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ v f1964f;

    public q(v vVar, Context context) {
        this.f1964f = vVar;
        u1.f0.E(context);
        u7.e0 e0Var = u7.g0.f15471b;
        this.f1959a = y0.f15549e;
        this.f1962d = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void a() {
        v vVar = this.f1964f;
        if (vVar.f1979n == 2) {
            return;
        }
        u1.b0 b0Var = vVar.f1977k;
        if (b0Var != null) {
            b0Var.f15188a.removeCallbacksAndMessages(null);
        }
        vVar.l = null;
        vVar.f1979n = 2;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean b() {
        return false;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final Surface c() {
        a9.o.t(false);
        throw null;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean e(long j10, h hVar) {
        long j11;
        int i10;
        a9.o.t(false);
        long j12 = j10 + this.f1961c;
        v vVar = this.f1964f;
        a0 a0Var = vVar.f1975i;
        long j13 = a0Var.f1851a;
        if (j13 == -9223372036854775807L) {
            j11 = -9223372036854775807L;
        } else {
            double d10 = a0Var.f1852b;
            double d11 = j12 - j13;
            double d12 = a0Var.f1853c;
            Double.isNaN(d11);
            Double.isNaN(d10);
            j11 = (long) ((d11 * d12) + d10);
        }
        if (j11 != -9223372036854775807L) {
            long j14 = vVar.f1974h;
            if (j14 != -9223372036854775807L && j11 < j14 && (i10 = this.f1963e) < 2) {
                this.f1963e = i10 + 1;
                m mVar = hVar.f1905c;
                mVar.getClass();
                Trace.beginSection("dropVideoBuffer");
                hVar.f1903a.h(hVar.f1904b);
                Trace.endSection();
                mVar.Q0(0, 1);
                return true;
            }
        }
        int i11 = vVar.f1981p;
        if (i11 == -1 || i11 != 0) {
            return false;
        }
        throw null;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void f() {
        v vVar = this.f1964f;
        if (vVar.f1970d) {
            vVar.f1971e.f();
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void g() {
        v vVar = this.f1964f;
        if (vVar.f1970d) {
            vVar.f1971e.g();
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void h(long j10) {
        this.f1961c = j10;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void i(x xVar) {
        this.f1964f.f1971e.f1868j = xVar;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void j() {
        long j10 = this.f1962d;
        v vVar = this.f1964f;
        if (vVar.f1980o >= j10) {
            vVar.f1971e.j();
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void k(int i10) {
        this.f1964f.f1971e.k(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0042 A[Catch: h -> 0x003d, TryCatch #0 {h -> 0x003d, blocks: (B:14:0x0026, B:17:0x002e, B:23:0x003a, B:28:0x0042, B:30:0x0046, B:37:0x0059, B:40:0x0060, B:45:0x0080, B:35:0x0051), top: B:50:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0080 A[Catch: h -> 0x003d, TRY_LEAVE, TryCatch #0 {h -> 0x003d, blocks: (B:14:0x0026, B:17:0x002e, B:23:0x003a, B:28:0x0042, B:30:0x0046, B:37:0x0059, B:40:0x0060, B:45:0x0080, B:35:0x0051), top: B:50:0x0026 }] */
    @Override // androidx.media3.exoplayer.video.j0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(r1.p pVar) throws i0 {
        v vVar = this.f1964f;
        boolean z = false;
        boolean zL = true;
        a9.o.t(vVar.f1979n == 0);
        r1.g gVar = pVar.E;
        if (gVar == null || !gVar.d()) {
            gVar = r1.g.f13441h;
        }
        int i10 = gVar.f13444c;
        if (i10 == 7) {
            try {
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 34) {
                    if (i10 != 6) {
                        if (Build.VERSION.SDK_INT >= 33 && u1.a.l("EGL_EXT_gl_colorspace_bt2020_pq")) {
                            z = true;
                        }
                        zL = z;
                    } else if (i10 == 7) {
                        zL = u1.a.l("EGL_EXT_gl_colorspace_bt2020_hlg");
                    }
                    if (zL && Build.VERSION.SDK_INT >= 29) {
                        Locale locale = Locale.US;
                        u1.a.p("Color transfer " + i10 + " is not supported. Falling back to OpenGl tone mapping.");
                        r1.g gVar2 = r1.g.f13441h;
                    } else if (i10 != 2 || i10 == 10) {
                        r1.g gVar3 = r1.g.f13441h;
                    }
                } else {
                    if (!(i11 >= 33 && u1.a.l("EGL_EXT_gl_colorspace_bt2020_pq"))) {
                        if (i10 != 6) {
                        }
                        if (zL) {
                            if (i10 != 2) {
                                r1.g gVar32 = r1.g.f13441h;
                            }
                        }
                    }
                }
            } catch (u1.h e7) {
                throw new i0(e7, pVar);
            }
        }
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        vVar.f1977k = vVar.f1972f.a(looperMyLooper, null);
        vVar.f1968b.a();
        throw null;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void m(float f10) {
        v vVar = this.f1964f;
        vVar.f1975i.c(f10);
        vVar.f1971e.m(f10);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void n() {
        v vVar = this.f1964f;
        int i10 = u1.r.f15269c.f15270a;
        vVar.l = null;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void o(r1.p pVar, long j10, int i10, List list) {
        a9.o.t(false);
        this.f1959a = u7.g0.m(list);
        this.f1960b = pVar;
        r1.o oVar = new r1.o(pVar);
        r1.g gVar = pVar.E;
        if (gVar == null || !gVar.d()) {
            gVar = r1.g.f13441h;
        }
        oVar.D = gVar;
        oVar.a();
        throw null;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void p(boolean z) {
        this.f1962d = -9223372036854775807L;
        v vVar = this.f1964f;
        if (vVar.f1979n == 1) {
            vVar.f1978m++;
            vVar.f1971e.p(z);
            while (vVar.f1976j.h() > 1) {
                vVar.f1976j.e();
            }
            if (vVar.f1976j.h() == 1) {
                ((u) vVar.f1976j.e()).getClass();
                throw null;
            }
            vVar.f1980o = -9223372036854775807L;
            u1.b0 b0Var = vVar.f1977k;
            b0Var.getClass();
            b0Var.d(new c0(2, vVar));
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void q(List list) {
        if (this.f1959a.equals(list)) {
            return;
        }
        this.f1959a = u7.g0.m(list);
        r1.p pVar = this.f1960b;
        if (pVar == null) {
            return;
        }
        r1.o oVar = new r1.o(pVar);
        r1.g gVar = pVar.E;
        if (gVar == null || !gVar.d()) {
            gVar = r1.g.f13441h;
        }
        oVar.D = gVar;
        oVar.a();
        throw null;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void r(long j10, long j11) throws i0 {
        this.f1964f.f1971e.r(j10 + this.f1961c, j11);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void s(boolean z) {
        v vVar = this.f1964f;
        if (vVar.f1970d) {
            vVar.f1971e.s(z);
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean t(boolean z) {
        return this.f1964f.f1971e.f1859a.b(false);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void u() {
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean v() {
        return false;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void w(Surface surface, u1.r rVar) {
        v vVar = this.f1964f;
        Pair pair = vVar.l;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((u1.r) vVar.l.second).equals(rVar)) {
            return;
        }
        vVar.l = Pair.create(surface, rVar);
        int i10 = rVar.f15270a;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void x() {
        v vVar = this.f1964f;
        if (vVar.f1976j.h() == 0) {
            vVar.f1971e.x();
            return;
        }
        u1.c0 c0Var = new u1.c0();
        if (vVar.f1976j.h() <= 0) {
            vVar.f1976j = c0Var;
        } else {
            ((u) vVar.f1976j.e()).getClass();
            throw null;
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void d(a1.i iVar) {
    }
}
