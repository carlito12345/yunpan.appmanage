package androidx.media3.exoplayer.video;

import a2.g1;
import android.os.SystemClock;
import android.os.Trace;
import java.util.NoSuchElementException;
import r1.b1;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final g1 f1869a;

    /* renamed from: b, reason: collision with root package name */
    public final z f1870b;

    /* renamed from: g, reason: collision with root package name */
    public final a0 f1875g;
    public long l;

    /* renamed from: c, reason: collision with root package name */
    public final y f1871c = new y();

    /* renamed from: d, reason: collision with root package name */
    public final u1.c0 f1872d = new u1.c0();

    /* renamed from: e, reason: collision with root package name */
    public final u1.c0 f1873e = new u1.c0();

    /* renamed from: f, reason: collision with root package name */
    public final f3.d f1874f = new f3.d();

    /* renamed from: h, reason: collision with root package name */
    public long f1876h = -9223372036854775807L;

    /* renamed from: k, reason: collision with root package name */
    public b1 f1879k = b1.f13418d;

    /* renamed from: i, reason: collision with root package name */
    public long f1877i = -9223372036854775807L;

    /* renamed from: j, reason: collision with root package name */
    public long f1878j = -9223372036854775807L;

    public d0(g1 g1Var, z zVar, a0 a0Var) {
        this.f1869a = g1Var;
        this.f1870b = zVar;
        this.f1875g = a0Var;
    }

    public final void a(long j10, long j11) {
        long j12;
        while (true) {
            f3.d dVar = this.f1874f;
            int i10 = dVar.f5469c;
            if (i10 == 0) {
                return;
            }
            if (i10 == 0) {
                throw new NoSuchElementException();
            }
            long j13 = ((long[]) dVar.f5471e)[dVar.f5467a];
            Long l = (Long) this.f1873e.f(j13);
            z zVar = this.f1870b;
            if (l != null && l.longValue() != this.l) {
                this.l = l.longValue();
                zVar.d(2);
            }
            long j14 = this.l;
            y yVar = this.f1871c;
            int iA = this.f1870b.a(j13, j10, j11, j14, false, false, yVar);
            if (iA == 5 || iA == 4) {
                j12 = j13;
            } else {
                j12 = j13;
                this.f1875g.a(j12, yVar.f1983b);
            }
            final g1 g1Var = this.f1869a;
            d dVar2 = (d) g1Var.f176c;
            if (iA == 0 || iA == 1) {
                this.f1877i = j12;
                boolean z = iA == 0;
                long jA = dVar.a();
                b1 b1Var = (b1) this.f1872d.f(jA);
                if (b1Var != null && !b1Var.equals(b1.f13418d) && !b1Var.equals(this.f1879k)) {
                    this.f1879k = b1Var;
                    r1.o oVar = new r1.o();
                    oVar.f13498u = b1Var.f13419a;
                    oVar.f13499v = b1Var.f13420b;
                    oVar.f13492n = r1.e0.l("video/raw");
                    g1Var.f175b = new r1.p(oVar);
                    dVar2.f1867i.execute(new a2.c0(g1Var, 4, b1Var));
                }
                long jNanoTime = z ? System.nanoTime() : yVar.f1984c;
                boolean z4 = zVar.f1989e != 3;
                zVar.f1989e = 3;
                zVar.l.getClass();
                zVar.f1991g = u1.f0.G(SystemClock.elapsedRealtime());
                if (z4 && dVar2.f1863e != null) {
                    final int i11 = 0;
                    dVar2.f1867i.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (i11) {
                                case 0:
                                    ((d) g1Var.f176c).f1866h.f();
                                    break;
                                default:
                                    ((d) g1Var.f176c).f1866h.p();
                                    break;
                            }
                        }
                    });
                }
                r1.p pVar = (r1.p) g1Var.f175b;
                dVar2.f1868j.c(jA, jNanoTime, pVar == null ? new r1.p(new r1.o()) : pVar, null);
                h hVar = (h) dVar2.f1862d.remove();
                hVar.f1905c.L0(hVar.f1903a, hVar.f1904b, jNanoTime);
            } else if (iA == 2 || iA == 3) {
                this.f1877i = j12;
                dVar.a();
                final int i12 = 1;
                dVar2.f1867i.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i12) {
                            case 0:
                                ((d) g1Var.f176c).f1866h.f();
                                break;
                            default:
                                ((d) g1Var.f176c).f1866h.p();
                                break;
                        }
                    }
                });
                h hVar2 = (h) dVar2.f1862d.remove();
                m mVar = hVar2.f1905c;
                mVar.getClass();
                Trace.beginSection("dropVideoBuffer");
                hVar2.f1903a.h(hVar2.f1904b);
                Trace.endSection();
                mVar.Q0(0, 1);
            } else {
                if (iA != 4) {
                    if (iA != 5) {
                        throw new IllegalStateException(String.valueOf(iA));
                    }
                    return;
                }
                this.f1877i = j12;
            }
        }
    }
}
