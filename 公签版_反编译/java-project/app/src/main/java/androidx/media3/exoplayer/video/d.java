package androidx.media3.exoplayer.video;

import a2.g1;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.view.Surface;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Executor;
import r1.b1;

/* loaded from: classes.dex */
public final class d implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final z f1859a;

    /* renamed from: b, reason: collision with root package name */
    public final a0 f1860b;

    /* renamed from: c, reason: collision with root package name */
    public final d0 f1861c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f1862d;

    /* renamed from: e, reason: collision with root package name */
    public Surface f1863e;

    /* renamed from: f, reason: collision with root package name */
    public r1.p f1864f;

    /* renamed from: g, reason: collision with root package name */
    public long f1865g;

    /* renamed from: h, reason: collision with root package name */
    public h0 f1866h;

    /* renamed from: i, reason: collision with root package name */
    public Executor f1867i;

    /* renamed from: j, reason: collision with root package name */
    public x f1868j;

    public d(z zVar, a0 a0Var, u1.z zVar2) {
        this.f1859a = zVar;
        this.f1860b = a0Var;
        zVar.l = zVar2;
        this.f1861c = new d0(new g1(5, this), zVar, a0Var);
        this.f1862d = new ArrayDeque();
        this.f1864f = new r1.p(new r1.o());
        this.f1865g = -9223372036854775807L;
        this.f1866h = h0.f1906o;
        this.f1867i = new a(0);
        this.f1868j = new x() { // from class: androidx.media3.exoplayer.video.b
            @Override // androidx.media3.exoplayer.video.x
            public final void c(long j10, long j11, r1.p pVar, MediaFormat mediaFormat) {
            }
        };
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void a() {
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean b() {
        d0 d0Var = this.f1861c;
        long j10 = d0Var.f1878j;
        return j10 != -9223372036854775807L && d0Var.f1877i == j10;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final Surface c() {
        Surface surface = this.f1863e;
        surface.getClass();
        return surface;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void d(a1.i iVar) {
        y7.a aVar = y7.a.f18969a;
        this.f1866h = iVar;
        this.f1867i = aVar;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean e(long j10, h hVar) {
        this.f1862d.add(hVar);
        d0 d0Var = this.f1861c;
        f3.d dVar = d0Var.f1874f;
        int i10 = dVar.f5469c;
        long[] jArr = (long[]) dVar.f5471e;
        if (i10 == jArr.length) {
            int length = jArr.length << 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
            long[] jArr2 = new long[length];
            int length2 = jArr.length;
            int i11 = dVar.f5467a;
            int i12 = length2 - i11;
            System.arraycopy(jArr, i11, jArr2, 0, i12);
            System.arraycopy((long[]) dVar.f5471e, 0, jArr2, i12, i11);
            dVar.f5467a = 0;
            dVar.f5468b = dVar.f5469c - 1;
            dVar.f5471e = jArr2;
            dVar.f5470d = length - 1;
        }
        int i13 = (dVar.f5468b + 1) & dVar.f5470d;
        dVar.f5468b = i13;
        ((long[]) dVar.f5471e)[i13] = j10;
        dVar.f5469c++;
        d0Var.f1876h = j10;
        d0Var.f1878j = -9223372036854775807L;
        this.f1867i.execute(new c0(1, this));
        return true;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void f() {
        this.f1860b.b();
        z zVar = this.f1859a;
        zVar.f1988d = false;
        zVar.f1993i = -9223372036854775807L;
        zVar.f1986b.onStopped();
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void g() {
        this.f1860b.b();
        z zVar = this.f1859a;
        zVar.f1988d = true;
        zVar.l.getClass();
        zVar.f1991g = u1.f0.G(SystemClock.elapsedRealtime());
        zVar.f1986b.onStarted();
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void h(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void i(x xVar) {
        this.f1868j = xVar;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void j() {
        d0 d0Var = this.f1861c;
        if (d0Var.f1876h == -9223372036854775807L) {
            d0Var.f1876h = Long.MIN_VALUE;
            d0Var.f1877i = Long.MIN_VALUE;
        }
        d0Var.f1878j = d0Var.f1876h;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void k(int i10) {
        this.f1859a.f1986b.setChangeFrameRateStrategy(i10);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean l(r1.p pVar) {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void m(float f10) {
        z zVar = this.f1859a;
        zVar.getClass();
        a9.o.k(f10 > 0.0f);
        if (f10 == zVar.f1995k) {
            return;
        }
        zVar.f1995k = f10;
        zVar.f1986b.onPlaybackSpeed(f10);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void n() {
        this.f1863e = null;
        this.f1859a.e(null);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void o(r1.p pVar, long j10, int i10, List list) {
        a9.o.t(list.isEmpty());
        int i11 = pVar.f13529v;
        r1.p pVar2 = this.f1864f;
        int i12 = pVar2.f13529v;
        d0 d0Var = this.f1861c;
        int i13 = pVar.f13530w;
        if (i11 != i12 || i13 != pVar2.f13530w) {
            long j11 = d0Var.f1876h;
            d0Var.f1872d.a(new b1(i11, i13), j11 == -9223372036854775807L ? 0L : j11 + 1);
        }
        float f10 = this.f1864f.z;
        float f11 = pVar.z;
        if (f11 != f10) {
            this.f1859a.f1986b.onFormatChanged(f11);
        }
        this.f1864f = pVar;
        if (j10 != this.f1865g) {
            if (d0Var.f1874f.f5469c == 0) {
                d0Var.f1870b.d(i10);
                d0Var.l = j10;
            } else {
                long j12 = d0Var.f1876h;
                d0Var.f1873e.a(Long.valueOf(j10), j12 == -9223372036854775807L ? -4611686018427387904L : j12 + 1);
            }
            this.f1865g = j10;
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void p(boolean z) {
        if (z) {
            z zVar = this.f1859a;
            zVar.f1986b.onPositionReset();
            zVar.f1992h = -9223372036854775807L;
            zVar.f1990f = -9223372036854775807L;
            zVar.f1989e = Math.min(zVar.f1989e, 1);
            zVar.f1993i = -9223372036854775807L;
            zVar.f1997n = false;
        }
        this.f1860b.b();
        d0 d0Var = this.f1861c;
        f3.d dVar = d0Var.f1874f;
        dVar.f5467a = 0;
        dVar.f5468b = -1;
        dVar.f5469c = 0;
        d0Var.f1876h = -9223372036854775807L;
        d0Var.f1877i = -9223372036854775807L;
        d0Var.f1878j = -9223372036854775807L;
        u1.c0 c0Var = d0Var.f1873e;
        if (c0Var.h() > 0) {
            a9.o.k(c0Var.h() > 0);
            while (c0Var.h() > 1) {
                c0Var.e();
            }
            Object objE = c0Var.e();
            objE.getClass();
            d0Var.l = ((Long) objE).longValue();
        }
        u1.c0 c0Var2 = d0Var.f1872d;
        if (c0Var2.h() > 0) {
            a9.o.k(c0Var2.h() > 0);
            while (c0Var2.h() > 1) {
                c0Var2.e();
            }
            Object objE2 = c0Var2.e();
            objE2.getClass();
            c0Var2.a((b1) objE2, 0L);
        }
        this.f1862d.clear();
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void q(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void r(long j10, long j11) throws i0 {
        try {
            this.f1861c.a(j10, j11);
        } catch (y1.k e7) {
            throw new i0(e7, this.f1864f);
        }
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void s(boolean z) {
        this.f1859a.c(z);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean t(boolean z) {
        return this.f1859a.b(z);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void u() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final boolean v() {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void w(Surface surface, u1.r rVar) {
        this.f1863e = surface;
        this.f1859a.e(surface);
    }

    @Override // androidx.media3.exoplayer.video.j0
    public final void x() {
        z zVar = this.f1859a;
        if (zVar.f1989e == 0) {
            zVar.f1989e = 1;
        }
    }
}
