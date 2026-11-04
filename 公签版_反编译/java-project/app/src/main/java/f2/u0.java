package f2;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import ha.j2;
import ha.jd;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class u0 implements a0, l2.q, i2.g {
    public static final Map X;
    public static final r1.p Y;
    public boolean A;
    public boolean B;
    public a2.w0 C;
    public l2.c0 D;
    public long E;
    public boolean F;
    public int G;
    public final long H = Long.MIN_VALUE;
    public boolean I;
    public boolean K;
    public boolean L;
    public int M;
    public boolean N;
    public long O;
    public long P;
    public boolean R;
    public int S;
    public boolean T;
    public boolean V;

    /* renamed from: a, reason: collision with root package name */
    public final Uri f5392a;

    /* renamed from: b, reason: collision with root package name */
    public final w1.h f5393b;

    /* renamed from: c, reason: collision with root package name */
    public final b2.g f5394c;

    /* renamed from: d, reason: collision with root package name */
    public final j2 f5395d;

    /* renamed from: e, reason: collision with root package name */
    public final b2.d f5396e;

    /* renamed from: f, reason: collision with root package name */
    public final b2.d f5397f;

    /* renamed from: g, reason: collision with root package name */
    public final x0 f5398g;

    /* renamed from: h, reason: collision with root package name */
    public final s4.a f5399h;

    /* renamed from: i, reason: collision with root package name */
    public final long f5400i;

    /* renamed from: j, reason: collision with root package name */
    public final r1.p f5401j;

    /* renamed from: k, reason: collision with root package name */
    public final long f5402k;
    public final i2.j l;

    /* renamed from: m, reason: collision with root package name */
    public final v3.f f5403m;

    /* renamed from: n, reason: collision with root package name */
    public final u1.e f5404n;

    /* renamed from: p, reason: collision with root package name */
    public final n0 f5405p;

    /* renamed from: q, reason: collision with root package name */
    public final n0 f5406q;
    public final Handler r;

    /* renamed from: s, reason: collision with root package name */
    public z f5407s;

    /* renamed from: t, reason: collision with root package name */
    public y2.b f5408t;

    /* renamed from: v, reason: collision with root package name */
    public q0[] f5409v;

    /* renamed from: w, reason: collision with root package name */
    public b1[] f5410w;

    /* renamed from: x, reason: collision with root package name */
    public t0[] f5411x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5412y;
    public boolean z;

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        X = Collections.unmodifiableMap(map);
        r1.o oVar = new r1.o();
        oVar.f13480a = "icy";
        oVar.f13492n = r1.e0.l("application/x-icy");
        Y = new r1.p(oVar);
    }

    public u0(Uri uri, w1.h hVar, v3.f fVar, b2.g gVar, b2.d dVar, j2 j2Var, b2.d dVar2, x0 x0Var, s4.a aVar, int i10, r1.p pVar, long j10, j2.a aVar2) {
        i2.j jVar;
        this.f5392a = uri;
        this.f5393b = hVar;
        this.f5394c = gVar;
        this.f5397f = dVar;
        this.f5395d = j2Var;
        this.f5396e = dVar2;
        this.f5398g = x0Var;
        this.f5399h = aVar;
        this.f5400i = i10;
        this.f5401j = pVar;
        if (aVar2 != null) {
            jVar = new i2.j(aVar2);
        } else {
            String strConcat = "ExoPlayer:Loader:".concat("ProgressiveMediaPeriod");
            String str = u1.f0.f15206a;
            jVar = new i2.j(new j2.a(Executors.newSingleThreadExecutor(new androidx.emoji2.text.a(strConcat, 1)), new jd(9)));
        }
        this.l = jVar;
        this.f5403m = fVar;
        this.f5402k = j10;
        this.f5404n = new u1.e();
        this.f5405p = new n0(this, 1);
        this.f5406q = new n0(this, 2);
        this.r = u1.f0.k(null);
        this.f5411x = new t0[0];
        this.f5410w = new b1[0];
        this.f5409v = new q0[0];
        this.P = -9223372036854775807L;
        this.G = 1;
    }

    public final void A(int i10) {
        t();
        if (this.R) {
            if ((!this.A || ((boolean[]) this.C.f347c)[i10]) && !this.f5410w[i10].o(false)) {
                this.P = 0L;
                this.R = false;
                this.K = true;
                this.O = 0L;
                this.S = 0;
                for (b1 b1Var : this.f5410w) {
                    b1Var.r(false);
                }
                z zVar = this.f5407s;
                zVar.getClass();
                zVar.b(this);
            }
        }
    }

    public final l2.j0 B(t0 t0Var) {
        int length = this.f5410w.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (t0Var.equals(this.f5411x[i10])) {
                return this.f5410w[i10];
            }
        }
        if (this.f5412y) {
            u1.a.p("Extractor added new track (id=" + t0Var.f5383a + ") after finishing tracks.");
            return new l2.n();
        }
        b2.g gVar = this.f5394c;
        gVar.getClass();
        b1 b1Var = new b1(this.f5399h, gVar, this.f5397f);
        q0 q0Var = new q0(b1Var);
        b1Var.f5210f = this;
        int i11 = length + 1;
        t0[] t0VarArr = (t0[]) Arrays.copyOf(this.f5411x, i11);
        t0VarArr[length] = t0Var;
        this.f5411x = t0VarArr;
        b1[] b1VarArr = (b1[]) Arrays.copyOf(this.f5410w, i11);
        b1VarArr[length] = b1Var;
        this.f5410w = b1VarArr;
        q0[] q0VarArr = (q0[]) Arrays.copyOf(this.f5409v, i11);
        q0VarArr[length] = q0Var;
        this.f5409v = q0VarArr;
        return q0Var;
    }

    public final void C(l2.c0 c0Var) {
        this.D = this.f5408t == null ? c0Var : new l2.s(-9223372036854775807L);
        this.E = c0Var.h();
        boolean z = !this.N && c0Var.h() == -9223372036854775807L;
        this.F = z;
        this.G = z ? 7 : 1;
        if (this.z) {
            this.f5398g.t(this.E, c0Var, z);
        } else {
            x();
        }
    }

    public final void D() {
        r0 r0Var = new r0(this, this.f5392a, this.f5393b, this.f5403m, this, this.f5404n);
        if (this.z) {
            a9.o.t(w());
            long j10 = this.H;
            if (j10 == Long.MIN_VALUE) {
                j10 = this.E;
            }
            if (j10 != -9223372036854775807L && this.P > j10) {
                this.T = true;
                this.P = -9223372036854775807L;
                return;
            }
            l2.c0 c0Var = this.D;
            c0Var.getClass();
            long j11 = c0Var.f(this.P).f10421a.f10443b;
            long j12 = this.P;
            r0Var.f5368g.f4591b = j11;
            r0Var.f5371j = j12;
            r0Var.f5370i = true;
            r0Var.f5373m = false;
            for (b1 b1Var : this.f5410w) {
                b1Var.f5222t = this.P;
            }
            this.P = -9223372036854775807L;
        }
        this.S = u();
        int iD = this.f5395d.d(this.G);
        i2.j jVar = this.l;
        jVar.getClass();
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        jVar.f8472c = null;
        i2.h hVar = new i2.h(jVar, looperMyLooper, r0Var, this, iD, SystemClock.elapsedRealtime());
        a9.o.t(jVar.f8471b == null);
        jVar.f8471b = hVar;
        hVar.b();
    }

    public final boolean E() {
        return this.K || w();
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        if (this.T) {
            return false;
        }
        i2.j jVar = this.l;
        if (jVar.f8472c != null || this.R) {
            return false;
        }
        if ((this.z || this.f5401j != null) && this.M == 0) {
            return false;
        }
        boolean zE = this.f5404n.e();
        if (jVar.a()) {
            return zE;
        }
        D();
        return true;
    }

    @Override // i2.g
    public final void b(r0 r0Var, long j10, long j11, int i10) {
        t tVar;
        w1.w wVar = r0Var.f5364c;
        if (i10 == 0) {
            w1.j jVar = r0Var.f5372k;
            long j12 = r0Var.f5362a;
            tVar = new t(jVar, jVar.f17367a, Collections.emptyMap(), j10, 0L);
        } else {
            tVar = new t(r0Var.f5372k, wVar.f17412c, wVar.f17413d, j10, wVar.f17411b);
        }
        long j13 = r0Var.f5371j;
        long j14 = this.E;
        b2.d dVar = this.f5396e;
        dVar.a(new e0(dVar, tVar, new y(-1, null, u1.f0.R(j13), u1.f0.R(j14)), i10, 0));
    }

    @Override // f2.d1
    public final long c() {
        return p();
    }

    @Override // i2.g
    public final void d(r0 r0Var, long j10, long j11) {
        if (this.E == -9223372036854775807L && this.D != null) {
            long jV = v(true);
            long j12 = jV == Long.MIN_VALUE ? 0L : jV + 10000;
            this.E = j12;
            this.f5398g.t(j12, this.D, this.F);
        }
        w1.w wVar = r0Var.f5364c;
        t tVar = new t(r0Var.f5372k, wVar.f17412c, wVar.f17413d, j10, wVar.f17411b);
        this.f5395d.getClass();
        long j13 = r0Var.f5371j;
        long j14 = this.E;
        b2.d dVar = this.f5396e;
        dVar.a(new f0(dVar, tVar, new y(-1, null, u1.f0.R(j13), u1.f0.R(j14)), 0));
        this.T = true;
        z zVar = this.f5407s;
        zVar.getClass();
        zVar.b(this);
    }

    @Override // i2.g
    public final void e(r0 r0Var, long j10, long j11, boolean z) {
        w1.w wVar = r0Var.f5364c;
        t tVar = new t(r0Var.f5372k, wVar.f17412c, wVar.f17413d, j10, wVar.f17411b);
        this.f5395d.getClass();
        long j12 = r0Var.f5371j;
        long j13 = this.E;
        b2.d dVar = this.f5396e;
        dVar.a(new f0(dVar, tVar, new y(-1, null, u1.f0.R(j12), u1.f0.R(j13)), 1));
        if (z) {
            return;
        }
        for (b1 b1Var : this.f5410w) {
            b1Var.r(false);
        }
        if (this.M > 0) {
            z zVar = this.f5407s;
            zVar.getClass();
            zVar.b(this);
        }
    }

    @Override // i2.g
    public final ai.a f(r0 r0Var, long j10, long j11, IOException iOException, int i10) {
        long jMin;
        ai.a aVar;
        l2.c0 c0Var;
        w1.w wVar = r0Var.f5364c;
        t tVar = new t(r0Var.f5372k, wVar.f17412c, wVar.f17413d, j10, wVar.f17411b);
        String str = u1.f0.f15206a;
        this.f5395d.getClass();
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof r1.f0) || (cause instanceof FileNotFoundException) || (cause instanceof w1.p) || (cause instanceof i2.i) || ((cause instanceof w1.i) && ((w1.i) cause).f17365a == 2008)) {
                jMin = -9223372036854775807L;
                break;
            }
        }
        jMin = Math.min((i10 - 1) * 1000, 5000);
        if (jMin == -9223372036854775807L) {
            aVar = i2.j.f8469e;
        } else {
            int iU = u();
            int i11 = iU > this.S ? 1 : 0;
            if (this.N || !((c0Var = this.D) == null || c0Var.h() == -9223372036854775807L)) {
                this.S = iU;
            } else if (!this.z || E()) {
                this.K = this.z;
                this.O = 0L;
                this.S = 0;
                for (b1 b1Var : this.f5410w) {
                    b1Var.r(false);
                }
                r0Var.f5368g.f4591b = 0L;
                r0Var.f5371j = 0L;
                r0Var.f5370i = true;
                r0Var.f5373m = false;
            } else {
                this.R = true;
                aVar = i2.j.f8468d;
            }
            aVar = new ai.a(i11, jMin);
        }
        ai.a aVar2 = aVar;
        int i12 = aVar2.f717a;
        boolean z = !(i12 == 0 || i12 == 1);
        long j12 = r0Var.f5371j;
        long j13 = this.E;
        b2.d dVar = this.f5396e;
        dVar.a(new g0(dVar, tVar, new y(-1, null, u1.f0.R(j12), u1.f0.R(j13)), iOException, z));
        return aVar2;
    }

    @Override // f2.a0
    public final void g() throws IOException {
        int iD = this.f5395d.d(this.G);
        i2.j jVar = this.l;
        IOException iOException = jVar.f8472c;
        if (iOException != null) {
            throw iOException;
        }
        i2.h hVar = jVar.f8471b;
        if (hVar != null) {
            if (iD == Integer.MIN_VALUE) {
                iD = hVar.f8458a;
            }
            IOException iOException2 = hVar.f8462e;
            if (iOException2 != null && hVar.f8463f > iD) {
                throw iOException2;
            }
        }
        if (this.T && !this.z) {
            throw r1.f0.a(null, "Loading finished before preparation is complete.");
        }
    }

    @Override // f2.a0
    public final long h(long j10) {
        boolean zT;
        t();
        boolean[] zArr = (boolean[]) this.C.f347c;
        if (!this.D.c()) {
            j10 = 0;
        }
        this.K = false;
        boolean z = true;
        boolean z4 = this.O == j10;
        this.O = j10;
        if (w()) {
            this.P = j10;
            return j10;
        }
        if (this.G != 7 && (this.T || this.l.a())) {
            int length = this.f5410w.length;
            for (int i10 = 0; i10 < length; i10++) {
                b1 b1Var = this.f5410w[i10];
                if (this.f5409v[i10].f5360d.get() == p0.PASS_THROUGH) {
                    int i11 = b1Var.f5220q;
                    if (b1Var.f5221s + i11 != 0 || !z4) {
                        if (this.B) {
                            synchronized (b1Var) {
                                b1Var.s();
                                int i12 = b1Var.f5220q;
                                if (i11 >= i12 && i11 <= b1Var.f5219p + i12) {
                                    int i13 = b1Var.f5226x;
                                    if (i13 == -1 || i11 < i13) {
                                        b1Var.f5222t = Long.MIN_VALUE;
                                        b1Var.f5221s = i11 - i12;
                                        zT = true;
                                    }
                                }
                                zT = false;
                            }
                        } else {
                            zT = b1Var.t(j10, this.T);
                        }
                        if (!zT && (zArr[i10] || !this.A)) {
                            z = false;
                            break;
                        }
                    }
                }
            }
            if (z) {
                return j10;
            }
        }
        this.R = false;
        this.P = j10;
        this.T = false;
        this.L = false;
        if (this.l.a()) {
            for (b1 b1Var2 : this.f5410w) {
                b1Var2.i();
            }
            i2.h hVar = this.l.f8471b;
            hVar.getClass();
            hVar.a(false);
        } else {
            this.l.f8472c = null;
            for (b1 b1Var3 : this.f5410w) {
                b1Var3.r(false);
            }
        }
        return j10;
    }

    @Override // f2.a0
    public final void i(long j10) {
        long jH;
        int i10;
        if (this.B) {
            return;
        }
        t();
        if (w()) {
            return;
        }
        boolean[] zArr = (boolean[]) this.C.f348d;
        int length = this.f5410w.length;
        for (int i11 = 0; i11 < length; i11++) {
            b1 b1Var = this.f5410w[i11];
            boolean z = zArr[i11];
            z0 z0Var = b1Var.f5205a;
            synchronized (b1Var) {
                try {
                    int i12 = b1Var.f5219p;
                    jH = -1;
                    if (i12 != 0) {
                        long[] jArr = b1Var.f5217n;
                        int i13 = b1Var.r;
                        if (j10 >= jArr[i13]) {
                            int iK = b1Var.k(i13, (!z || (i10 = b1Var.f5221s) == i12) ? i12 : i10 + 1, j10, false);
                            if (iK != -1) {
                                jH = b1Var.h(iK);
                            }
                        }
                    }
                } finally {
                }
            }
            z0Var.a(jH);
        }
    }

    @Override // f2.d1
    public final boolean j() {
        boolean z;
        if (!this.T && this.l.a()) {
            u1.e eVar = this.f5404n;
            synchronized (eVar) {
                z = eVar.f15205b;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // f2.a0
    public final long k(long j10, y1.e1 e1Var) {
        t();
        if (!this.D.c()) {
            return 0L;
        }
        l2.b0 b0VarF = this.D.f(j10);
        long j11 = b0VarF.f10421a.f10442a;
        long j12 = b0VarF.f10422b.f10442a;
        long j13 = e1Var.f18648b;
        long j14 = e1Var.f18647a;
        if (j14 == 0 && j13 == 0) {
            return j10;
        }
        String str = u1.f0.f15206a;
        long j15 = j10 - j14;
        long j16 = Long.MAX_VALUE;
        long j17 = (((j14 ^ j10) > 0L ? 1 : ((j14 ^ j10) == 0L ? 0 : -1)) >= 0) | (((j10 ^ j15) > 0L ? 1 : ((j10 ^ j15) == 0L ? 0 : -1)) >= 0) ? j15 : ((j15 >>> 63) ^ 1) + Long.MAX_VALUE;
        if ((j17 == Long.MIN_VALUE && j15 != Long.MIN_VALUE) || (j17 == Long.MAX_VALUE && j15 != Long.MAX_VALUE)) {
            j17 = Long.MIN_VALUE;
        }
        long j18 = j10 + j13;
        long j19 = (((j13 ^ j10) > 0L ? 1 : ((j13 ^ j10) == 0L ? 0 : -1)) < 0) | (((j10 ^ j18) > 0L ? 1 : ((j10 ^ j18) == 0L ? 0 : -1)) >= 0) ? j18 : ((j18 >>> 63) ^ 1) + Long.MAX_VALUE;
        if ((j19 != Long.MIN_VALUE || j18 == Long.MIN_VALUE) && (j19 != Long.MAX_VALUE || j18 == Long.MAX_VALUE)) {
            j16 = j19;
        }
        boolean z = j17 <= j11 && j11 <= j16;
        boolean z4 = j17 <= j12 && j12 <= j16;
        if (z && z4) {
            if (Math.abs(j11 - j10) <= Math.abs(j12 - j10)) {
                return j11;
            }
        } else {
            if (z) {
                return j11;
            }
            if (!z4) {
                return j17;
            }
        }
        return j12;
    }

    @Override // f2.a0
    public final void l(z zVar, long j10) {
        this.f5407s = zVar;
        r1.p pVar = this.f5401j;
        if (pVar == null) {
            this.f5404n.e();
            D();
        } else {
            z(0, 3).g(pVar);
            C(new l2.y(-9223372036854775807L, new long[]{0}, new long[]{0}));
            q();
            this.P = j10;
        }
    }

    @Override // f2.a0
    public final long m() {
        if (this.L) {
            this.L = false;
            return this.O;
        }
        if (!this.K) {
            return -9223372036854775807L;
        }
        if (!this.T && u() <= this.S) {
            return -9223372036854775807L;
        }
        this.K = false;
        return this.O;
    }

    @Override // f2.a0
    public final j1 n() {
        t();
        return (j1) this.C.f346b;
    }

    @Override // f2.a0
    public final long o(h2.p[] pVarArr, boolean[] zArr, c1[] c1VarArr, boolean[] zArr2, long j10) {
        h2.p pVar;
        t();
        a2.w0 w0Var = this.C;
        j1 j1Var = (j1) w0Var.f346b;
        boolean[] zArr3 = (boolean[]) w0Var.f348d;
        int i10 = this.M;
        for (int i11 = 0; i11 < pVarArr.length; i11++) {
            c1 c1Var = c1VarArr[i11];
            if (c1Var != null && (pVarArr[i11] == null || !zArr[i11])) {
                int i12 = ((s0) c1Var).f5380a;
                a9.o.t(zArr3[i12]);
                this.M--;
                zArr3[i12] = false;
                c1VarArr[i11] = null;
            }
        }
        boolean z = !this.I ? j10 == 0 || this.B : i10 != 0;
        for (int i13 = 0; i13 < pVarArr.length; i13++) {
            if (c1VarArr[i13] == null && (pVar = pVarArr[i13]) != null) {
                a9.o.t(pVar.length() == 1);
                a9.o.t(pVar.e(0) == 0);
                int iIndexOf = j1Var.f5300b.indexOf(pVar.a());
                if (iIndexOf < 0) {
                    iIndexOf = -1;
                }
                a9.o.t(!zArr3[iIndexOf]);
                this.M++;
                zArr3[iIndexOf] = true;
                this.L = pVar.h().f13528u | this.L;
                c1VarArr[i13] = new s0(this, iIndexOf);
                zArr2[i13] = true;
                if (!z) {
                    b1 b1Var = this.f5410w[iIndexOf];
                    z = (b1Var.f5220q + b1Var.f5221s == 0 || b1Var.t(j10, true)) ? false : true;
                }
            }
        }
        if (this.M == 0) {
            this.R = false;
            this.K = false;
            this.L = false;
            i2.j jVar = this.l;
            if (jVar.a()) {
                for (b1 b1Var2 : this.f5410w) {
                    b1Var2.i();
                }
                i2.h hVar = jVar.f8471b;
                hVar.getClass();
                hVar.a(false);
            } else {
                this.T = false;
                for (b1 b1Var3 : this.f5410w) {
                    b1Var3.r(false);
                }
            }
        } else if (z) {
            j10 = h(j10);
            for (int i14 = 0; i14 < c1VarArr.length; i14++) {
                if (c1VarArr[i14] != null) {
                    zArr2[i14] = true;
                }
            }
        }
        this.I = true;
        return j10;
    }

    @Override // f2.d1
    public final long p() {
        long jV;
        boolean z;
        t();
        if (this.T || this.M == 0) {
            return Long.MIN_VALUE;
        }
        if (w()) {
            return this.P;
        }
        if (this.A) {
            int length = this.f5410w.length;
            jV = Long.MAX_VALUE;
            for (int i10 = 0; i10 < length; i10++) {
                a2.w0 w0Var = this.C;
                if (((boolean[]) w0Var.f347c)[i10] && ((boolean[]) w0Var.f348d)[i10]) {
                    b1 b1Var = this.f5410w[i10];
                    synchronized (b1Var) {
                        z = b1Var.f5227y;
                    }
                    if (!z) {
                        jV = Math.min(jV, this.f5410w[i10].l());
                    }
                }
            }
        } else {
            jV = Long.MAX_VALUE;
        }
        if (jV == Long.MAX_VALUE) {
            jV = v(false);
        }
        return jV == Long.MIN_VALUE ? this.O : jV;
    }

    @Override // l2.q
    public final void q() {
        this.f5412y = true;
        this.r.post(this.f5405p);
    }

    @Override // f2.d1
    public final void r(long j10) {
        boolean z;
        if (this.M <= 0 || w()) {
            return;
        }
        boolean z4 = false;
        if (this.H != Long.MIN_VALUE) {
            t();
            int i10 = 0;
            boolean z10 = true;
            while (true) {
                b1[] b1VarArr = this.f5410w;
                if (i10 >= b1VarArr.length) {
                    break;
                }
                a2.w0 w0Var = this.C;
                if (((boolean[]) w0Var.f348d)[i10] && (((boolean[]) w0Var.f347c)[i10] || !this.A)) {
                    b1 b1Var = b1VarArr[i10];
                    synchronized (b1Var) {
                        z = b1Var.f5226x != -1;
                    }
                    z10 &= z;
                }
                i10++;
            }
            z4 = z10;
        }
        if (z4) {
            this.T = true;
        }
    }

    @Override // l2.q
    public final void s(l2.c0 c0Var) {
        this.r.post(new a2.c0(this, 20, c0Var));
    }

    public final void t() {
        a9.o.t(this.z);
        this.C.getClass();
        this.D.getClass();
    }

    public final int u() {
        int i10 = 0;
        for (b1 b1Var : this.f5410w) {
            i10 += b1Var.f5220q + b1Var.f5219p;
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long v(boolean z) {
        long jMax = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f5410w.length; i10++) {
            if (!z) {
                a2.w0 w0Var = this.C;
                w0Var.getClass();
                if (((boolean[]) w0Var.f348d)[i10]) {
                    jMax = Math.max(jMax, this.f5410w[i10].l());
                }
            }
        }
        return jMax;
    }

    public final boolean w() {
        return this.P != -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0101 A[PHI: r13
  0x0101: PHI (r13v3 r1.p) = (r13v2 r1.p), (r13v6 r1.p) binds: [B:61:0x00b7, B:70:0x00e5] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x() {
        long j10;
        int i10;
        if (this.V || this.z || !this.f5412y || this.D == null) {
            return;
        }
        for (b1 b1Var : this.f5410w) {
            if (b1Var.n() == null) {
                return;
            }
        }
        u1.e eVar = this.f5404n;
        synchronized (eVar) {
            eVar.f15205b = false;
        }
        int length = this.f5410w.length;
        int i11 = -1;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            r1.p pVarN = this.f5410w[i13].n();
            pVarN.getClass();
            int iG = r1.e0.g(pVarN.f13523o);
            char c7 = 2;
            char c10 = iG != 1 ? iG != 2 ? iG != 3 ? iG != 4 ? (char) 0 : (char) 2 : (char) 1 : (char) 4 : (char) 3;
            if (i11 == 1) {
                c7 = 3;
            } else if (i11 == 2) {
                c7 = 4;
            } else if (i11 == 3) {
                c7 = 1;
            } else if (i11 != 4) {
                c7 = 0;
            }
            if (c10 > c7) {
                i12 = i13;
                i11 = iG;
            }
        }
        r1.r0[] r0VarArr = new r1.r0[length];
        boolean[] zArr = new boolean[length];
        int i14 = 0;
        while (true) {
            j10 = this.f5402k;
            if (i14 >= length) {
                break;
            }
            r1.p pVarN2 = this.f5410w[i14].n();
            pVarN2.getClass();
            String str = pVarN2.f13523o;
            boolean zH = r1.e0.h(str);
            boolean z = zH || r1.e0.k(str);
            zArr[i14] = z;
            this.A |= z;
            this.B = j10 != -9223372036854775807L && length == 1 && r1.e0.i(str);
            y2.b bVar = this.f5408t;
            if (bVar != null) {
                if (zH || this.f5411x[i14].f5384b) {
                    r1.d0 d0Var = pVarN2.l;
                    r1.d0 d0Var2 = d0Var == null ? new r1.d0(bVar) : d0Var.a(bVar);
                    r1.o oVar = new r1.o(pVarN2);
                    oVar.f13490k = d0Var2;
                    pVarN2 = new r1.p(oVar);
                }
                if (zH) {
                    if (pVarN2.f13517h == -1 && pVarN2.f13518i == -1 && (i10 = bVar.f18885a) != -1) {
                        r1.o oVar2 = new r1.o(pVarN2);
                        oVar2.f13487h = i10;
                        pVarN2 = new r1.p(oVar2);
                    }
                }
            }
            int iQ = this.f5394c.q(pVarN2);
            r1.o oVar3 = new r1.o(pVarN2);
            oVar3.O = iQ;
            r1.p pVar = new r1.p(oVar3);
            if (i14 != i12) {
                r1.o oVar4 = new r1.o(pVar);
                oVar4.l = Integer.toString(i12);
                pVar = new r1.p(oVar4);
            }
            r0VarArr[i14] = new r1.r0(Integer.toString(i14), pVar);
            this.L = pVar.f13528u | this.L;
            this.f5410w[i14].u(this.H);
            i14++;
        }
        this.C = new a2.w0(new j1(r0VarArr), zArr);
        if (this.B && this.E == -9223372036854775807L) {
            this.E = j10;
            this.D = new o0(this, this.D);
        }
        this.f5398g.t(this.E, this.D, this.F);
        this.z = true;
        z zVar = this.f5407s;
        zVar.getClass();
        zVar.d(this);
    }

    public final void y(int i10) {
        t();
        a2.w0 w0Var = this.C;
        boolean[] zArr = (boolean[]) w0Var.f349e;
        if (zArr[i10]) {
            return;
        }
        r1.p pVar = ((j1) w0Var.f346b).a(i10).f13556d[0];
        int iG = r1.e0.g(pVar.f13523o);
        long j10 = this.O;
        b2.d dVar = this.f5396e;
        dVar.a(new d2.w(dVar, 1, new y(iG, pVar, u1.f0.R(j10), -9223372036854775807L)));
        zArr[i10] = true;
    }

    @Override // l2.q
    public final l2.j0 z(int i10, int i11) {
        return B(new t0(i10, false));
    }
}
