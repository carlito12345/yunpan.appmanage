package a2;

import android.content.Context;
import android.content.ContextWrapper;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.InvocationTargetException;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class n1 {

    /* renamed from: c0, reason: collision with root package name */
    public static final AtomicInteger f234c0 = new AtomicInteger();
    public long A;
    public long B;
    public long C;
    public int D;
    public boolean E;
    public boolean F;
    public long G;
    public float H;
    public ByteBuffer I;
    public int J;
    public ByteBuffer K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public int Q;
    public boolean R;
    public r1.e S;
    public AudioDeviceInfo T;
    public int U;
    public boolean V;
    public long W;
    public boolean X;
    public boolean Y;
    public long Z;

    /* renamed from: a, reason: collision with root package name */
    public final Context f235a;

    /* renamed from: a0, reason: collision with root package name */
    public long f236a0;

    /* renamed from: b, reason: collision with root package name */
    public final v3.f f237b;

    /* renamed from: b0, reason: collision with root package name */
    public Handler f238b0;

    /* renamed from: c, reason: collision with root package name */
    public final f1 f239c;

    /* renamed from: d, reason: collision with root package name */
    public final v1 f240d;

    /* renamed from: e, reason: collision with root package name */
    public final s1.s f241e;

    /* renamed from: f, reason: collision with root package name */
    public final u1 f242f;

    /* renamed from: g, reason: collision with root package name */
    public final u7.y0 f243g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayDeque f244h;

    /* renamed from: i, reason: collision with root package name */
    public int f245i;

    /* renamed from: j, reason: collision with root package name */
    public i1 f246j;

    /* renamed from: k, reason: collision with root package name */
    public final m1 f247k;
    public final m1 l;

    /* renamed from: m, reason: collision with root package name */
    public z1.i f248m;

    /* renamed from: n, reason: collision with root package name */
    public a1.i f249n;

    /* renamed from: o, reason: collision with root package name */
    public k1 f250o;

    /* renamed from: p, reason: collision with root package name */
    public k1 f251p;

    /* renamed from: q, reason: collision with root package name */
    public s1.h f252q;
    public y r;

    /* renamed from: s, reason: collision with root package name */
    public h1 f253s;

    /* renamed from: t, reason: collision with root package name */
    public a1 f254t;

    /* renamed from: u, reason: collision with root package name */
    public r1.d f255u;

    /* renamed from: v, reason: collision with root package name */
    public l1 f256v;

    /* renamed from: w, reason: collision with root package name */
    public l1 f257w;

    /* renamed from: x, reason: collision with root package name */
    public r1.h0 f258x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f259y;
    public long z;

    public n1(j1 j1Var) {
        int deviceId;
        ContextWrapper contextWrapper = j1Var.f197a;
        this.f235a = contextWrapper == null ? null : contextWrapper.getApplicationContext();
        this.f255u = r1.d.f13426d;
        this.f237b = j1Var.f199c;
        this.f245i = 0;
        this.r = j1Var.f202f;
        f1 f1Var = new f1();
        this.f239c = f1Var;
        v1 v1Var = new v1();
        this.f240d = v1Var;
        this.f241e = new s1.s();
        this.f242f = new u1();
        this.f243g = u7.g0.s(v1Var, f1Var);
        this.H = 1.0f;
        this.Q = 0;
        this.S = new r1.e();
        r1.h0 h0Var = r1.h0.f13451d;
        this.f257w = new l1(h0Var, 0L, 0L);
        this.f258x = h0Var;
        this.f259y = false;
        this.f244h = new ArrayDeque();
        this.f247k = new m1();
        this.l = new m1();
        int i10 = -1;
        if (Build.VERSION.SDK_INT >= 34 && contextWrapper != null && (deviceId = contextWrapper.getDeviceId()) != 0 && deviceId != -1) {
            i10 = deviceId;
        }
        this.U = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int i(ByteBuffer byteBuffer, int i10) {
        int i11;
        int i12;
        byte b10;
        int i13;
        byte b11;
        int i14;
        int i15;
        int i16;
        int i17;
        if (i10 == 20) {
            if ((byteBuffer.get(5) & 2) == 0) {
                i11 = 0;
            } else {
                byte b12 = byteBuffer.get(26);
                int i18 = 28;
                int i19 = 28;
                for (int i20 = 0; i20 < b12; i20++) {
                    i19 += byteBuffer.get(i20 + 27);
                }
                byte b13 = byteBuffer.get(i19 + 26);
                for (int i21 = 0; i21 < b13; i21++) {
                    i18 += byteBuffer.get(i19 + 27 + i21);
                }
                i11 = i19 + i18;
            }
            int i22 = byteBuffer.get(26 + i11) + 27 + i11;
            return (int) ((v1.o.e(byteBuffer.get(i22), byteBuffer.limit() - i22 > 1 ? byteBuffer.get(i22 + 1) : (byte) 0) * 48000) / 1000000);
        }
        if (i10 != 30) {
            switch (i10) {
                case 5:
                case 6:
                    break;
                case 7:
                case 8:
                    break;
                case 9:
                    int iPosition = byteBuffer.position();
                    String str = u1.f0.f15206a;
                    int iReverseBytes = byteBuffer.getInt(iPosition);
                    if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                        iReverseBytes = Integer.reverseBytes(iReverseBytes);
                    }
                    if ((iReverseBytes & (-2097152)) != -2097152 || (i15 = (iReverseBytes >>> 19) & 3) == 1 || (i16 = (iReverseBytes >>> 17) & 3) == 0) {
                        i14 = -1;
                    } else {
                        int i23 = (iReverseBytes >>> 12) & 15;
                        int i24 = (iReverseBytes >>> 10) & 3;
                        if (i23 != 0 && i23 != 15 && i24 != 3) {
                            i14 = 1152;
                            if (i16 != 1) {
                                if (i16 != 2) {
                                    if (i16 != 3) {
                                        throw new IllegalArgumentException();
                                    }
                                    i14 = 384;
                                }
                            } else if (i15 != 3) {
                                i14 = 576;
                            }
                        }
                    }
                    if (i14 != -1) {
                        return i14;
                    }
                    throw new IllegalArgumentException();
                case 10:
                    return 1024;
                case 11:
                case 12:
                    return 2048;
                default:
                    switch (i10) {
                        case 14:
                            int iPosition2 = byteBuffer.position();
                            int iLimit = byteBuffer.limit() - 10;
                            int i25 = iPosition2;
                            while (true) {
                                if (i25 <= iLimit) {
                                    String str2 = u1.f0.f15206a;
                                    int iReverseBytes2 = byteBuffer.getInt(i25 + 4);
                                    if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                        iReverseBytes2 = Integer.reverseBytes(iReverseBytes2);
                                    }
                                    if ((iReverseBytes2 & (-2)) == -126718022) {
                                        i17 = i25 - iPosition2;
                                    } else {
                                        i25++;
                                    }
                                } else {
                                    i17 = -1;
                                }
                            }
                            if (i17 == -1) {
                                return 0;
                            }
                            return (40 << ((byteBuffer.get((byteBuffer.position() + i17) + ((byteBuffer.get((byteBuffer.position() + i17) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7)) * 16;
                        case 15:
                            return 512;
                        case 16:
                            return 1024;
                        case 17:
                            byte[] bArr = new byte[16];
                            int iPosition3 = byteBuffer.position();
                            byteBuffer.get(bArr);
                            byteBuffer.position(iPosition3);
                            return l2.b.n(new j3.f(bArr, 16)).f1917c;
                        case 18:
                            break;
                        default:
                            throw new IllegalStateException(da.b.a(i10, "Unexpected audio encoding: "));
                    }
            }
            if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
                return l2.b.f10400c[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
            }
            return 1536;
        }
        if (byteBuffer.getInt(0) == -233094848 || byteBuffer.getInt(0) == -398277519) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == 622876772) {
            return 4096;
        }
        int iPosition4 = byteBuffer.position();
        byte b14 = byteBuffer.get(iPosition4);
        if (b14 != -2) {
            if (b14 == -1) {
                i12 = (byteBuffer.get(iPosition4 + 4) & 7) << 4;
                b11 = byteBuffer.get(iPosition4 + 7);
            } else if (b14 != 31) {
                i12 = (byteBuffer.get(iPosition4 + 4) & 1) << 6;
                b10 = byteBuffer.get(iPosition4 + 5);
            } else {
                i12 = (byteBuffer.get(5 + iPosition4) & 7) << 4;
                b11 = byteBuffer.get(iPosition4 + 6);
            }
            i13 = b11 & 60;
            return (((i13 >> 2) | i12) + 1) * 32;
        }
        i12 = (byteBuffer.get(5 + iPosition4) & 1) << 6;
        b10 = byteBuffer.get(iPosition4 + 4);
        i13 = b10 & 252;
        return (((i13 >> 2) | i12) + 1) * 32;
    }

    public final void a(long j10) {
        r1.h0 h0Var;
        boolean zW = w();
        boolean z = false;
        v3.f fVar = this.f237b;
        if (zW) {
            h0Var = r1.h0.f13451d;
        } else {
            if (v()) {
                h0Var = this.f258x;
                fVar.getClass();
                float f10 = h0Var.f13452a;
                s1.r rVar = (s1.r) fVar.f16476d;
                rVar.getClass();
                a9.o.k(f10 > 0.0f);
                if (rVar.f13952c != f10) {
                    rVar.f13952c = f10;
                    rVar.f13958i = true;
                }
                float f11 = h0Var.f13453b;
                a9.o.k(f11 > 0.0f);
                if (rVar.f13953d != f11) {
                    rVar.f13953d = f11;
                    rVar.f13958i = true;
                }
            } else {
                h0Var = r1.h0.f13451d;
            }
            this.f258x = h0Var;
        }
        r1.h0 h0Var2 = h0Var;
        if (v()) {
            z = this.f259y;
            ((s1) fVar.f16475c).f309o = z;
        }
        this.f259y = z;
        this.f244h.add(new l1(h0Var2, Math.max(0L, j10), u1.f0.K(((x) this.f251p.f210e).f351b, j())));
        s1.h hVar = (s1.h) this.f251p.f211f;
        this.f252q = hVar;
        hVar.b();
        a1.i iVar = this.f249n;
        if (iVar != null) {
            boolean z4 = this.f259y;
            j0 j0Var = ((q1) iVar.f76b).A1;
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new f0(j0Var, z4, 0));
            }
        }
    }

    public final a1 b(x xVar) throws m0 {
        try {
            return ((d1) this.r).a(xVar);
        } catch (v e7) {
            int i10 = xVar.f351b;
            r1.p pVar = (r1.p) this.f251p.f208c;
            m0 m0Var = new m0(i10, xVar.f352c, xVar.f350a, xVar.f355f, pVar, xVar.f354e, e7);
            a1.i iVar = this.f249n;
            if (iVar != null) {
                iVar.y(m0Var);
            }
            throw m0Var;
        }
    }

    public final void c(r1.p pVar, int[] iArr) throws l0 {
        r1.p pVar2;
        s1.h hVar;
        int i10;
        int iO;
        if (this.f253s == null && this.f235a != null) {
            h1 h1Var = new h1(this);
            this.f253s = h1Var;
            d1 d1Var = (d1) this.r;
            d1Var.f();
            if (d1Var.f121f == null) {
                d1Var.f121f = new u1.m(Thread.currentThread());
            }
            d1Var.f121f.a(h1Var);
        }
        if ("audio/raw".equals(pVar.f13523o)) {
            int i11 = pVar.I;
            a9.o.k(u1.f0.D(i11));
            int iO2 = u1.f0.o(i11);
            int i12 = pVar.G;
            i10 = iO2 * i12;
            u7.d0 d0Var = new u7.d0();
            d0Var.d(this.f243g);
            d0Var.b(this.f241e);
            s1.l[] lVarArr = (s1.l[]) this.f237b.f16474b;
            int length = lVarArr.length;
            u7.q.b(length, lVarArr);
            d0Var.e(length);
            System.arraycopy(lVarArr, 0, d0Var.f15424a, d0Var.f15425b, length);
            d0Var.f15425b += length;
            hVar = new s1.h(d0Var.g());
            if (hVar.equals(this.f252q)) {
                hVar = this.f252q;
            }
            int i13 = pVar.J;
            v1 v1Var = this.f240d;
            v1Var.f328i = i13;
            v1Var.f329j = pVar.K;
            this.f239c.f161i = iArr;
            try {
                s1.i iVarA = hVar.a(new s1.i(pVar.H, i12, i11));
                r1.o oVar = new r1.o(pVar);
                int i14 = iVarA.f13907c;
                oVar.H = i14;
                oVar.G = iVarA.f13905a;
                int i15 = iVarA.f13906b;
                oVar.F = i15;
                pVar2 = new r1.p(oVar);
                iO = u1.f0.o(i14) * i15;
            } catch (s1.k e7) {
                throw new l0(e7, pVar);
            }
        } else {
            pVar2 = pVar;
            hVar = new s1.h(u7.y0.f15549e);
            i10 = -1;
            iO = -1;
        }
        s sVarG = g(pVar2, -1);
        try {
            x xVarC = ((d1) this.r).c(sVarG);
            int i16 = xVarC.f350a;
            r1.p pVar3 = sVarG.f296a;
            boolean z = xVarC.f354e;
            if (i16 == 0) {
                throw new l0("Invalid output encoding (isOffload=" + z + ")", pVar3);
            }
            if (xVarC.f352c == 0) {
                throw new l0("Invalid output channel config (isOffload=" + z + ")", pVar3);
            }
            this.X = false;
            k1 k1Var = new k1(pVar, pVar2, i10, iO, xVarC, hVar);
            if (n()) {
                this.f250o = k1Var;
            } else {
                this.f251p = k1Var;
            }
        } catch (r e10) {
            throw new l0(e10, pVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(long j10) throws o0 {
        a1.i iVar;
        y1.b0 b0Var;
        if (this.K == null) {
            return;
        }
        m1 m1Var = this.l;
        if (m1Var.f230a != null && (f234c0.get() > 0 || SystemClock.elapsedRealtime() < m1Var.f232c)) {
            return;
        }
        int iRemaining = this.K.remaining();
        try {
            boolean zE = this.f254t.e(j10, this.J, this.K);
            this.W = SystemClock.elapsedRealtime();
            m1Var.f230a = null;
            m1Var.f231b = -9223372036854775807L;
            m1Var.f232c = -9223372036854775807L;
            if (this.f254t.c()) {
                if (this.C > 0) {
                    this.Y = false;
                }
                if (this.O && (iVar = this.f249n) != null && !zE && !this.Y && (b0Var = ((q1) iVar.f76b).L) != null) {
                    b0Var.f18583a.Y = true;
                }
            }
            if (k1.a(this.f251p)) {
                this.B += iRemaining - this.K.remaining();
            }
            if (zE) {
                if (!k1.a(this.f251p)) {
                    a9.o.t(this.K == this.I);
                    this.C = (this.D * this.J) + this.C;
                }
                this.K = null;
            }
        } catch (q e7) {
            boolean z = e7.f273b;
            if (!z) {
                z = false;
            } else if (j() <= 0) {
                if (this.f254t.c()) {
                    if (((x) this.f251p.f210e).f354e) {
                        this.X = true;
                    }
                }
            }
            o0 o0Var = new o0(e7.f272a, (r1.p) this.f251p.f208c, z);
            a1.i iVar2 = this.f249n;
            if (iVar2 != null) {
                iVar2.y(o0Var);
            }
            if (z) {
                throw o0Var;
            }
            m1Var.a(o0Var);
        }
    }

    public final boolean e() throws o0 {
        if (!this.f252q.e()) {
            d(Long.MIN_VALUE);
            return this.K == null;
        }
        s1.h hVar = this.f252q;
        if (hVar.e() && !hVar.f13903d) {
            hVar.f13903d = true;
            ((s1.l) hVar.f13901b.get(0)).f();
        }
        q(Long.MIN_VALUE);
        if (!this.f252q.d()) {
            return false;
        }
        ByteBuffer byteBuffer = this.K;
        return byteBuffer == null || !byteBuffer.hasRemaining();
    }

    public final void f() throws IllegalStateException {
        w0 w0Var;
        if (n()) {
            this.z = 0L;
            this.A = 0L;
            this.B = 0L;
            this.C = 0L;
            this.Y = false;
            this.D = 0;
            this.f257w = new l1(this.f258x, 0L, 0L);
            this.G = 0L;
            this.f256v = null;
            this.f244h.clear();
            this.I = null;
            this.J = 0;
            this.K = null;
            this.M = false;
            this.L = false;
            this.N = false;
            this.f240d.f333o = 0L;
            s1.h hVar = (s1.h) this.f251p.f211f;
            this.f252q = hVar;
            hVar.b();
            this.f246j = null;
            k1 k1Var = this.f250o;
            if (k1Var != null) {
                this.f251p = k1Var;
                this.f250o = null;
            }
            f234c0.incrementAndGet();
            a1 a1Var = this.f254t;
            if (a1Var.f88f.f134d.getPlayState() == 3) {
                a1Var.f83a.pause();
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29 && a1Var.c()) {
                v3.f fVar = a1Var.f91i;
                fVar.getClass();
                ((a1) fVar.f16476d).f83a.unregisterStreamEventCallback((z0) fVar.f16475c);
                ((Handler) fVar.f16474b).removeCallbacksAndMessages(null);
            }
            if (i10 >= 24 && (w0Var = a1Var.f87e) != null) {
                v0 v0Var = (v0) w0Var.f349e;
                v0Var.getClass();
                ((AudioTrack) w0Var.f346b).removeOnRoutingChangedListener(s0.h(v0Var));
                w0Var.f349e = null;
                a1Var.f87e = null;
            }
            AudioTrack audioTrack = a1Var.f83a;
            u1.m mVar = a1Var.f92j;
            Handler handlerK = u1.f0.k(null);
            synchronized (a1.f80t) {
                try {
                    if (a1.f81u == null) {
                        a1.f81u = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: u1.e0
                            @Override // java.util.concurrent.ThreadFactory
                            public final Thread newThread(Runnable runnable) {
                                return new Thread(runnable, "ExoPlayer:AudioTrackReleaseThread");
                            }
                        });
                    }
                    a1.f82v++;
                    a1.f81u.schedule(new e0(audioTrack, handlerK, mVar, 1), 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f254t = null;
        }
        m1 m1Var = this.l;
        m1Var.f230a = null;
        m1Var.f231b = -9223372036854775807L;
        m1Var.f232c = -9223372036854775807L;
        m1 m1Var2 = this.f247k;
        m1Var2.f230a = null;
        m1Var2.f231b = -9223372036854775807L;
        m1Var2.f232c = -9223372036854775807L;
        this.Z = 0L;
        this.f236a0 = 0L;
        Handler handler = this.f238b0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public final s g(r1.p pVar, int i10) {
        s sVar = new s(pVar);
        sVar.f297b = this.f255u;
        sVar.f299d = this.f245i != 0;
        sVar.f298c = this.T;
        sVar.f300e = this.Q;
        sVar.f302g = this.V;
        sVar.f303h = i10;
        sVar.f301f = this.U;
        return new s(sVar);
    }

    public final int h(r1.p pVar) {
        boolean z;
        if (!u1.f0.D(pVar.I) || pVar.I == 2) {
            z = false;
        } else {
            r1.o oVar = new r1.o(pVar);
            oVar.H = 2;
            pVar = new r1.p(oVar);
            z = true;
        }
        int i10 = ((d1) this.r).b(g(pVar, -1)).f324d;
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 2) {
            return 0;
        }
        return z ? 1 : 2;
    }

    public final long j() {
        if (!k1.a(this.f251p)) {
            return this.C;
        }
        long j10 = this.B;
        long j11 = this.f251p.f207b;
        return ((j10 + j11) - 1) / j11;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(long j10, int i10, ByteBuffer byteBuffer) throws o0, IllegalStateException, m0 {
        ByteBuffer byteBuffer2 = this.I;
        a9.o.k(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f250o != null) {
            if (!e()) {
                return false;
            }
            if (this.f254t != null) {
                x xVar = (x) this.f251p.f210e;
                g((r1.p) this.f250o.f209d, -1);
                if (((x) this.f250o.f210e).equals(xVar)) {
                    this.f251p = this.f250o;
                    this.f250o = null;
                    a1 a1Var = this.f254t;
                    if (a1Var != null && a1Var.c() && ((x) this.f251p.f210e).f360k) {
                        a1 a1Var2 = this.f254t;
                        int i11 = Build.VERSION.SDK_INT;
                        if (i11 < 29) {
                            a1Var2.getClass();
                        } else {
                            AudioTrack audioTrack = a1Var2.f83a;
                            if (audioTrack.getPlayState() == 3) {
                                audioTrack.setOffloadEndOfStream();
                                e1 e1Var = a1Var2.f88f;
                                e1Var.A = true;
                                e1Var.f138h.f282a.f279f = true;
                            }
                        }
                        a1 a1Var3 = this.f254t;
                        r1.p pVar = (r1.p) this.f251p.f208c;
                        int i12 = pVar.J;
                        if (i11 < 29) {
                            a1Var3.getClass();
                        } else {
                            a1Var3.f83a.setOffloadDelayPadding(i12, pVar.K);
                        }
                        this.Y = true;
                    }
                } else {
                    p();
                    if (l()) {
                        return false;
                    }
                    f();
                }
                a(j10);
            }
        }
        boolean zN = n();
        m1 m1Var = this.f247k;
        if (!zN) {
            try {
                if (!m()) {
                    return false;
                }
            } catch (m0 e7) {
                if (e7.f229a) {
                    throw e7;
                }
                m1Var.a(e7);
                return false;
            }
        }
        m1Var.f230a = null;
        m1Var.f231b = -9223372036854775807L;
        m1Var.f232c = -9223372036854775807L;
        if (this.F) {
            this.G = Math.max(0L, j10);
            this.E = false;
            this.F = false;
            if (w()) {
                t();
            }
            a(j10);
            if (this.O) {
                o();
            }
        }
        if (this.I == null) {
            a9.o.k(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (!k1.a(this.f251p) && this.D == 0) {
                int i13 = i(byteBuffer, ((x) this.f251p.f210e).f350a);
                this.D = i13;
                if (i13 == 0) {
                    return true;
                }
            }
            if (this.f256v != null) {
                if (!e()) {
                    return false;
                }
                a(j10);
                this.f256v = null;
            }
            long j11 = this.G;
            k1 k1Var = this.f251p;
            long jK = u1.f0.K(((r1.p) k1Var.f208c).H, (k1.a(k1Var) ? this.z / this.f251p.f206a : this.A) - this.f240d.f333o) + j11;
            if (!this.E && Math.abs(jK - j10) > 200000) {
                a1.i iVar = this.f249n;
                if (iVar != null) {
                    iVar.y(new n0(j10, jK));
                }
                this.E = true;
            }
            if (this.E) {
                if (!e()) {
                    return false;
                }
                long j12 = j10 - jK;
                this.G += j12;
                this.E = false;
                a(j10);
                a1.i iVar2 = this.f249n;
                if (iVar2 != null && j12 != 0) {
                    ((q1) iVar2.f76b).J1 = true;
                }
            }
            if (k1.a(this.f251p)) {
                this.z += byteBuffer.remaining();
            } else {
                this.A = (this.D * i10) + this.A;
            }
            this.I = byteBuffer;
            this.J = i10;
        }
        q(j10);
        if (!this.I.hasRemaining()) {
            this.I = null;
            this.J = 0;
            return true;
        }
        a1 a1Var4 = this.f254t;
        long jB = a1Var4.b();
        e1 e1Var2 = a1Var4.f88f;
        if (e1Var2.f150v != -9223372036854775807L && jB > 0) {
            e1Var2.f132b.getClass();
            if (SystemClock.elapsedRealtime() - e1Var2.f150v >= 200) {
                u1.a.p("Resetting stalled audio output");
                f();
                return true;
            }
        }
        return false;
    }

    public final boolean l() {
        if (n() && (Build.VERSION.SDK_INT < 29 || !this.f254t.c() || !this.N)) {
            long j10 = j();
            long jA = this.f254t.a();
            this.f254t.getClass();
            if (j10 > u1.f0.M(jA, r2.f83a.getSampleRate(), 1000000L, RoundingMode.UP)) {
                return true;
            }
        }
        return false;
    }

    public final boolean m() throws IllegalAccessException, IllegalArgumentException, m0, InvocationTargetException {
        a1 a1VarB;
        v3.f fVar;
        int i10 = 0;
        m1 m1Var = this.f247k;
        if (m1Var.f230a != null && (f234c0.get() > 0 || SystemClock.elapsedRealtime() < m1Var.f232c)) {
            return false;
        }
        try {
            a1VarB = b((x) this.f251p.f210e);
        } catch (m0 e7) {
            int i11 = ((x) this.f251p.f210e).f355f;
            while (i11 > 1000000) {
                i11 /= 2;
                k1 k1Var = this.f251p;
                int i12 = k1Var.f207b;
                if (i12 == -1) {
                    i12 = 1;
                }
                int i13 = i11 % i12;
                if (i13 != 0) {
                    i11 = (i12 - i13) + i11;
                }
                x xVar = (x) k1Var.f210e;
                xVar.getClass();
                w wVar = new w(xVar);
                wVar.f339f = i11;
                x xVar2 = new x(wVar);
                try {
                    a1 a1VarB2 = b(xVar2);
                    k1 k1Var2 = this.f251p;
                    this.f251p = new k1((r1.p) k1Var2.f208c, (r1.p) k1Var2.f209d, k1Var2.f206a, k1Var2.f207b, xVar2, (s1.h) k1Var2.f211f);
                    a1VarB = a1VarB2;
                } catch (m0 e10) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e7, e10);
                    } catch (Exception unused) {
                    }
                }
            }
            if (((x) this.f251p.f210e).f354e) {
                this.X = true;
            }
            throw e7;
        }
        this.f254t = a1VarB;
        i1 i1Var = new i1(this, (x) this.f251p.f210e);
        this.f246j = i1Var;
        a1VarB.f92j.a(i1Var);
        if (this.f254t.c()) {
            k1 k1Var3 = this.f251p;
            if (((x) k1Var3.f210e).f360k) {
                a1 a1Var = this.f254t;
                r1.p pVar = (r1.p) k1Var3.f208c;
                int i14 = pVar.J;
                if (Build.VERSION.SDK_INT < 29) {
                    a1Var.getClass();
                } else {
                    a1Var.f83a.setOffloadDelayPadding(i14, pVar.K);
                }
            }
        }
        z1.i iVar = this.f248m;
        if (iVar != null) {
            a1 a1Var2 = this.f254t;
            a1Var2.getClass();
            if (Build.VERSION.SDK_INT >= 31) {
                LogSessionId logSessionIdA = iVar.a();
                if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                    a1Var2.f83a.setLogSessionId(logSessionIdA);
                }
            }
        }
        if (n()) {
            this.f254t.f83a.setVolume(this.H);
        }
        this.S.getClass();
        AudioDeviceInfo audioDeviceInfo = this.T;
        if (audioDeviceInfo != null) {
            this.f254t.f83a.setPreferredDevice(audioDeviceInfo);
        }
        this.F = true;
        int audioSessionId = this.f254t.f83a.getAudioSessionId();
        boolean z = audioSessionId != this.Q;
        this.Q = audioSessionId;
        a1.i iVar2 = this.f249n;
        if (iVar2 != null) {
            int i15 = ((x) this.f251p.f210e).f350a;
            k0 k0Var = new k0();
            j0 j0Var = ((q1) iVar2.f76b).A1;
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new z(j0Var, k0Var, i10));
            }
            if (z) {
                this.R = true;
                k1 k1Var4 = this.f251p;
                x xVar3 = (x) k1Var4.f210e;
                xVar3.getClass();
                w wVar2 = new w(xVar3);
                wVar2.f341h = this.Q;
                this.f251p = new k1((r1.p) k1Var4.f208c, (r1.p) k1Var4.f209d, k1Var4.f206a, k1Var4.f207b, new x(wVar2), (s1.h) k1Var4.f211f);
                k1 k1Var5 = this.f250o;
                if (k1Var5 != null) {
                    x xVar4 = (x) k1Var5.f210e;
                    xVar4.getClass();
                    w wVar3 = new w(xVar4);
                    wVar3.f341h = this.Q;
                    this.f250o = new k1((r1.p) k1Var5.f208c, (r1.p) k1Var5.f209d, k1Var5.f206a, k1Var5.f207b, new x(wVar3), (s1.h) k1Var5.f211f);
                }
                a1.i iVar3 = this.f249n;
                int i16 = this.Q;
                int i17 = Build.VERSION.SDK_INT;
                q1 q1Var = (q1) iVar3.f76b;
                if (i17 >= 35 && (fVar = q1Var.C1) != null) {
                    fVar.N(i16);
                }
                j0 j0Var2 = q1Var.A1;
                Handler handler2 = j0Var2.f195b;
                if (handler2 != null) {
                    handler2.post(new g0(i16, 0, j0Var2));
                }
            }
        }
        return true;
    }

    public final boolean n() {
        return this.f254t != null;
    }

    public final void o() throws IllegalStateException {
        this.O = true;
        if (n()) {
            a1 a1Var = this.f254t;
            e1 e1Var = a1Var.f88f;
            if (e1Var.f149u != -9223372036854775807L) {
                e1Var.f132b.getClass();
                e1Var.f149u = u1.f0.G(SystemClock.elapsedRealtime());
            }
            e1Var.f140j = u1.f0.K(e1Var.f135e, e1Var.a());
            e1Var.f138h.a(0);
            if (!a1Var.f93k || a1Var.c()) {
                a1Var.f83a.play();
            }
        }
    }

    public final void p() throws IllegalStateException {
        if (this.M) {
            return;
        }
        this.M = true;
        if (this.f254t.c()) {
            this.N = false;
        }
        a1 a1Var = this.f254t;
        if (a1Var.f93k) {
            return;
        }
        a1Var.f93k = true;
        long jB = a1Var.b();
        e1 e1Var = a1Var.f88f;
        e1Var.f151w = e1Var.a();
        e1Var.f132b.getClass();
        e1Var.f149u = u1.f0.G(SystemClock.elapsedRealtime());
        e1Var.f152x = jB;
        a1Var.f83a.stop();
        a1Var.f97p = 0;
    }

    public final void q(long j10) throws o0 {
        ByteBuffer byteBuffer;
        d(j10);
        if (this.K != null) {
            return;
        }
        if (!this.f252q.e()) {
            ByteBuffer byteBuffer2 = this.I;
            if (byteBuffer2 != null) {
                u(byteBuffer2);
                d(j10);
                return;
            }
            return;
        }
        while (!this.f252q.d()) {
            do {
                s1.h hVar = this.f252q;
                if (hVar.e()) {
                    ByteBuffer byteBuffer3 = hVar.f13902c[hVar.c()];
                    if (byteBuffer3.hasRemaining()) {
                        byteBuffer = byteBuffer3;
                    } else {
                        hVar.f(s1.l.f13911a);
                        byteBuffer = hVar.f13902c[hVar.c()];
                    }
                } else {
                    byteBuffer = s1.l.f13911a;
                }
                if (byteBuffer.hasRemaining()) {
                    u(byteBuffer);
                    d(j10);
                } else {
                    ByteBuffer byteBuffer4 = this.I;
                    if (byteBuffer4 == null || !byteBuffer4.hasRemaining()) {
                        return;
                    }
                    s1.h hVar2 = this.f252q;
                    ByteBuffer byteBuffer5 = this.I;
                    if (hVar2.e() && !hVar2.f13903d) {
                        hVar2.f(byteBuffer5);
                    }
                }
            } while (this.K == null);
            return;
        }
    }

    public final void r() throws IllegalStateException {
        if (this.f251p != null) {
            k1 k1Var = this.f250o;
            if (k1Var != null) {
                this.f251p = k1Var;
                this.f250o = null;
            }
            try {
                x xVarC = ((d1) this.r).c(g((r1.p) this.f251p.f209d, -1));
                k1 k1Var2 = this.f251p;
                this.f251p = new k1((r1.p) k1Var2.f208c, (r1.p) k1Var2.f209d, k1Var2.f206a, k1Var2.f207b, xVarC, (s1.h) k1Var2.f211f);
            } catch (r e7) {
                throw new IllegalStateException(new l0(e7, (r1.p) this.f251p.f208c));
            }
        }
        f();
    }

    public final void s() throws IllegalStateException {
        f();
        u7.e0 e0VarListIterator = this.f243g.listIterator(0);
        while (e0VarListIterator.hasNext()) {
            ((s1.l) e0VarListIterator.next()).reset();
        }
        this.f241e.reset();
        this.f242f.reset();
        s1.h hVar = this.f252q;
        if (hVar != null) {
            int i10 = 0;
            while (true) {
                u7.y0 y0Var = hVar.f13900a;
                if (i10 >= y0Var.size()) {
                    break;
                }
                s1.l lVar = (s1.l) y0Var.get(i10);
                lVar.d(s1.j.f13909b);
                lVar.reset();
                i10++;
            }
            hVar.f13901b.clear();
            hVar.f13902c = new ByteBuffer[0];
            s1.i iVar = s1.i.f13904e;
            hVar.f13903d = false;
        }
        this.O = false;
        this.X = false;
    }

    public final void t() {
        if (n()) {
            this.f254t.d(this.f258x);
            PlaybackParams playbackParams = this.f254t.f83a.getPlaybackParams();
            this.f258x = new r1.h0(playbackParams.getSpeed(), playbackParams.getPitch());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0242 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferOrder;
        int i10;
        byte b10;
        int i11;
        int i12;
        float f10;
        double d10;
        a9.o.t(this.K == null);
        if (byteBuffer.hasRemaining()) {
            if (k1.a(this.f251p)) {
                int iM = (int) u1.f0.M(u1.f0.G(20L), ((x) this.f251p.f210e).f351b, 1000000L, RoundingMode.UP);
                long j10 = j();
                long j11 = iM;
                if (j10 < j11) {
                    k1 k1Var = this.f251p;
                    int i13 = ((x) k1Var.f210e).f350a;
                    int i14 = (int) j10;
                    byteBufferOrder = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
                    int iPosition = byteBuffer.position();
                    while (byteBuffer.hasRemaining() && i14 < iM) {
                        if (i13 != 2) {
                            if (i13 == 3) {
                                i12 = (byteBuffer.get() & 255) << 24;
                            } else if (i13 == 4) {
                                float f11 = u1.f0.f(byteBuffer.getFloat(), -1.0f, 1.0f);
                                if (f11 < 0.0f) {
                                    f11 = -f11;
                                    f10 = -2.14748365E9f;
                                } else {
                                    f10 = 2.14748365E9f;
                                }
                                i12 = (int) (f11 * f10);
                            } else if (i13 == 21) {
                                i10 = ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                b10 = byteBuffer.get();
                            } else if (i13 != 22) {
                                if (i13 == 268435456) {
                                    i10 = (byteBuffer.get() & 255) << 24;
                                    i11 = (byteBuffer.get() & 255) << 16;
                                } else if (i13 == 1342177280) {
                                    i10 = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
                                    i11 = (byteBuffer.get() & 255) << 8;
                                } else if (i13 == 1610612736) {
                                    i10 = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8);
                                    i11 = byteBuffer.get() & 255;
                                } else {
                                    if (i13 != 1879048192) {
                                        throw new IllegalStateException();
                                    }
                                    double dMax = Math.max(-1.0d, Math.min(byteBuffer.getDouble(), 1.0d));
                                    if (dMax < 0.0d) {
                                        dMax = -dMax;
                                        d10 = -2.147483648E9d;
                                    } else {
                                        d10 = 2.147483647E9d;
                                    }
                                    i12 = (int) (dMax * d10);
                                }
                                i12 = i10 | i11;
                            } else {
                                i10 = (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                b10 = byteBuffer.get();
                            }
                            int i15 = (int) ((i12 * i14) / j11);
                            if (i13 != 2) {
                                byteBufferOrder.put((byte) (i15 >> 16));
                                byteBufferOrder.put((byte) (i15 >> 24));
                            } else if (i13 == 3) {
                                byteBufferOrder.put((byte) (i15 >> 24));
                            } else if (i13 != 4) {
                                if (i13 == 21) {
                                    byteBufferOrder.put((byte) (i15 >> 8));
                                    byteBufferOrder.put((byte) (i15 >> 16));
                                    byteBufferOrder.put((byte) (i15 >> 24));
                                } else if (i13 == 22) {
                                    byteBufferOrder.put((byte) i15);
                                    byteBufferOrder.put((byte) (i15 >> 8));
                                    byteBufferOrder.put((byte) (i15 >> 16));
                                    byteBufferOrder.put((byte) (i15 >> 24));
                                } else if (i13 == 268435456) {
                                    byteBufferOrder.put((byte) (i15 >> 24));
                                    byteBufferOrder.put((byte) (i15 >> 16));
                                } else if (i13 == 1342177280) {
                                    byteBufferOrder.put((byte) (i15 >> 24));
                                    byteBufferOrder.put((byte) (i15 >> 16));
                                    byteBufferOrder.put((byte) (i15 >> 8));
                                } else if (i13 == 1610612736) {
                                    byteBufferOrder.put((byte) (i15 >> 24));
                                    byteBufferOrder.put((byte) (i15 >> 16));
                                    byteBufferOrder.put((byte) (i15 >> 8));
                                    byteBufferOrder.put((byte) i15);
                                } else {
                                    if (i13 != 1879048192) {
                                        throw new IllegalStateException();
                                    }
                                    if (i15 < 0) {
                                        double d11 = i15;
                                        Double.isNaN(d11);
                                        byteBufferOrder.putDouble((-d11) / (-2.147483648E9d));
                                    } else {
                                        double d12 = i15;
                                        Double.isNaN(d12);
                                        byteBufferOrder.putDouble(d12 / 2.147483647E9d);
                                    }
                                }
                            } else if (i15 < 0) {
                                byteBufferOrder.putFloat((-i15) / (-2.14748365E9f));
                            } else {
                                byteBufferOrder.putFloat(i15 / 2.14748365E9f);
                            }
                            if (byteBuffer.position() != k1Var.f207b + iPosition) {
                                i14++;
                                iPosition = byteBuffer.position();
                            }
                        } else {
                            i10 = (byteBuffer.get() & 255) << 16;
                            b10 = byteBuffer.get();
                        }
                        i11 = (b10 & 255) << 24;
                        i12 = i10 | i11;
                        int i152 = (int) ((i12 * i14) / j11);
                        if (i13 != 2) {
                        }
                        if (byteBuffer.position() != k1Var.f207b + iPosition) {
                        }
                    }
                    byteBufferOrder.put(byteBuffer);
                    byteBufferOrder.flip();
                }
            } else {
                byteBufferOrder = byteBuffer;
            }
            this.K = byteBufferOrder;
        }
    }

    public final boolean v() {
        if (this.V || !k1.a(this.f251p)) {
            return false;
        }
        int i10 = ((r1.p) this.f251p.f208c).I;
        return true;
    }

    public final boolean w() {
        k1 k1Var = this.f251p;
        return k1Var != null && ((x) k1Var.f210e).f359j;
    }
}
