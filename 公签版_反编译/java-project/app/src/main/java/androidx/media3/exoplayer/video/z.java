package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.SystemClock;
import android.view.Surface;

/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final m f1985a;

    /* renamed from: b, reason: collision with root package name */
    public final VideoFrameReleaseHelper f1986b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1987c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1988d;

    /* renamed from: g, reason: collision with root package name */
    public long f1991g;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1994j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1996m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1997n;

    /* renamed from: e, reason: collision with root package name */
    public int f1989e = 0;

    /* renamed from: f, reason: collision with root package name */
    public long f1990f = -9223372036854775807L;

    /* renamed from: h, reason: collision with root package name */
    public long f1992h = -9223372036854775807L;

    /* renamed from: i, reason: collision with root package name */
    public long f1993i = -9223372036854775807L;

    /* renamed from: k, reason: collision with root package name */
    public float f1995k = 1.0f;
    public u1.z l = u1.z.f15315a;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f1998o = true;

    public z(Context context, m mVar, long j10) {
        this.f1985a = mVar;
        this.f1987c = j10;
        this.f1986b = new VideoFrameReleaseHelper(context);
    }

    public final int a(long j10, long j11, long j12, long j13, boolean z, boolean z4, y yVar) {
        boolean z10;
        yVar.f1983b = -9223372036854775807L;
        yVar.f1984c = -9223372036854775807L;
        if (this.f1988d && this.f1990f == -9223372036854775807L) {
            this.f1990f = j11;
        }
        long j14 = this.f1992h;
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.f1986b;
        if (j14 != j10) {
            videoFrameReleaseHelper.onNextFrame(j10);
            this.f1992h = j10;
        }
        double d10 = j10 - j11;
        double d11 = this.f1995k;
        Double.isNaN(d10);
        Double.isNaN(d11);
        long jG = (long) (d10 / d11);
        if (this.f1988d) {
            this.l.getClass();
            jG -= u1.f0.G(SystemClock.elapsedRealtime()) - j12;
        }
        yVar.f1983b = jG;
        if (z && !z4) {
            return 3;
        }
        boolean z11 = this.f1996m;
        boolean z12 = this.f1998o;
        m mVar = this.f1985a;
        if (!z11 && z12) {
            if (mVar.N0(jG, j11, z4, true)) {
                return 4;
            }
            if (this.f1988d && yVar.f1983b < 30000) {
                return 3;
            }
            this.f1997n = true;
            return 5;
        }
        if (!z12) {
            this.f1997n = true;
        }
        boolean z13 = false;
        if (this.f1993i == -9223372036854775807L || this.f1994j) {
            int i10 = this.f1989e;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new IllegalStateException();
                        }
                        this.l.getClass();
                        long jG2 = u1.f0.G(SystemClock.elapsedRealtime()) - this.f1991g;
                        if (this.f1988d) {
                            long j15 = this.f1990f;
                            if (j15 == -9223372036854775807L || j15 == j11 || jG >= -30000 || jG2 <= 100000) {
                            }
                        }
                        z10 = false;
                    } else if (j11 < j13) {
                        z10 = false;
                    }
                }
                z10 = true;
            } else {
                z10 = this.f1988d;
            }
        } else {
            z10 = false;
        }
        if (z10) {
            return 0;
        }
        if (!this.f1988d || j11 == this.f1990f) {
            return 5;
        }
        this.l.getClass();
        long jNanoTime = System.nanoTime();
        long jAdjustReleaseTime = videoFrameReleaseHelper.adjustReleaseTime((yVar.f1983b * 1000) + jNanoTime, j10);
        yVar.f1984c = jAdjustReleaseTime;
        long j16 = (jAdjustReleaseTime - jNanoTime) / 1000;
        yVar.f1983b = j16;
        boolean z14 = (this.f1993i == -9223372036854775807L || this.f1994j) ? false : true;
        if (mVar.N0(j16, j11, z4, z14)) {
            return 4;
        }
        long j17 = yVar.f1983b;
        if (j17 < -30000 && !z4) {
            z13 = true;
        }
        return z13 ? z14 ? 3 : 2 : j17 > 50000 ? 5 : 1;
    }

    public final boolean b(boolean z) {
        if (z && (this.f1989e == 3 || (this.f1997n && (!this.f1996m || !this.f1998o)))) {
            this.f1993i = -9223372036854775807L;
            return true;
        }
        if (this.f1993i == -9223372036854775807L) {
            return false;
        }
        this.l.getClass();
        if (SystemClock.elapsedRealtime() < this.f1993i) {
            return true;
        }
        this.f1993i = -9223372036854775807L;
        return false;
    }

    public final void c(boolean z) {
        long jElapsedRealtime;
        this.f1994j = z;
        long j10 = this.f1987c;
        if (j10 > 0) {
            this.l.getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime() + j10;
        } else {
            jElapsedRealtime = -9223372036854775807L;
        }
        this.f1993i = jElapsedRealtime;
    }

    public final void d(int i10) {
        if (i10 == 0) {
            this.f1989e = 1;
        } else if (i10 == 1) {
            this.f1989e = 0;
        } else {
            if (i10 != 2) {
                throw new IllegalStateException();
            }
            this.f1989e = Math.min(this.f1989e, 2);
        }
        this.f1986b.onPositionReset();
    }

    public final void e(Surface surface) {
        this.f1996m = surface != null;
        this.f1997n = false;
        this.f1986b.onSurfaceChanged(surface);
        this.f1989e = Math.min(this.f1989e, 1);
    }
}
