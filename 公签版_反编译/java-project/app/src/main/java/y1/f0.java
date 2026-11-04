package y1;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Pair;
import com.hsae.autosdk.core.NoConst;
import f2.j1;
import ha.u3;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import ua.t6;

/* loaded from: classes.dex */
public final class f0 implements Handler.Callback, f2.z, w0, androidx.media3.exoplayer.video.x {
    public static final long W0 = u1.f0.R(10000);
    public final boolean A;
    public final s1.b B;
    public final boolean C;
    public e1 D;
    public boolean F;
    public boolean G;
    public e0 H;
    public int I;
    public v0 K;
    public s3.t L;
    public boolean M;
    public long M0;
    public long N0;
    public boolean O;
    public int O0;
    public boolean P;
    public boolean P0;
    public k Q0;
    public boolean S;
    public n S0;
    public int T;
    public boolean U0;
    public boolean V;
    public boolean X;
    public boolean Y;
    public boolean Z;

    /* renamed from: a, reason: collision with root package name */
    public final h4.m0[] f18653a;

    /* renamed from: b, reason: collision with root package name */
    public final a[] f18654b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean[] f18655c;

    /* renamed from: d, reason: collision with root package name */
    public final h2.q f18656d;

    /* renamed from: e, reason: collision with root package name */
    public final h2.r f18657e;

    /* renamed from: f, reason: collision with root package name */
    public final h0 f18658f;

    /* renamed from: g, reason: collision with root package name */
    public final i2.c f18659g;

    /* renamed from: h, reason: collision with root package name */
    public final u1.b0 f18660h;

    /* renamed from: h0, reason: collision with root package name */
    public int f18661h0;

    /* renamed from: i, reason: collision with root package name */
    public final u3 f18662i;

    /* renamed from: j, reason: collision with root package name */
    public final Looper f18663j;

    /* renamed from: k, reason: collision with root package name */
    public final r1.p0 f18664k;
    public final r1.o0 l;

    /* renamed from: m, reason: collision with root package name */
    public final long f18665m;

    /* renamed from: n, reason: collision with root package name */
    public final h f18666n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f18667p;

    /* renamed from: q, reason: collision with root package name */
    public final u1.z f18668q;
    public final r r;

    /* renamed from: s, reason: collision with root package name */
    public final n0 f18669s;

    /* renamed from: t, reason: collision with root package name */
    public final m7.l f18670t;

    /* renamed from: t0, reason: collision with root package name */
    public e0 f18671t0;

    /* renamed from: v, reason: collision with root package name */
    public final e f18672v;

    /* renamed from: w, reason: collision with root package name */
    public final long f18673w;

    /* renamed from: x, reason: collision with root package name */
    public final z1.i f18674x;

    /* renamed from: y, reason: collision with root package name */
    public final z1.e f18675y;
    public final u1.b0 z;
    public long T0 = -9223372036854775807L;
    public boolean N = false;
    public float V0 = 1.0f;
    public d1 E = d1.f18622g;
    public long R0 = -9223372036854775807L;
    public long R = -9223372036854775807L;

    public f0(Context context, a[] aVarArr, a[] aVarArr2, h2.q qVar, h2.r rVar, h0 h0Var, i2.c cVar, int i10, boolean z, z1.e eVar, e1 e1Var, e eVar2, long j10, Looper looper, u1.z zVar, r rVar2, z1.i iVar, n nVar, final androidx.media3.exoplayer.video.x xVar, boolean z4) {
        this.r = rVar2;
        this.f18656d = qVar;
        this.f18657e = rVar;
        this.f18658f = h0Var;
        this.f18659g = cVar;
        this.T = i10;
        this.V = z;
        this.D = e1Var;
        this.f18672v = eVar2;
        this.f18673w = j10;
        this.f18668q = zVar;
        this.f18674x = iVar;
        this.S0 = nVar;
        this.f18675y = eVar;
        this.C = z4;
        this.f18665m = ((g) h0Var).f18688n;
        r1.n0 n0Var = r1.q0.f13551a;
        v0 v0VarK = v0.k(rVar);
        this.K = v0VarK;
        this.L = new s3.t(v0VarK);
        this.f18654b = new a[aVarArr.length];
        this.f18655c = new boolean[aVarArr.length];
        h2.n nVar2 = (h2.n) qVar;
        nVar2.getClass();
        this.f18653a = new h4.m0[aVarArr.length];
        boolean z10 = false;
        for (int i11 = 0; i11 < aVarArr.length; i11++) {
            a aVar = aVarArr[i11];
            aVar.f18556e = i11;
            aVar.f18557f = iVar;
            aVar.f18558g = zVar;
            this.f18654b[i11] = aVar;
            a aVar2 = this.f18654b[i11];
            synchronized (aVar2.f18552a) {
                aVar2.f18567s = nVar2;
            }
            a aVar3 = aVarArr2[i11];
            if (aVar3 != null) {
                aVar3.f18556e = i11;
                aVar3.f18557f = iVar;
                aVar3.f18558g = zVar;
                z10 = true;
            }
            this.f18653a[i11] = new h4.m0(aVarArr[i11], aVar3, i11);
        }
        this.A = z10;
        this.f18666n = new h(this, zVar);
        this.f18667p = new ArrayList();
        this.f18664k = new r1.p0();
        this.l = new r1.o0();
        a9.o.t(qVar.f6404a == null);
        qVar.f6404a = this;
        qVar.f6405b = cVar;
        this.P0 = true;
        u1.b0 b0VarA = zVar.a(looper, null);
        this.z = b0VarA;
        this.f18669s = new n0(eVar, b0VarA, new y(this), nVar);
        this.f18670t = new m7.l(this, eVar, b0VarA, iVar);
        u3 u3Var = new u3();
        this.f18662i = u3Var;
        Looper looperF = u3Var.f();
        this.f18663j = looperF;
        u1.b0 b0VarA2 = zVar.a(looperF, this);
        this.f18660h = b0VarA2;
        this.B = new s1.b(context, looperF, this);
        b0VarA2.b(35, new androidx.media3.exoplayer.video.x() { // from class: y1.z
            @Override // androidx.media3.exoplayer.video.x
            public final void c(long j11, long j12, r1.p pVar, MediaFormat mediaFormat) {
                f0 f0Var = this.f18879a;
                f0Var.getClass();
                xVar.c(j11, j12, pVar, mediaFormat);
                f0Var.c(j11, j12, pVar, mediaFormat);
            }
        }).b();
        b0VarA2.b(39, new y(this)).b();
    }

    public static Pair S(r1.q0 q0Var, e0 e0Var, boolean z, int i10, boolean z4, r1.p0 p0Var, r1.o0 o0Var) {
        Pair pairI;
        int iT;
        r1.q0 q0Var2 = e0Var.f18642a;
        if (q0Var.p()) {
            return null;
        }
        r1.q0 q0Var3 = q0Var2.p() ? q0Var : q0Var2;
        try {
            pairI = q0Var3.i(p0Var, o0Var, e0Var.f18643b, e0Var.f18644c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (q0Var.equals(q0Var3)) {
            return pairI;
        }
        if (q0Var.b(pairI.first) != -1) {
            return (q0Var3.g(pairI.first, o0Var).f13508f && q0Var3.m(o0Var.f13505c, p0Var, 0L).f13546m == q0Var3.b(pairI.first)) ? q0Var.i(p0Var, o0Var, q0Var.g(pairI.first, o0Var).f13505c, e0Var.f18644c) : pairI;
        }
        if (z && (iT = T(p0Var, o0Var, i10, z4, pairI.first, q0Var3, q0Var)) != -1) {
            return q0Var.i(p0Var, o0Var, iT, -9223372036854775807L);
        }
        return null;
    }

    public static int T(r1.p0 p0Var, r1.o0 o0Var, int i10, boolean z, Object obj, r1.q0 q0Var, r1.q0 q0Var2) {
        Object obj2 = q0Var.m(q0Var.g(obj, o0Var).f13505c, p0Var, 0L).f13535a;
        for (int i11 = 0; i11 < q0Var2.o(); i11++) {
            if (q0Var2.m(i11, p0Var, 0L).f13535a.equals(obj2)) {
                return i11;
            }
        }
        int iB = q0Var.b(obj);
        int iH = q0Var.h();
        int iD = iB;
        int iB2 = -1;
        for (int i12 = 0; i12 < iH && iB2 == -1; i12++) {
            iD = q0Var.d(iD, o0Var, p0Var, i10, z);
            if (iD == -1) {
                break;
            }
            iB2 = q0Var2.b(q0Var.l(iD));
        }
        if (iB2 == -1) {
            return -1;
        }
        return q0Var2.f(iB2, o0Var, false).f13505c;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [f2.a0, f2.d1, java.lang.Object] */
    public static boolean z(l0 l0Var) {
        if (l0Var == null) {
            return false;
        }
        try {
            ?? r12 = l0Var.f18720a;
            if (l0Var.f18724e) {
                for (f2.c1 c1Var : l0Var.f18722c) {
                    if (c1Var != null) {
                        c1Var.j();
                    }
                }
            } else {
                r12.g();
            }
            return (!l0Var.f18724e ? 0L : r12.c()) != Long.MIN_VALUE;
        } catch (IOException unused) {
            return false;
        }
    }

    public final boolean A(int i10, f2.c0 c0Var) {
        n0 n0Var = this.f18669s;
        l0 l0Var = n0Var.f18780k;
        if (l0Var == null || !l0Var.f18726g.f18758a.equals(c0Var)) {
            return false;
        }
        h4.m0 m0Var = this.f18653a[i10];
        l0 l0Var2 = n0Var.f18780k;
        int i11 = m0Var.f6459b;
        return ((i11 == 2 || i11 == 4) && m0Var.d(l0Var2) == ((a) m0Var.f6462e)) || (m0Var.f6459b == 3 && m0Var.d(l0Var2) == ((a) m0Var.f6463f));
    }

    public final void A0(int i10, int i11, int i12, boolean z) {
        boolean z4 = z && i10 != -1;
        if (i10 == -1) {
            i12 = 2;
        } else if (i12 == 2) {
            i12 = 1;
        }
        boolean z10 = this.F;
        if (i10 == 0) {
            i11 = 1;
        } else if (i11 == 1) {
            i11 = z10 ? 4 : 0;
        }
        v0 v0Var = this.K;
        if (v0Var.l == z4 && v0Var.f18836n == i11 && v0Var.f18835m == i12) {
            return;
        }
        this.K = v0Var.e(i12, i11, z4);
        D0(false, false);
        n0 n0Var = this.f18669s;
        for (l0 l0Var = n0Var.f18778i; l0Var != null; l0Var = l0Var.f18731m) {
            for (h2.p pVar : l0Var.f18733o.f6408c) {
                if (pVar != null) {
                    pVar.b(z4);
                }
            }
        }
        if (!r0()) {
            v0();
            B0();
            v0 v0Var2 = this.K;
            if (v0Var2.f18838p) {
                this.K = v0Var2.i(false);
            }
            n0Var.m(this.M0);
            return;
        }
        int i13 = this.K.f18828e;
        u1.b0 b0Var = this.f18660h;
        if (i13 != 3) {
            if (i13 == 2) {
                b0Var.f(2);
            }
        } else {
            h hVar = this.f18666n;
            hVar.f18702f = true;
            hVar.f18697a.f();
            t0();
            b0Var.f(2);
        }
    }

    public final boolean B() {
        l0 l0Var = this.f18669s.f18778i;
        long j10 = l0Var.f18726g.f18763f;
        return l0Var.f18724e && (j10 == -9223372036854775807L || this.K.f18840s < j10 || !r0());
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ce  */
    /* JADX WARN: Type inference failed for: r1v39, types: [f2.a0, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void B0() {
        r1.h0 h0VarC;
        f0 f0Var;
        l0 l0Var = this.f18669s.f18778i;
        if (l0Var == null) {
            return;
        }
        long jM = l0Var.f18724e ? l0Var.f18720a.m() : -9223372036854775807L;
        if (jM != -9223372036854775807L) {
            if (!l0Var.g()) {
                this.f18669s.n(l0Var);
                u(false);
                C();
            }
            Q(jM, true);
            if (jM != this.K.f18840s) {
                v0 v0Var = this.K;
                this.K = y(v0Var.f18825b, jM, v0Var.f18826c, jM, true, 5);
            }
        } else {
            h hVar = this.f18666n;
            boolean z = l0Var != this.f18669s.f18779j;
            a aVar = hVar.f18699c;
            ba.n nVar = hVar.f18697a;
            if (aVar == null || aVar.l() || ((z && hVar.f18699c.f18559h != 2) || (!hVar.f18699c.m() && (z || hVar.f18699c.k())))) {
                hVar.f18701e = true;
                if (hVar.f18702f) {
                    nVar.f();
                }
            } else {
                k0 k0Var = hVar.f18700d;
                k0Var.getClass();
                long jA = k0Var.a();
                if (!hVar.f18701e) {
                    nVar.d(jA);
                    h0VarC = k0Var.c();
                    if (!h0VarC.equals((r1.h0) nVar.f2725e)) {
                        nVar.e(h0VarC);
                        hVar.f18698b.f18660h.b(16, h0VarC).b();
                    }
                } else if (jA >= nVar.a()) {
                    hVar.f18701e = false;
                    if (hVar.f18702f) {
                        nVar.f();
                    }
                    nVar.d(jA);
                    h0VarC = k0Var.c();
                    if (!h0VarC.equals((r1.h0) nVar.f2725e)) {
                    }
                } else if (nVar.f2721a) {
                    nVar.d(nVar.a());
                    nVar.f2721a = false;
                }
            }
            long jA2 = hVar.a();
            this.M0 = jA2;
            long j10 = jA2 - l0Var.f18734p;
            long j11 = this.K.f18840s;
            if (!this.f18667p.isEmpty() && !this.K.f18825b.b()) {
                if (this.P0) {
                    this.P0 = false;
                }
                v0 v0Var2 = this.K;
                v0Var2.f18824a.b(v0Var2.f18825b.f5236a);
                int iMin = Math.min(this.O0, this.f18667p.size());
                if (iMin > 0 && this.f18667p.get(iMin - 1) != null) {
                    throw new ClassCastException();
                }
                if (iMin < this.f18667p.size() && this.f18667p.get(iMin) != null) {
                    throw new ClassCastException();
                }
                this.O0 = iMin;
            }
            if (this.f18666n.b()) {
                boolean z4 = !this.L.f14245c;
                v0 v0Var3 = this.K;
                this.K = y(v0Var3.f18825b, j10, v0Var3.f18826c, j10, z4, 6);
            } else {
                v0 v0Var4 = this.K;
                v0Var4.f18840s = j10;
                v0Var4.f18841t = SystemClock.elapsedRealtime();
            }
        }
        this.K.f18839q = this.f18669s.l.d();
        v0 v0Var5 = this.K;
        v0Var5.r = p(v0Var5.f18839q);
        v0 v0Var6 = this.K;
        if (v0Var6.l && v0Var6.f18828e == 3 && s0(v0Var6.f18824a, v0Var6.f18825b)) {
            v0 v0Var7 = this.K;
            float f10 = 1.0f;
            if (v0Var7.f18837o.f13452a == 1.0f) {
                e eVar = this.f18672v;
                long jM2 = m(v0Var7.f18824a, v0Var7.f18825b.f5236a, v0Var7.f18840s);
                long j12 = this.K.r;
                if (eVar.f18631c == -9223372036854775807L) {
                    f0Var = this;
                } else {
                    long j13 = jM2 - j12;
                    long j14 = eVar.f18640m;
                    if (j14 == -9223372036854775807L) {
                        eVar.f18640m = j13;
                        eVar.f18641n = 0L;
                    } else {
                        eVar.f18640m = Math.max(j13, (long) ((j13 * 9.999871E-4f) + (j14 * 0.999f)));
                        eVar.f18641n = (long) ((9.999871E-4f * Math.abs(j13 - r14)) + (0.999f * eVar.f18641n));
                    }
                    if (eVar.l == -9223372036854775807L || SystemClock.elapsedRealtime() - eVar.l >= 1000) {
                        eVar.l = SystemClock.elapsedRealtime();
                        long j15 = (eVar.f18641n * 3) + eVar.f18640m;
                        if (eVar.f18636h > j15) {
                            float fG = u1.f0.G(1000L);
                            long[] jArr = {j15, eVar.f18633e, eVar.f18636h - (((long) ((eVar.f18639k - 1.0f) * fG)) + ((long) ((eVar.f18637i - 1.0f) * fG)))};
                            long j16 = jArr[0];
                            for (int i10 = 1; i10 < 3; i10++) {
                                long j17 = jArr[i10];
                                if (j17 > j16) {
                                    j16 = j17;
                                }
                            }
                            eVar.f18636h = j16;
                        } else {
                            long jH = u1.f0.h(jM2 - ((long) (Math.max(0.0f, eVar.f18639k - 1.0f) / 1.0E-7f)), eVar.f18636h, j15);
                            eVar.f18636h = jH;
                            long j18 = eVar.f18635g;
                            if (j18 != -9223372036854775807L && jH > j18) {
                                eVar.f18636h = j18;
                            }
                        }
                        long j19 = jM2 - eVar.f18636h;
                        if (Math.abs(j19) < eVar.f18629a) {
                            eVar.f18639k = 1.0f;
                        } else {
                            eVar.f18639k = u1.f0.f((1.0E-7f * j19) + 1.0f, eVar.f18638j, eVar.f18637i);
                        }
                        f10 = eVar.f18639k;
                        f0Var = this;
                    } else {
                        f10 = eVar.f18639k;
                        f0Var = this;
                    }
                }
                if (f0Var.f18666n.c().f13452a != f10) {
                    r1.h0 h0Var = new r1.h0(f10, f0Var.K.f18837o.f13453b);
                    f0Var.f18660h.e(16);
                    f0Var.f18666n.e(h0Var);
                    f0Var.x(f0Var.K.f18837o, f0Var.f18666n.c().f13452a, false, false);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v12, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v19, types: [f2.d1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [f2.d1, java.lang.Object] */
    public final void C() {
        boolean zB;
        if (z(this.f18669s.l)) {
            l0 l0Var = this.f18669s.l;
            long jP = p(!l0Var.f18724e ? 0L : l0Var.f18720a.c());
            l0 l0Var2 = this.f18669s.f18778i;
            long j10 = s0(this.K.f18824a, l0Var.f18726g.f18758a) ? this.f18672v.f18636h : -9223372036854775807L;
            z1.i iVar = this.f18674x;
            r1.q0 q0Var = this.K.f18824a;
            f2.c0 c0Var = l0Var.f18726g.f18758a;
            float f10 = this.f18666n.c().f13452a;
            boolean z = this.K.l;
            g0 g0Var = new g0(iVar, q0Var, c0Var, jP, f10, this.P, j10);
            zB = ((g) this.f18658f).b(g0Var);
            l0 l0Var3 = this.f18669s.f18778i;
            if (!zB && l0Var3.f18724e && jP < 500000 && this.f18665m > 0) {
                l0Var3.f18720a.i(this.K.f18840s);
                zB = ((g) this.f18658f).b(g0Var);
            }
        } else {
            zB = false;
        }
        this.S = zB;
        if (zB) {
            l0 l0Var4 = this.f18669s.l;
            l0Var4.getClass();
            i0 i0Var = new i0();
            i0Var.f18705a = this.M0 - l0Var4.f18734p;
            float f11 = this.f18666n.c().f13452a;
            a9.o.k(f11 > 0.0f || f11 == -3.4028235E38f);
            i0Var.f18706b = f11;
            long j11 = this.R;
            a9.o.k(j11 >= 0 || j11 == -9223372036854775807L);
            i0Var.f18707c = j11;
            j0 j0Var = new j0(i0Var);
            a9.o.t(l0Var4.f18731m == null);
            l0Var4.f18720a.a(j0Var);
        }
        w0();
    }

    public final void C0(r1.q0 q0Var, f2.c0 c0Var, r1.q0 q0Var2, f2.c0 c0Var2, long j10, boolean z) {
        if (!s0(q0Var, c0Var)) {
            r1.h0 h0Var = c0Var.b() ? r1.h0.f13451d : this.K.f18837o;
            h hVar = this.f18666n;
            if (hVar.c().equals(h0Var)) {
                return;
            }
            this.f18660h.e(16);
            hVar.e(h0Var);
            x(this.K.f18837o, h0Var.f13452a, false, false);
            return;
        }
        Object obj = c0Var.f5236a;
        r1.o0 o0Var = this.l;
        int i10 = q0Var.g(obj, o0Var).f13505c;
        r1.p0 p0Var = this.f18664k;
        q0Var.n(i10, p0Var);
        r1.u uVar = p0Var.f13543i;
        e eVar = this.f18672v;
        eVar.getClass();
        eVar.f18631c = u1.f0.G(uVar.f13566a);
        eVar.f18634f = u1.f0.G(uVar.f13567b);
        eVar.f18635g = u1.f0.G(uVar.f13568c);
        float f10 = uVar.f13569d;
        if (f10 == -3.4028235E38f) {
            f10 = 0.97f;
        }
        eVar.f18638j = f10;
        float f11 = uVar.f13570e;
        if (f11 == -3.4028235E38f) {
            f11 = 1.03f;
        }
        eVar.f18637i = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            eVar.f18631c = -9223372036854775807L;
        }
        eVar.a();
        if (j10 != -9223372036854775807L) {
            eVar.f18632d = m(q0Var, obj, j10);
            eVar.a();
            return;
        }
        if (!Objects.equals(!q0Var2.p() ? q0Var2.m(q0Var2.g(c0Var2.f5236a, o0Var).f13505c, p0Var, 0L).f13535a : null, p0Var.f13535a) || z) {
            eVar.f18632d = -9223372036854775807L;
            eVar.a();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [f2.a0, f2.d1, java.lang.Object] */
    public final void D() {
        n0 n0Var = this.f18669s;
        n0Var.k();
        l0 l0Var = n0Var.f18781m;
        if (l0Var != null) {
            if (!l0Var.f18723d || l0Var.f18724e) {
                ?? r12 = l0Var.f18720a;
                if (r12.j()) {
                    return;
                }
                r1.q0 q0Var = this.K.f18824a;
                if (l0Var.f18724e) {
                    r12.p();
                }
                Iterator it = ((g) this.f18658f).f18690p.values().iterator();
                while (it.hasNext()) {
                    if (((f) it.next()).f18650b) {
                        return;
                    }
                }
                if (!l0Var.f18723d) {
                    m0 m0Var = l0Var.f18726g;
                    l0Var.f18723d = true;
                    r12.l(this, m0Var.f18759b);
                    return;
                }
                i0 i0Var = new i0();
                i0Var.f18705a = this.M0 - l0Var.f18734p;
                float f10 = this.f18666n.c().f13452a;
                a9.o.k(f10 > 0.0f || f10 == -3.4028235E38f);
                i0Var.f18706b = f10;
                long j10 = this.R;
                a9.o.k(j10 >= 0 || j10 == -9223372036854775807L);
                i0Var.f18707c = j10;
                j0 j0Var = new j0(i0Var);
                a9.o.t(l0Var.f18731m == null);
                r12.a(j0Var);
            }
        }
    }

    public final void D0(boolean z, boolean z4) {
        long jElapsedRealtime;
        this.P = z;
        if (!z || z4) {
            jElapsedRealtime = -9223372036854775807L;
        } else {
            this.f18668q.getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.R = jElapsedRealtime;
    }

    public final void E() {
        s3.t tVar = this.L;
        v0 v0Var = this.K;
        boolean z = tVar.f14243a | (((v0) tVar.f14247e) != v0Var);
        tVar.f14243a = z;
        tVar.f14247e = v0Var;
        if (z) {
            x xVar = this.r.f18797a;
            xVar.f18859j.d(new s1.f(xVar, 15, tVar));
            this.L = new s3.t(this.K);
        }
    }

    public final void F(int i10) {
        h4.m0 m0Var = this.f18653a[i10];
        try {
            l0 l0Var = this.f18669s.f18778i;
            l0Var.getClass();
            a aVarD = m0Var.d(l0Var);
            aVarD.getClass();
            f2.c1 c1Var = aVarD.f18560i;
            c1Var.getClass();
            c1Var.j();
        } catch (IOException | RuntimeException e7) {
            int i11 = ((a) m0Var.f6462e).f18553b;
            if (i11 != 3 && i11 != 5) {
                throw e7;
            }
            h2.r rVar = this.f18669s.f18778i.f18733o;
            u1.a.g("Disabling track due to error: " + r1.p.d(rVar.f6408c[i10].h()), e7);
            h2.r rVar2 = new h2.r((b1[]) rVar.f6407b.clone(), (h2.p[]) rVar.f6408c.clone(), rVar.f6409d, rVar.f6410e);
            rVar2.f6407b[i10] = null;
            rVar2.f6408c[i10] = null;
            i(i10);
            l0 l0Var2 = this.f18669s.f18778i;
            l0Var2.a(rVar2, this.K.f18840s, false, new boolean[l0Var2.f18729j.length]);
        }
    }

    public final void G(final int i10, final boolean z) {
        boolean[] zArr = this.f18655c;
        if (zArr[i10] != z) {
            zArr[i10] = z;
            this.z.d(new Runnable() { // from class: y1.a0
                @Override // java.lang.Runnable
                public final void run() {
                    f0 f0Var = this.f18568a;
                    h4.m0[] m0VarArr = f0Var.f18653a;
                    int i11 = i10;
                    int i12 = ((a) m0VarArr[i11].f6462e).f18553b;
                    z1.e eVar = f0Var.f18675y;
                    z1.a aVarM = eVar.M();
                    eVar.N(aVarM, 1033, new t6(i11, i12, aVarM, z));
                }
            });
        }
    }

    public final void H() throws Throwable {
        v(this.f18670t.c(), true);
    }

    public final void I() {
        this.L.c(1);
        throw null;
    }

    public final void J() {
        this.L.c(1);
        int i10 = 0;
        O(false, false, false, true);
        g gVar = (g) this.f18658f;
        gVar.getClass();
        long id2 = Thread.currentThread().getId();
        long j10 = gVar.f18691q;
        a9.o.s("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).", j10 == -1 || j10 == id2);
        gVar.f18691q = id2;
        ConcurrentHashMap concurrentHashMap = gVar.f18690p;
        z1.i iVar = this.f18674x;
        f fVar = (f) concurrentHashMap.get(iVar);
        if (fVar == null) {
            concurrentHashMap.put(iVar, new f());
        } else {
            fVar.f18649a++;
        }
        f fVar2 = (f) concurrentHashMap.get(iVar);
        fVar2.getClass();
        Integer num = (Integer) gVar.f18689o.get(iVar.f19389a);
        int iIntValue = (num == null || num.intValue() == -1) ? gVar.l : num.intValue();
        if (iIntValue == -1) {
            iIntValue = 13107200;
        }
        fVar2.f18651c = iIntValue;
        fVar2.f18650b = false;
        n0(this.K.f18824a.p() ? 4 : 2);
        v0 v0Var = this.K;
        boolean z = v0Var.l;
        A0(this.B.d(v0Var.f18828e, z), v0Var.f18836n, v0Var.f18835m, z);
        i2.f fVar3 = (i2.f) this.f18659g;
        fVar3.getClass();
        m7.l lVar = this.f18670t;
        a9.o.t(!lVar.f10953a);
        lVar.l = fVar3;
        while (true) {
            ArrayList arrayList = (ArrayList) lVar.f10955c;
            if (i10 >= arrayList.size()) {
                lVar.f10953a = true;
                this.f18660h.f(2);
                return;
            } else {
                u0 u0Var = (u0) arrayList.get(i10);
                lVar.g(u0Var);
                ((HashSet) lVar.f10960h).add(u0Var);
                i10++;
            }
        }
    }

    public final void K(u1.e eVar) {
        u3 u3Var = this.f18662i;
        u1.b0 b0Var = this.f18660h;
        try {
            O(true, false, true, false);
            L();
            h0 h0Var = this.f18658f;
            z1.i iVar = this.f18674x;
            g gVar = (g) h0Var;
            ConcurrentHashMap concurrentHashMap = gVar.f18690p;
            f fVar = (f) concurrentHashMap.get(iVar);
            if (fVar != null) {
                int i10 = fVar.f18649a - 1;
                fVar.f18649a = i10;
                if (i10 == 0) {
                    concurrentHashMap.remove(iVar);
                    gVar.c();
                }
            }
            if (gVar.f18690p.isEmpty()) {
                gVar.f18691q = -1L;
            }
            s1.b bVar = this.B;
            bVar.f13878c = null;
            bVar.a();
            bVar.c(0);
            this.f18656d.a();
            n0(1);
        } finally {
            b0Var.f15188a.removeCallbacksAndMessages(null);
            u3Var.g();
            eVar.e();
        }
    }

    public final void L() {
        for (int i10 = 0; i10 < this.f18653a.length; i10++) {
            a aVar = this.f18654b[i10];
            synchronized (aVar.f18552a) {
                aVar.f18567s = null;
            }
            h4.m0 m0Var = this.f18653a[i10];
            a aVar2 = (a) m0Var.f6462e;
            a9.o.t(aVar2.f18559h == 0);
            aVar2.q();
            m0Var.f6460c = false;
            a aVar3 = (a) m0Var.f6463f;
            if (aVar3 != null) {
                a9.o.t(aVar3.f18559h == 0);
                aVar3.q();
                m0Var.f6461d = false;
            }
        }
    }

    public final void M(int i10, int i11, f2.e1 e1Var) throws Throwable {
        this.L.c(1);
        m7.l lVar = this.f18670t;
        lVar.getClass();
        a9.o.k(i10 >= 0 && i10 <= i11 && i11 <= ((ArrayList) lVar.f10955c).size());
        lVar.f10963k = e1Var;
        lVar.i(i10, i11);
        v(lVar.c(), false);
    }

    public final void N() {
        boolean z;
        float f10 = this.f18666n.c().f13452a;
        n0 n0Var = this.f18669s;
        l0 l0Var = n0Var.f18778i;
        l0 l0Var2 = n0Var.f18779j;
        h2.r rVar = null;
        l0 l0Var3 = l0Var;
        boolean z4 = true;
        while (l0Var3 != null && l0Var3.f18724e) {
            v0 v0Var = this.K;
            h2.r rVarJ = l0Var3.j(f10, v0Var.f18824a, v0Var.l);
            h2.r rVar2 = l0Var3 == this.f18669s.f18778i ? rVarJ : rVar;
            h2.r rVar3 = l0Var3.f18733o;
            if (rVar3 != null) {
                int length = rVar3.f6408c.length;
                h2.p[] pVarArr = rVarJ.f6408c;
                if (length == pVarArr.length) {
                    for (int i10 = 0; i10 < pVarArr.length; i10++) {
                        if (rVarJ.a(rVar3, i10)) {
                        }
                    }
                    if (l0Var3 == l0Var2) {
                        z4 = false;
                    }
                    l0Var3 = l0Var3.f18731m;
                    rVar = rVar2;
                }
            }
            if (z4) {
                n0 n0Var2 = this.f18669s;
                l0 l0Var4 = n0Var2.f18778i;
                boolean z10 = (n0Var2.n(l0Var4) & 1) != 0;
                boolean[] zArr = new boolean[this.f18653a.length];
                rVar2.getClass();
                long jA = l0Var4.a(rVar2, this.K.f18840s, z10, zArr);
                v0 v0Var2 = this.K;
                boolean z11 = (v0Var2.f18828e == 4 || jA == v0Var2.f18840s) ? false : true;
                v0 v0Var3 = this.K;
                l0 l0Var5 = l0Var4;
                this.K = y(v0Var3.f18825b, jA, v0Var3.f18826c, v0Var3.f18827d, z11, 5);
                if (z11) {
                    Q(jA, true);
                }
                h();
                boolean[] zArr2 = new boolean[this.f18653a.length];
                int i11 = 0;
                while (true) {
                    h4.m0[] m0VarArr = this.f18653a;
                    if (i11 >= m0VarArr.length) {
                        break;
                    }
                    int iC = m0VarArr[i11].c();
                    zArr2[i11] = this.f18653a[i11].g();
                    h4.m0 m0Var = this.f18653a[i11];
                    l0 l0Var6 = l0Var5;
                    f2.c1 c1Var = l0Var6.f18722c[i11];
                    h hVar = this.f18666n;
                    long j10 = this.M0;
                    boolean z12 = zArr[i11];
                    a aVar = (a) m0Var.f6462e;
                    if (h4.m0.h(aVar)) {
                        if (c1Var != aVar.f18560i) {
                            m0Var.a(aVar, hVar);
                        } else if (z12) {
                            z = false;
                            aVar.z(j10, false, true);
                        }
                        z = false;
                    } else {
                        z = false;
                    }
                    a aVar2 = (a) m0Var.f6463f;
                    if (aVar2 != null && h4.m0.h(aVar2)) {
                        if (c1Var != aVar2.f18560i) {
                            m0Var.a(aVar2, hVar);
                        } else if (z12) {
                            aVar2.z(j10, z, true);
                        }
                    }
                    if (iC - this.f18653a[i11].c() > 0) {
                        G(i11, z);
                    }
                    this.f18661h0 -= iC - this.f18653a[i11].c();
                    i11++;
                    l0Var5 = l0Var6;
                }
                l(zArr2, this.M0);
                l0Var5.f18727h = true;
            } else {
                this.f18669s.n(l0Var3);
                if (l0Var3.f18724e) {
                    long jMax = Math.max(l0Var3.f18726g.f18759b, this.M0 - l0Var3.f18734p);
                    if (this.A && f() && this.f18669s.f18780k == l0Var3) {
                        h();
                    }
                    l0Var3.a(rVarJ, jMax, false, new boolean[l0Var3.f18729j.length]);
                }
            }
            u(true);
            if (this.K.f18828e != 4) {
                C();
                B0();
                this.f18660h.f(2);
                return;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0185  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void O(boolean z, boolean z4, boolean z10, boolean z11) {
        long j10;
        long jLongValue;
        long j11;
        boolean z12;
        r1.q0 q0Var;
        r1.q0 q0Var2;
        f2.c0 c0Var;
        List list;
        this.f18660h.e(2);
        this.G = false;
        if (this.H != null) {
            this.L.c(1);
            this.H = null;
        }
        this.Q0 = null;
        D0(false, true);
        h hVar = this.f18666n;
        hVar.f18702f = false;
        ba.n nVar = hVar.f18697a;
        if (nVar.f2721a) {
            nVar.d(nVar.a());
            nVar.f2721a = false;
        }
        this.M0 = 1000000000000L;
        for (int i10 = 0; i10 < this.f18653a.length; i10++) {
            try {
                i(i10);
            } catch (RuntimeException | k e7) {
                u1.a.g("Disable failed.", e7);
            }
        }
        this.T0 = -9223372036854775807L;
        if (z) {
            for (h4.m0 m0Var : this.f18653a) {
                try {
                    m0Var.k();
                } catch (RuntimeException e10) {
                    u1.a.g("Reset failed.", e10);
                }
            }
        }
        this.f18661h0 = 0;
        v0 v0Var = this.K;
        f2.c0 c0Var2 = v0Var.f18825b;
        long j12 = v0Var.f18840s;
        if (!this.K.f18825b.b()) {
            v0 v0Var2 = this.K;
            r1.o0 o0Var = this.l;
            f2.c0 c0Var3 = v0Var2.f18825b;
            r1.q0 q0Var3 = v0Var2.f18824a;
            j10 = (q0Var3.p() || q0Var3.g(c0Var3.f5236a, o0Var).f13508f) ? this.K.f18826c : this.K.f18840s;
        }
        if (z4) {
            this.f18671t0 = null;
            Pair pairO = o(this.K.f18824a);
            c0Var2 = (f2.c0) pairO.first;
            j11 = -9223372036854775807L;
            jLongValue = ((Long) pairO.second).longValue();
            z12 = c0Var2.equals(this.K.f18825b) ? false : true;
            this.f18669s.b();
            this.S = false;
            q0Var = this.K.f18824a;
            if (z10 || !(q0Var instanceof a1)) {
                q0Var2 = q0Var;
                c0Var = c0Var2;
            } else {
                a1 a1Var = (a1) q0Var;
                f2.e1 e1Var = (f2.e1) this.f18670t.f10963k;
                r1.q0[] q0VarArr = a1Var.f18578h;
                r1.q0[] q0VarArr2 = new r1.q0[q0VarArr.length];
                for (int i11 = 0; i11 < q0VarArr.length; i11++) {
                    q0VarArr2[i11] = new z0(q0VarArr[i11]);
                }
                a1 a1Var2 = new a1(q0VarArr2, a1Var.f18579i, e1Var);
                if (c0Var2.f5237b != -1) {
                    a1Var2.g(c0Var2.f5236a, this.l);
                    int i12 = this.l.f13505c;
                    r1.p0 p0Var = this.f18664k;
                    a1Var2.m(i12, p0Var, 0L);
                    c0Var = p0Var.a() ? new f2.c0(c0Var2.f5236a, c0Var2.f5239d) : c0Var2;
                    q0Var2 = a1Var2;
                }
            }
            v0 v0Var3 = this.K;
            int i13 = v0Var3.f18828e;
            k kVar = !z11 ? null : v0Var3.f18829f;
            j1 j1Var = !z12 ? j1.f5298d : v0Var3.f18831h;
            h2.r rVar = !z12 ? this.f18657e : v0Var3.f18832i;
            if (z12) {
                list = v0Var3.f18833j;
            } else {
                u7.e0 e0Var = u7.g0.f15471b;
                list = u7.y0.f15549e;
            }
            this.K = new v0(q0Var2, c0Var, j11, jLongValue, i13, kVar, false, j1Var, rVar, list, c0Var, v0Var3.l, v0Var3.f18835m, v0Var3.f18836n, v0Var3.f18837o, jLongValue, 0L, jLongValue, 0L, false);
            if (z10) {
                return;
            }
            n0 n0Var = this.f18669s;
            if (!n0Var.f18785q.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (int i14 = 0; i14 < n0Var.f18785q.size(); i14++) {
                    ((l0) n0Var.f18785q.get(i14)).i();
                }
                n0Var.f18785q = arrayList;
                n0Var.f18781m = null;
                n0Var.k();
            }
            m7.l lVar = this.f18670t;
            HashMap map = (HashMap) lVar.f10959g;
            for (t0 t0Var : map.values()) {
                try {
                    t0Var.f18809a.n(t0Var.f18810b);
                } catch (RuntimeException e11) {
                    u1.a.g("Failed to release child source.", e11);
                }
                f2.a aVar = t0Var.f18809a;
                s0 s0Var = t0Var.f18811c;
                aVar.q(s0Var);
                t0Var.f18809a.p(s0Var);
            }
            map.clear();
            ((HashSet) lVar.f10960h).clear();
            lVar.f10953a = false;
            return;
        }
        jLongValue = j12;
        j11 = j10;
        this.f18669s.b();
        this.S = false;
        q0Var = this.K.f18824a;
        if (z10) {
            q0Var2 = q0Var;
            c0Var = c0Var2;
        }
        v0 v0Var32 = this.K;
        int i132 = v0Var32.f18828e;
        if (!z11) {
        }
        j1 j1Var2 = !z12 ? j1.f5298d : v0Var32.f18831h;
        h2.r rVar2 = !z12 ? this.f18657e : v0Var32.f18832i;
        if (z12) {
        }
        this.K = new v0(q0Var2, c0Var, j11, jLongValue, i132, kVar, false, j1Var2, rVar2, list, c0Var, v0Var32.l, v0Var32.f18835m, v0Var32.f18836n, v0Var32.f18837o, jLongValue, 0L, jLongValue, 0L, false);
        if (z10) {
        }
    }

    public final void P() {
        l0 l0Var = this.f18669s.f18778i;
        this.O = l0Var != null && l0Var.f18726g.f18767j && this.N;
    }

    public final void Q(long j10, boolean z) {
        l0 l0Var = this.f18669s.f18778i;
        long j11 = j10 + (l0Var == null ? 1000000000000L : l0Var.f18734p);
        this.M0 = j11;
        this.f18666n.f18697a.d(j11);
        for (h4.m0 m0Var : this.f18653a) {
            long j12 = this.M0;
            a aVarD = m0Var.d(l0Var);
            if (aVarD != null) {
                aVarD.z(j12, false, z);
            }
        }
        for (l0 l0Var2 = r0.f18778i; l0Var2 != null; l0Var2 = l0Var2.f18731m) {
            for (h2.p pVar : l0Var2.f18733o.f6408c) {
                if (pVar != null) {
                    pVar.j();
                }
            }
        }
    }

    public final void R(r1.q0 q0Var, r1.q0 q0Var2) {
        if (q0Var.p() && q0Var2.p()) {
            return;
        }
        ArrayList arrayList = this.f18667p;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            g.b.t(arrayList.get(size));
            throw null;
        }
    }

    public final void U(long j10) {
        boolean z = this.F && this.E.f18626d;
        long j11 = W0;
        if (z) {
            jMin = this.K.f18828e != 3 ? j11 : 1000L;
            for (h4.m0 m0Var : this.f18653a) {
                long j12 = this.M0;
                long j13 = this.N0;
                a aVar = (a) m0Var.f6462e;
                long jH = h4.m0.h(aVar) ? aVar.h(j12, j13) : Long.MAX_VALUE;
                a aVar2 = (a) m0Var.f6463f;
                if (aVar2 != null && aVar2.f18559h != 0) {
                    jH = Math.min(jH, aVar2.h(j12, j13));
                }
                jMin = Math.min(jMin, u1.f0.R(jH));
            }
            if (this.K.m()) {
                l0 l0Var = this.f18669s.f18778i;
                if ((l0Var != null ? l0Var.f18731m : null) != null) {
                    if ((u1.f0.G(jMin) * this.K.f18837o.f13452a) + this.M0 >= r1.e()) {
                        jMin = Math.min(jMin, j11);
                    }
                }
            }
        } else if (this.K.f18828e != 3 || r0()) {
            jMin = j11;
        }
        this.f18660h.f15188a.sendEmptyMessageAtTime(2, j10 + jMin);
    }

    public final void V(boolean z) {
        f2.c0 c0Var = this.f18669s.f18778i.f18726g.f18758a;
        long jX = X(c0Var, this.K.f18840s, true, false);
        if (jX != this.K.f18840s) {
            v0 v0Var = this.K;
            this.K = y(c0Var, jX, v0Var.f18826c, v0Var.f18827d, z, 5);
        }
    }

    /* JADX WARN: Type inference failed for: r1v21, types: [f2.a0, java.lang.Object] */
    public final void W(e0 e0Var) throws Throwable {
        boolean z;
        long j10;
        long jMax;
        f2.c0 c0Var;
        long j11;
        long j12;
        long j13;
        long j14;
        long jK;
        v0 v0Var;
        int i10;
        if (this.G) {
            if (this.H != null) {
                this.I++;
                this.L.c(1);
            }
            this.H = e0Var;
            return;
        }
        this.L.c(1);
        Pair pairS = S(this.K.f18824a, e0Var, true, this.T, this.V, this.f18664k, this.l);
        if (pairS == null) {
            Pair pairO = o(this.K.f18824a);
            c0Var = (f2.c0) pairO.first;
            long jLongValue = ((Long) pairO.second).longValue();
            z = !this.K.f18824a.p();
            j10 = jLongValue;
            jMax = -9223372036854775807L;
        } else {
            Object obj = pairS.first;
            long jLongValue2 = ((Long) pairS.second).longValue();
            long j15 = e0Var.f18644c == -9223372036854775807L ? -9223372036854775807L : jLongValue2;
            f2.c0 c0VarP = this.f18669s.p(this.K.f18824a, obj, jLongValue2);
            if (c0VarP.b()) {
                this.K.f18824a.g(c0VarP.f5236a, this.l);
                if (this.l.e(c0VarP.f5237b) == c0VarP.f5238c) {
                    this.l.f13509g.getClass();
                }
                this.l.f13509g.a(c0VarP.f5237b).getClass();
                j10 = 0;
                jMax = Math.max(j15, 0L);
                z = true;
            } else {
                z = e0Var.f18644c == -9223372036854775807L;
                j10 = jLongValue2;
                jMax = j15;
            }
            c0Var = c0VarP;
        }
        try {
            try {
                if (this.K.f18824a.p()) {
                    this.f18671t0 = e0Var;
                } else {
                    if (pairS != null) {
                        if (c0Var.equals(this.K.f18825b)) {
                            l0 l0Var = this.f18669s.f18778i;
                            if (l0Var == null || !l0Var.f18724e || j10 == 0) {
                                jK = j10;
                            } else {
                                ?? r12 = l0Var.f18720a;
                                long j16 = this.f18664k.l;
                                if (this.F && j16 != -9223372036854775807L) {
                                    this.E.getClass();
                                }
                                jK = r12.k(j10, this.D);
                            }
                            if (u1.f0.R(jK) == u1.f0.R(this.K.f18840s) && ((i10 = (v0Var = this.K).f18828e) == 2 || i10 == 3)) {
                                long j17 = v0Var.f18840s;
                                this.K = y(c0Var, j17, jMax, j17, z, 2);
                                return;
                            }
                            j13 = jK;
                        } else {
                            j13 = j10;
                        }
                        boolean z4 = this.K.f18828e == 4;
                        n0 n0Var = this.f18669s;
                        j11 = j10;
                        try {
                            long jX = X(c0Var, j13, n0Var.f18778i != n0Var.f18779j, z4);
                            boolean z10 = z | (j11 != jX);
                            try {
                                v0 v0Var2 = this.K;
                                r1.q0 q0Var = v0Var2.f18824a;
                                C0(q0Var, c0Var, q0Var, v0Var2.f18825b, jMax, true);
                                z = z10;
                                j14 = jX;
                                this.K = y(c0Var, j14, jMax, j14, z, 2);
                            } catch (Throwable th2) {
                                th = th2;
                                z = z10;
                                j12 = jX;
                                this.K = y(c0Var, j12, jMax, j12, z, 2);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            j12 = j11;
                            this.K = y(c0Var, j12, jMax, j12, z, 2);
                            throw th;
                        }
                    }
                    if (this.K.f18828e != 1) {
                        n0(4);
                    }
                    O(false, true, false, true);
                }
                j14 = j10;
                this.K = y(c0Var, j14, jMax, j14, z, 2);
            } catch (Throwable th4) {
                th = th4;
                j12 = j10;
            }
        } catch (Throwable th5) {
            th = th5;
            j11 = j10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0116  */
    /* JADX WARN: Type inference failed for: r10v15, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v16, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v26, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v27, types: [f2.a0, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long X(f2.c0 c0Var, long j10, boolean z, boolean z4) {
        n0 n0Var;
        int i10;
        v0();
        boolean z10 = true;
        D0(false, true);
        if (z4 || this.K.f18828e == 3) {
            n0(2);
        }
        l0 l0Var = this.f18669s.f18778i;
        l0 l0Var2 = l0Var;
        while (l0Var2 != null && !c0Var.equals(l0Var2.f18726g.f18758a)) {
            l0Var2 = l0Var2.f18731m;
        }
        if (z || l0Var != l0Var2 || (l0Var2 != null && l0Var2.f18734p + j10 < 0)) {
            for (int i11 = 0; i11 < this.f18653a.length; i11++) {
                i(i11);
            }
            this.T0 = -9223372036854775807L;
            if (l0Var2 != null) {
                while (true) {
                    n0Var = this.f18669s;
                    if (n0Var.f18778i == l0Var2) {
                        break;
                    }
                    n0Var.a();
                }
                n0Var.n(l0Var2);
                l0Var2.f18734p = 1000000000000L;
                l(new boolean[this.f18653a.length], this.f18669s.f18779j.e());
                l0Var2.f18727h = true;
            }
        }
        h();
        if (this.F) {
            for (h4.m0 m0Var : this.f18653a) {
                if (m0Var.g() && ((i10 = ((a) m0Var.f6462e).f18553b) == 2 || i10 == 4)) {
                    this.G = true;
                    break;
                }
            }
        }
        if (l0Var2 != null) {
            this.f18669s.n(l0Var2);
            if (!l0Var2.f18724e) {
                l0Var2.f18726g = l0Var2.f18726g.b(j10, -9223372036854775807L);
            } else if (l0Var2.f18725f) {
                if (this.F && this.E.f18628f && !this.K.f18824a.p() && l0Var2.f18726g.f18758a.equals(this.K.f18825b)) {
                    long j11 = l0Var2.f18734p + j10;
                    boolean z11 = true;
                    for (h4.m0 m0Var2 : this.f18653a) {
                        if (m0Var2.g()) {
                            a aVarD = m0Var2.d(l0Var2);
                            z11 &= aVarD != null && aVarD.D(j11);
                        }
                    }
                    if (z11) {
                        ?? r10 = l0Var2.f18720a;
                        long j12 = this.K.f18840s;
                        e1 e1Var = e1.f18645c;
                        if (r10.k(j12, e1Var) == l0Var2.f18720a.k(j10, e1Var)) {
                            z10 = false;
                        }
                    }
                } else {
                    j10 = l0Var2.f18720a.h(j10);
                    l0Var2.f18720a.i(j10 - this.f18665m);
                }
            }
            Q(j10, z10);
            C();
        } else {
            this.f18669s.b();
            Q(j10, true);
        }
        u(false);
        this.f18660h.f(2);
        return j10;
    }

    public final void Y(y0 y0Var) {
        y0Var.getClass();
        Looper looper = y0Var.f18877e;
        Looper looper2 = this.f18663j;
        u1.b0 b0Var = this.f18660h;
        if (looper != looper2) {
            b0Var.b(15, y0Var).b();
            return;
        }
        synchronized (y0Var) {
        }
        try {
            y0Var.f18873a.d(y0Var.f18875c, y0Var.f18876d);
            y0Var.a(true);
            int i10 = this.K.f18828e;
            if (i10 == 3 || i10 == 2) {
                b0Var.f(2);
            }
        } catch (Throwable th2) {
            y0Var.a(true);
            throw th2;
        }
    }

    public final void Z(y0 y0Var) {
        Looper looper = y0Var.f18877e;
        if (looper.getThread().isAlive()) {
            this.f18668q.a(looper, null).d(new s1.f(this, 16, y0Var));
        } else {
            u1.a.p("Trying to send message on a dead thread.");
            y0Var.a(false);
        }
    }

    public final void a(c0 c0Var, int i10) throws Throwable {
        this.L.c(1);
        m7.l lVar = this.f18670t;
        if (i10 == -1) {
            i10 = ((ArrayList) lVar.f10955c).size();
        }
        v(lVar.a(i10, c0Var.f18598a, c0Var.f18599b), false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a0(r1.d dVar, boolean z) {
        int i10;
        h2.n nVar = (h2.n) this.f18656d;
        if (!nVar.f6400i.equals(dVar)) {
            nVar.f6400i = dVar;
            nVar.l();
        }
        if (!z) {
            dVar = null;
        }
        s1.b bVar = this.B;
        if (!Objects.equals(bVar.f13879d, dVar)) {
            bVar.f13879d = dVar;
            if (dVar == null) {
                i10 = 0;
                bVar.f13881f = i10;
                a9.o.i("Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.", i10 != 1 || i10 == 0);
            } else {
                i10 = 3;
                int i11 = dVar.f13428b;
                switch (i11) {
                    case 0:
                        u1.a.p("Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                        i10 = 1;
                        break;
                    case 1:
                    case 14:
                        i10 = 1;
                        break;
                    case 2:
                    case 4:
                        i10 = 2;
                        break;
                    case 3:
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 13:
                        break;
                    case 11:
                        if (dVar.f13427a == 1) {
                        }
                        break;
                    case 15:
                    default:
                        org.bouncycastle.jcajce.provider.digest.a.o(i11, "Unidentified audio usage: ");
                        i10 = 0;
                        break;
                    case 16:
                        i10 = 4;
                        break;
                }
                bVar.f13881f = i10;
                if (i10 != 1) {
                    a9.o.i("Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.", i10 != 1 || i10 == 0);
                }
            }
        }
        v0 v0Var = this.K;
        boolean z4 = v0Var.l;
        A0(bVar.d(v0Var.f18828e, z4), v0Var.f18836n, v0Var.f18835m, z4);
    }

    @Override // f2.z
    public final void b(f2.d1 d1Var) {
        this.f18660h.b(9, (f2.a0) d1Var).b();
    }

    public final void b0(boolean z, u1.e eVar) {
        if (this.X != z) {
            this.X = z;
            if (!z) {
                for (h4.m0 m0Var : this.f18653a) {
                    m0Var.k();
                }
            }
        }
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // androidx.media3.exoplayer.video.x
    public final void c(long j10, long j11, r1.p pVar, MediaFormat mediaFormat) {
        if (this.G) {
            this.f18660h.a(37).b();
        }
    }

    public final void c0(y yVar) {
        for (h4.m0 m0Var : this.f18653a) {
            a aVar = (a) m0Var.f6462e;
            if (aVar.f18553b == 4) {
                aVar.d(23, yVar);
                a aVar2 = (a) m0Var.f6463f;
                if (aVar2 != null) {
                    aVar2.d(23, yVar);
                }
            }
        }
    }

    @Override // f2.z
    public final void d(f2.a0 a0Var) {
        this.f18660h.b(8, a0Var).b();
    }

    public final void d0(c0 c0Var) throws Throwable {
        this.L.c(1);
        int i10 = c0Var.f18600c;
        ArrayList arrayList = c0Var.f18598a;
        f2.e1 e1Var = c0Var.f18599b;
        if (i10 != -1) {
            this.f18671t0 = new e0(new a1(arrayList, e1Var), c0Var.f18600c, c0Var.f18601d);
        }
        m7.l lVar = this.f18670t;
        ArrayList arrayList2 = (ArrayList) lVar.f10955c;
        lVar.i(0, arrayList2.size());
        v(lVar.a(arrayList2.size(), arrayList, e1Var), false);
    }

    public final void e() {
        for (h4.m0 m0Var : this.f18653a) {
            d1 d1Var = this.F ? this.E : null;
            ((a) m0Var.f6462e).d(18, d1Var);
            a aVar = (a) m0Var.f6463f;
            if (aVar != null) {
                aVar.d(18, d1Var);
            }
        }
    }

    public final void e0(boolean z) {
        this.N = z;
        P();
        if (this.O) {
            n0 n0Var = this.f18669s;
            if (n0Var.f18779j != n0Var.f18778i) {
                V(true);
                u(false);
            }
        }
    }

    public final boolean f() {
        if (!this.A) {
            return false;
        }
        for (h4.m0 m0Var : this.f18653a) {
            if (m0Var.f()) {
                return true;
            }
        }
        return false;
    }

    public final void f0(r1.h0 h0Var) {
        this.f18660h.e(16);
        h hVar = this.f18666n;
        hVar.e(h0Var);
        r1.h0 h0VarC = hVar.c();
        x(h0VarC, h0VarC.f13452a, true, true);
    }

    public final void g() {
        N();
        V(true);
    }

    public final void g0(n nVar) {
        this.S0 = nVar;
        r1.q0 q0Var = this.K.f18824a;
        n0 n0Var = this.f18669s;
        n0Var.getClass();
        nVar.getClass();
        if (n0Var.f18785q.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < n0Var.f18785q.size(); i10++) {
            ((l0) n0Var.f18785q.get(i10)).i();
        }
        n0Var.f18785q = arrayList;
        n0Var.f18781m = null;
        n0Var.k();
    }

    public final void h() {
        a aVar;
        if (this.A && f()) {
            for (h4.m0 m0Var : this.f18653a) {
                int iC = m0Var.c();
                h hVar = this.f18666n;
                if (m0Var.f()) {
                    int i10 = m0Var.f6459b;
                    boolean z = i10 == 4 || i10 == 2;
                    int i11 = i10 != 4 ? 0 : 1;
                    if (z) {
                        try {
                            aVar = (a) m0Var.f6462e;
                        } catch (RuntimeException e7) {
                            u1.a.g("Disable prewarming failed.", e7);
                        }
                    } else {
                        aVar = (a) m0Var.f6463f;
                        aVar.getClass();
                    }
                    m0Var.a(aVar, hVar);
                    try {
                        m0Var.i(z);
                    } catch (RuntimeException e10) {
                        u1.a.g("Reset prewarming failed.", e10);
                    }
                    m0Var.f6459b = i11;
                }
                this.f18661h0 -= iC - m0Var.c();
            }
            this.T0 = -9223372036854775807L;
        }
    }

    public final void h0(int i10) {
        this.T = i10;
        r1.q0 q0Var = this.K.f18824a;
        n0 n0Var = this.f18669s;
        n0Var.f18776g = i10;
        int iR = n0Var.r(q0Var);
        if ((iR & 1) != 0) {
            V(true);
        } else if ((iR & 2) != 0) {
            h();
        }
        u(false);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        k kVar;
        boolean z;
        int i10;
        l0 l0Var;
        f2.c0 c0Var;
        l0 l0Var2;
        try {
            switch (message.what) {
                case 1:
                    boolean z4 = message.arg1 != 0;
                    int i11 = message.arg2;
                    this.L.c(1);
                    A0(this.B.d(this.K.f18828e, z4), i11 >> 4, i11 & 15, z4);
                    break;
                case 2:
                    j();
                    break;
                case 3:
                    W((e0) message.obj);
                    break;
                case 4:
                    f0((r1.h0) message.obj);
                    break;
                case 5:
                    k0((e1) message.obj);
                    break;
                case 6:
                    u0(false, true);
                    break;
                case 7:
                    K((u1.e) message.obj);
                    return true;
                case 8:
                    w((f2.a0) message.obj);
                    break;
                case 9:
                    s((f2.a0) message.obj);
                    break;
                case 10:
                    N();
                    break;
                case 11:
                    h0(message.arg1);
                    break;
                case 12:
                    l0(message.arg1 != 0);
                    break;
                case 13:
                    b0(message.arg1 != 0, (u1.e) message.obj);
                    break;
                case 14:
                    Y((y0) message.obj);
                    break;
                case 15:
                    Z((y0) message.obj);
                    break;
                case 16:
                    r1.h0 h0Var = (r1.h0) message.obj;
                    x(h0Var, h0Var.f13452a, true, false);
                    break;
                case 17:
                    d0((c0) message.obj);
                    break;
                case 18:
                    a((c0) message.obj, message.arg1);
                    break;
                case 19:
                    g.b.t(message.obj);
                    I();
                    throw null;
                case 20:
                    M(message.arg1, message.arg2, (f2.e1) message.obj);
                    break;
                case 21:
                    m0((f2.e1) message.obj);
                    break;
                case 22:
                    H();
                    break;
                case 23:
                    e0(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    g();
                    break;
                case 26:
                    N();
                    V(true);
                    break;
                case 27:
                    y0(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    g0((n) message.obj);
                    break;
                case 29:
                    J();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    p0(pair.first, (u1.e) pair.second);
                    break;
                case 31:
                    a0((r1.d) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    q0(((Float) message.obj).floatValue());
                    break;
                case 33:
                    q(message.arg1);
                    break;
                case 34:
                    r();
                    break;
                case 35:
                    o0((androidx.media3.exoplayer.video.x) message.obj);
                    break;
                case 36:
                    i0(((Boolean) message.obj).booleanValue());
                    break;
                case 37:
                    this.G = false;
                    e0 e0Var = this.H;
                    if (e0Var != null) {
                        W(e0Var);
                        this.H = null;
                        break;
                    }
                    break;
                case 38:
                    j0((d1) message.obj);
                    break;
                case 39:
                    c0((y) message.obj);
                    break;
            }
        } catch (b2.b e7) {
            t(e7, e7.f2526a);
        } catch (RuntimeException e10) {
            k kVar2 = new k(2, e10, ((e10 instanceof IllegalStateException) || (e10 instanceof IllegalArgumentException)) ? 1004 : 1000);
            u1.a.g("Playback error", kVar2);
            u0(true, false);
            this.K = this.K.f(kVar2);
        } catch (r1.f0 e11) {
            boolean z10 = e11.f13439a;
            int i12 = e11.f13440b;
            if (i12 == 1) {
                i = z10 ? 3001 : 3003;
            } else if (i12 == 4) {
                i = z10 ? 3002 : 3004;
            }
            t(e11, i);
        } catch (w1.i e12) {
            t(e12, e12.f17365a);
        } catch (IOException e13) {
            t(e13, NoConst.MIN_HEARTBEAT_INTERVAL);
        } catch (k e14) {
            k kVarA = e14;
            int i13 = kVarA.f18711c;
            n0 n0Var = this.f18669s;
            if (i13 == 1 && (l0Var2 = n0Var.f18779j) != null && kVarA.f18716h == null) {
                kVarA = kVarA.a(l0Var2.f18726g.f18758a);
            }
            int i14 = kVarA.f18711c;
            u1.b0 b0Var = this.f18660h;
            if (i14 == 1 && (c0Var = kVarA.f18716h) != null && A(kVarA.f18713e, c0Var)) {
                this.U0 = true;
                h();
                l0 l0VarG = n0Var.g();
                l0 l0Var3 = n0Var.f18778i;
                if (l0Var3 != l0VarG) {
                    while (l0Var3 != null) {
                        l0 l0Var4 = l0Var3.f18731m;
                        if (l0Var4 == l0VarG) {
                            break;
                        }
                        l0Var3 = l0Var4;
                    }
                }
                n0Var.n(l0Var3);
                if (this.K.f18828e != 4) {
                    C();
                    b0Var.f(2);
                }
            } else {
                k kVar3 = this.Q0;
                if (kVar3 != null) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(kVar3, kVarA);
                    kVarA = this.Q0;
                }
                k kVar4 = kVarA;
                if (kVar4.f18711c != 1 || n0Var.f18778i == n0Var.f18779j) {
                    kVar = kVar4;
                } else {
                    while (true) {
                        l0Var = n0Var.f18778i;
                        if (l0Var == n0Var.f18779j) {
                            break;
                        }
                        n0Var.a();
                    }
                    a9.o.n(l0Var);
                    E();
                    m0 m0Var = l0Var.f18726g;
                    f2.c0 c0Var2 = m0Var.f18758a;
                    long j10 = m0Var.f18759b;
                    kVar = kVar4;
                    this.K = y(c0Var2, j10, m0Var.f18761d, j10, true, 0);
                }
                if (kVar.f18717i && (this.Q0 == null || (i10 = kVar.f13449a) == 5004 || i10 == 5003)) {
                    u1.a.q("Recoverable renderer error", kVar);
                    if (this.Q0 == null) {
                        this.Q0 = kVar;
                    }
                    u1.a0 a0VarB = b0Var.b(25, kVar);
                    b0Var.getClass();
                    Message message2 = a0VarB.f15183a;
                    message2.getClass();
                    b0Var.f15188a.sendMessageAtFrontOfQueue(message2);
                    a0VarB.a();
                } else {
                    u1.a.g("Playback error", kVar);
                    z = true;
                    u0(true, false);
                    this.K = this.K.f(kVar);
                }
            }
        }
        z = true;
        E();
        return z;
    }

    public final void i(int i10) {
        h4.m0[] m0VarArr = this.f18653a;
        int iC = m0VarArr[i10].c();
        h4.m0 m0Var = m0VarArr[i10];
        a aVar = (a) m0Var.f6462e;
        h hVar = this.f18666n;
        m0Var.a(aVar, hVar);
        a aVar2 = (a) m0Var.f6463f;
        if (aVar2 != null) {
            boolean z = (aVar2.f18559h != 0) && m0Var.f6459b != 3;
            m0Var.a(aVar2, hVar);
            m0Var.i(false);
            if (z) {
                aVar2.getClass();
                aVar2.d(17, (a) m0Var.f6462e);
            }
        }
        m0Var.f6459b = 0;
        G(i10, false);
        this.f18661h0 -= iC;
    }

    public final void i0(boolean z) throws Throwable {
        if (!z) {
            e0 e0Var = this.H;
            u1.b0 b0Var = this.f18660h;
            if (e0Var != null && this.G && !b0Var.f15188a.hasMessages(37)) {
                this.I++;
            }
            int i10 = this.I;
            if (i10 > 0) {
                this.z.d(new a2.g0(i10, 4, this));
            }
            this.I = 0;
            this.G = false;
            b0Var.e(37);
            e0 e0Var2 = this.H;
            if (e0Var2 != null) {
                W(e0Var2);
                this.H = null;
                this.G = false;
            }
        }
        this.F = z;
        e();
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x015c  */
    /* JADX WARN: Type inference failed for: r4v1, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v22, types: [f2.a0, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        boolean z;
        boolean z4;
        long j10;
        boolean z10;
        long jMin;
        int i10;
        boolean zB;
        boolean z11;
        boolean z12;
        v0 v0Var;
        int i11;
        this.f18668q.getClass();
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.f18660h.e(2);
        if (!this.C) {
            z0();
        }
        int i12 = this.K.f18828e;
        if (i12 == 1 || i12 == 4) {
            return;
        }
        if (this.C) {
            z0();
        }
        l0 l0Var = this.f18669s.f18778i;
        if (l0Var == null) {
            U(jUptimeMillis);
            return;
        }
        Trace.beginSection("doSomeWork");
        B0();
        if (l0Var.f18724e) {
            this.f18668q.getClass();
            this.N0 = u1.f0.G(SystemClock.elapsedRealtime());
            l0Var.f18720a.i(this.K.f18840s - this.f18665m);
            int i13 = 0;
            z = true;
            z4 = true;
            while (true) {
                h4.m0[] m0VarArr = this.f18653a;
                if (i13 >= m0VarArr.length) {
                    break;
                }
                h4.m0 m0Var = m0VarArr[i13];
                if (m0Var.c() == 0) {
                    G(i13, false);
                } else {
                    long j11 = this.M0;
                    long j12 = this.N0;
                    a aVar = (a) m0Var.f6462e;
                    if (h4.m0.h(aVar)) {
                        aVar.x(j11, j12);
                    }
                    a aVar2 = (a) m0Var.f6463f;
                    if (aVar2 != null && aVar2.f18559h != 0) {
                        aVar2.x(j11, j12);
                    }
                    if (z) {
                        a aVar3 = (a) m0Var.f6462e;
                        boolean zL = h4.m0.h(aVar3) ? aVar3.l() : true;
                        a aVar4 = (a) m0Var.f6463f;
                        if (aVar4 != null && aVar4.f18559h != 0) {
                            zL &= aVar4.l();
                        }
                        z = zL;
                        a aVarD = m0Var.d(l0Var);
                        boolean z13 = aVarD == null || aVarD.k() || aVarD.m() || aVarD.l();
                        G(i13, z13);
                        z4 = z4 && z13;
                        if (!z13) {
                            F(i13);
                        }
                    }
                }
                i13++;
            }
        } else {
            l0Var.f18720a.g();
            z = true;
            z4 = true;
        }
        long j13 = l0Var.f18726g.f18763f;
        boolean z14 = z && l0Var.f18724e && (j13 == -9223372036854775807L || j13 <= this.K.f18840s);
        if (z14 && this.O) {
            this.O = false;
            int i14 = this.K.f18836n;
            this.L.c(0);
            A0(this.B.d(this.K.f18828e, false), i14, 5, false);
        }
        if (!z14 || !l0Var.f18726g.f18768k) {
            v0 v0Var2 = this.K;
            if (v0Var2.f18828e == 2) {
                if (this.f18661h0 == 0) {
                    zB = B();
                    j10 = jUptimeMillis;
                } else {
                    if (z4) {
                        if (v0Var2.f18830g) {
                            n0 n0Var = this.f18669s;
                            l0 l0Var2 = n0Var.f18778i;
                            long j14 = s0(v0Var2.f18824a, l0Var2.f18726g.f18758a) ? this.f18672v.f18636h : -9223372036854775807L;
                            l0 l0Var3 = n0Var.l;
                            boolean z15 = l0Var3.g() && l0Var3.f18726g.f18768k;
                            boolean z16 = l0Var3.f18726g.f18758a.b() && !l0Var3.f18724e;
                            if (!z15 && !z16) {
                                long jP = p(l0Var3.d());
                                r1.q0 q0Var = this.K.f18824a;
                                f2.c0 c0Var = l0Var2.f18726g.f18758a;
                                float f10 = this.f18666n.c().f13452a;
                                boolean z17 = this.K.l;
                                boolean z18 = this.P;
                                g gVar = (g) this.f18658f;
                                gVar.getClass();
                                j10 = jUptimeMillis;
                                r1.v vVar = q0Var.m(q0Var.g(c0Var.f5236a, gVar.f18677b).f13505c, gVar.f18676a, 0L).f13537c.f13627b;
                                if (vVar == null) {
                                    z10 = false;
                                    if (f10 != 1.0f) {
                                        double d10 = jP;
                                        double d11 = f10;
                                        Double.isNaN(d10);
                                        Double.isNaN(d11);
                                        jP = Math.round(d10 / d11);
                                    }
                                    jMin = !z18 ? z10 ? gVar.f18686k : gVar.f18685j : z10 ? gVar.f18684i : gVar.f18683h;
                                    if (j14 != -9223372036854775807L) {
                                        jMin = Math.min(j14 / 2, jMin);
                                    }
                                    if (jMin > 0 && jP < jMin) {
                                        if (!(!z10 ? gVar.f18687m : false)) {
                                            z1.i iVar = this.f18674x;
                                            f fVar = (f) gVar.f18690p.get(iVar);
                                            fVar.getClass();
                                            synchronized (fVar) {
                                                i10 = fVar.f18652d;
                                            }
                                            int i15 = i10 * gVar.f18678c.f8432b;
                                            f fVar2 = (f) gVar.f18690p.get(iVar);
                                            fVar2.getClass();
                                            if (i15 >= fVar2.f18651c) {
                                            }
                                        }
                                    }
                                } else {
                                    String scheme = vVar.f13592a.getScheme();
                                    if (TextUtils.isEmpty(scheme) || g.r.contains(scheme)) {
                                        z10 = true;
                                    }
                                    if (f10 != 1.0f) {
                                    }
                                    if (!z18) {
                                    }
                                    if (j14 != -9223372036854775807L) {
                                    }
                                    if (jMin > 0) {
                                        if (!(!z10 ? gVar.f18687m : false)) {
                                        }
                                    }
                                }
                            }
                            zB = true;
                        } else {
                            j10 = jUptimeMillis;
                            zB = true;
                        }
                        if (this.K.f18828e != 2) {
                            int i16 = 0;
                            while (true) {
                                h4.m0[] m0VarArr2 = this.f18653a;
                                if (i16 >= m0VarArr2.length) {
                                    break;
                                }
                                if (m0VarArr2[i16].d(l0Var) != null) {
                                    F(i16);
                                }
                                i16++;
                            }
                            v0 v0Var3 = this.K;
                            z11 = !v0Var3.f18830g && v0Var3.r < 500000 && z(this.f18669s.l) && r0();
                        }
                        if (z11) {
                            this.R0 = -9223372036854775807L;
                        } else if (this.R0 == -9223372036854775807L) {
                            this.f18668q.getClass();
                            this.R0 = SystemClock.elapsedRealtime();
                        } else {
                            this.f18668q.getClass();
                            if (SystemClock.elapsedRealtime() - this.R0 >= 4000) {
                                throw new u1.y(0, 4000);
                            }
                        }
                        boolean z19 = !r0() && this.K.f18828e == 3;
                        z12 = !this.Z && this.Y && z19;
                        v0Var = this.K;
                        if (v0Var.f18838p != z12) {
                            this.K = v0Var.i(z12);
                        }
                        this.Y = false;
                        if (!z12 && (i11 = this.K.f18828e) != 4 && (z19 || i11 == 2 || (i11 == 3 && this.f18661h0 != 0))) {
                            U(j10);
                        }
                        Trace.endSection();
                    }
                    j10 = jUptimeMillis;
                    zB = false;
                }
                if (zB) {
                    n0(3);
                    this.Q0 = null;
                    if (r0()) {
                        D0(false, false);
                        h hVar = this.f18666n;
                        hVar.f18702f = true;
                        hVar.f18697a.f();
                        t0();
                    }
                }
                if (this.K.f18828e != 2) {
                }
                if (z11) {
                }
                if (r0()) {
                }
                if (this.Z) {
                }
                v0Var = this.K;
                if (v0Var.f18838p != z12) {
                }
                this.Y = false;
                if (!z12) {
                    U(j10);
                }
                Trace.endSection();
            }
            j10 = jUptimeMillis;
            if (this.K.f18828e == 3 && (this.f18661h0 != 0 ? !z4 : !B())) {
                D0(r0(), false);
                n0(2);
                if (this.P) {
                    for (l0 l0Var4 = this.f18669s.f18778i; l0Var4 != null; l0Var4 = l0Var4.f18731m) {
                        for (h2.p pVar : l0Var4.f18733o.f6408c) {
                            if (pVar != null) {
                                pVar.k();
                            }
                        }
                    }
                    e eVar = this.f18672v;
                    long j15 = eVar.f18636h;
                    if (j15 != -9223372036854775807L) {
                        long j16 = j15 + eVar.f18630b;
                        eVar.f18636h = j16;
                        long j17 = eVar.f18635g;
                        if (j17 != -9223372036854775807L && j16 > j17) {
                            eVar.f18636h = j17;
                        }
                        eVar.l = -9223372036854775807L;
                    }
                }
                v0();
            }
            if (this.K.f18828e != 2) {
            }
            if (z11) {
            }
            if (r0()) {
            }
            if (this.Z) {
            }
            v0Var = this.K;
            if (v0Var.f18838p != z12) {
            }
            this.Y = false;
            if (!z12) {
            }
            Trace.endSection();
        }
        n0(4);
        v0();
        j10 = jUptimeMillis;
        if (this.K.f18828e != 2) {
        }
        if (z11) {
        }
        if (r0()) {
        }
        if (this.Z) {
        }
        v0Var = this.K;
        if (v0Var.f18838p != z12) {
        }
        this.Y = false;
        if (!z12) {
        }
        Trace.endSection();
    }

    public final void j0(d1 d1Var) {
        this.E = d1Var;
        e();
    }

    public final void k(l0 l0Var, int i10, boolean z, long j10) {
        h4.m0 m0Var = this.f18653a[i10];
        if (m0Var.g()) {
            return;
        }
        boolean z4 = l0Var == this.f18669s.f18778i;
        h2.r rVar = l0Var.f18733o;
        b1 b1Var = rVar.f6407b[i10];
        h2.p pVar = rVar.f6408c[i10];
        boolean z10 = r0() && this.K.f18828e == 3;
        boolean z11 = !z && z10;
        this.f18661h0++;
        f2.c1 c1Var = l0Var.f18722c[i10];
        long j11 = l0Var.f18734p;
        m0 m0Var2 = l0Var.f18726g;
        int length = pVar != null ? pVar.length() : 0;
        r1.p[] pVarArr = new r1.p[length];
        boolean z12 = z10;
        for (int i11 = 0; i11 < length; i11++) {
            pVar.getClass();
            pVarArr[i11] = pVar.c(i11);
        }
        int i12 = m0Var.f6459b;
        f2.c0 c0Var = m0Var2.f18758a;
        h hVar = this.f18666n;
        if (i12 == 0 || i12 == 2 || i12 == 4) {
            boolean z13 = z11;
            m0Var.f6460c = true;
            a aVar = (a) m0Var.f6462e;
            a9.o.t(aVar.f18559h == 0);
            aVar.f18555d = b1Var;
            aVar.r = c0Var;
            aVar.f18559h = 1;
            aVar.o(z13, z4);
            aVar.y(pVarArr, c1Var, j10, j11, c0Var);
            aVar.z(j10, z13, true);
            hVar.d(aVar);
        } else {
            m0Var.f6461d = true;
            a aVar2 = (a) m0Var.f6463f;
            aVar2.getClass();
            a9.o.t(aVar2.f18559h == 0);
            aVar2.f18555d = b1Var;
            aVar2.r = c0Var;
            aVar2.f18559h = 1;
            aVar2.o(z11, z4);
            aVar2.y(pVarArr, c1Var, j10, j11, c0Var);
            aVar2.z(j10, z11, true);
            hVar.d(aVar2);
        }
        b0 b0Var = new b0(this);
        a aVarD = m0Var.d(l0Var);
        aVarD.getClass();
        aVarD.d(11, b0Var);
        if (z12 && z4) {
            m0Var.m();
        }
    }

    public final void k0(e1 e1Var) {
        this.D = e1Var;
    }

    public final void l(boolean[] zArr, long j10) {
        h4.m0[] m0VarArr;
        l0 l0Var = this.f18669s.f18779j;
        h2.r rVar = l0Var.f18733o;
        int i10 = 0;
        while (true) {
            m0VarArr = this.f18653a;
            if (i10 >= m0VarArr.length) {
                break;
            }
            if (!rVar.b(i10)) {
                m0VarArr[i10].k();
            }
            i10++;
        }
        for (int i11 = 0; i11 < m0VarArr.length; i11++) {
            if (rVar.b(i11) && m0VarArr[i11].d(l0Var) == null) {
                k(l0Var, i11, zArr[i11], j10);
            }
        }
    }

    public final void l0(boolean z) {
        this.V = z;
        r1.q0 q0Var = this.K.f18824a;
        n0 n0Var = this.f18669s;
        n0Var.f18777h = z;
        int iR = n0Var.r(q0Var);
        if ((iR & 1) != 0) {
            V(true);
        } else if ((iR & 2) != 0) {
            h();
        }
        u(false);
    }

    public final long m(r1.q0 q0Var, Object obj, long j10) {
        r1.o0 o0Var = this.l;
        int i10 = q0Var.g(obj, o0Var).f13505c;
        r1.p0 p0Var = this.f18664k;
        q0Var.n(i10, p0Var);
        if (p0Var.f13539e == -9223372036854775807L || !p0Var.a() || !p0Var.f13542h) {
            return -9223372036854775807L;
        }
        long j11 = p0Var.f13540f;
        return u1.f0.G((j11 == -9223372036854775807L ? System.currentTimeMillis() : j11 + SystemClock.elapsedRealtime()) - p0Var.f13539e) - (j10 + o0Var.f13507e);
    }

    public final void m0(f2.e1 e1Var) throws Throwable {
        this.L.c(1);
        m7.l lVar = this.f18670t;
        int size = ((ArrayList) lVar.f10955c).size();
        if (e1Var.f5255b.length != size) {
            e1Var = new f2.e1(new Random(e1Var.f5254a.nextLong())).a(size);
        }
        lVar.f10963k = e1Var;
        v(lVar.c(), false);
    }

    public final long n(l0 l0Var) {
        if (l0Var == null) {
            return 0L;
        }
        long jMax = l0Var.f18734p;
        if (!l0Var.f18724e) {
            return jMax;
        }
        int i10 = 0;
        while (true) {
            h4.m0[] m0VarArr = this.f18653a;
            if (i10 >= m0VarArr.length) {
                return jMax;
            }
            if (m0VarArr[i10].d(l0Var) != null) {
                a aVarD = m0VarArr[i10].d(l0Var);
                Objects.requireNonNull(aVarD);
                long j10 = aVarD.f18563m;
                if (j10 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jMax = Math.max(j10, jMax);
            }
            i10++;
        }
    }

    public final void n0(int i10) {
        v0 v0Var = this.K;
        if (v0Var.f18828e != i10) {
            if (i10 != 2) {
                this.R0 = -9223372036854775807L;
            }
            if (i10 != 3 && v0Var.f18838p) {
                this.K = v0Var.i(false);
            }
            this.K = this.K.h(i10);
        }
    }

    public final Pair o(r1.q0 q0Var) {
        long j10 = 0;
        if (q0Var.p()) {
            return Pair.create(v0.f18823u, 0L);
        }
        Pair pairI = q0Var.i(this.f18664k, this.l, q0Var.a(this.V), -9223372036854775807L);
        f2.c0 c0VarP = this.f18669s.p(q0Var, pairI.first, 0L);
        long jLongValue = ((Long) pairI.second).longValue();
        if (c0VarP.b()) {
            Object obj = c0VarP.f5236a;
            r1.o0 o0Var = this.l;
            q0Var.g(obj, o0Var);
            if (c0VarP.f5238c == o0Var.e(c0VarP.f5237b)) {
                o0Var.f13509g.getClass();
            }
        } else {
            j10 = jLongValue;
        }
        return Pair.create(c0VarP, Long.valueOf(j10));
    }

    public final void o0(androidx.media3.exoplayer.video.x xVar) {
        for (h4.m0 m0Var : this.f18653a) {
            a aVar = (a) m0Var.f6462e;
            if (aVar.f18553b == 2) {
                aVar.d(7, xVar);
                a aVar2 = (a) m0Var.f6463f;
                if (aVar2 != null) {
                    aVar2.d(7, xVar);
                }
            }
        }
    }

    public final long p(long j10) {
        l0 l0Var = this.f18669s.l;
        if (l0Var == null) {
            return 0L;
        }
        return Math.max(0L, j10 - (this.M0 - l0Var.f18734p));
    }

    public final void p0(Object obj, u1.e eVar) {
        for (h4.m0 m0Var : this.f18653a) {
            a aVar = (a) m0Var.f6462e;
            if (aVar.f18553b == 2) {
                int i10 = m0Var.f6459b;
                if (i10 == 4 || i10 == 1) {
                    a aVar2 = (a) m0Var.f6463f;
                    aVar2.getClass();
                    aVar2.d(1, obj);
                } else {
                    aVar.d(1, obj);
                }
            }
        }
        int i11 = this.K.f18828e;
        if (i11 == 3 || i11 == 2) {
            this.f18660h.f(2);
        }
        if (eVar != null) {
            eVar.e();
        }
    }

    public final void q(int i10) {
        v0 v0Var = this.K;
        A0(i10, v0Var.f18836n, v0Var.f18835m, v0Var.l);
    }

    public final void q0(float f10) {
        this.V0 = f10;
        float f11 = f10 * this.B.f13882g;
        for (h4.m0 m0Var : this.f18653a) {
            a aVar = (a) m0Var.f6462e;
            if (aVar.f18553b == 1) {
                aVar.d(2, Float.valueOf(f11));
                a aVar2 = (a) m0Var.f6463f;
                if (aVar2 != null) {
                    aVar2.d(2, Float.valueOf(f11));
                }
            }
        }
    }

    public final void r() {
        q0(this.V0);
    }

    public final boolean r0() {
        v0 v0Var = this.K;
        return v0Var.l && v0Var.f18836n == 0;
    }

    public final void s(f2.a0 a0Var) {
        n0 n0Var = this.f18669s;
        l0 l0Var = n0Var.l;
        if (l0Var != null && l0Var.f18720a == a0Var) {
            n0Var.m(this.M0);
            C();
            return;
        }
        l0 l0Var2 = n0Var.f18781m;
        if (l0Var2 == null || l0Var2.f18720a != a0Var) {
            return;
        }
        D();
    }

    public final boolean s0(r1.q0 q0Var, f2.c0 c0Var) {
        if (c0Var.b() || q0Var.p()) {
            return false;
        }
        int i10 = q0Var.g(c0Var.f5236a, this.l).f13505c;
        r1.p0 p0Var = this.f18664k;
        q0Var.n(i10, p0Var);
        return p0Var.a() && p0Var.f13542h && p0Var.f13539e != -9223372036854775807L;
    }

    public final void t(IOException iOException, int i10) {
        k kVar = new k(0, iOException, i10);
        l0 l0Var = this.f18669s.f18778i;
        if (l0Var != null) {
            kVar = kVar.a(l0Var.f18726g.f18758a);
        }
        u1.a.g("Playback error", kVar);
        u0(false, false);
        this.K = this.K.f(kVar);
    }

    public final void t0() {
        l0 l0Var = this.f18669s.f18778i;
        if (l0Var == null) {
            return;
        }
        h2.r rVar = l0Var.f18733o;
        int i10 = 0;
        while (true) {
            h4.m0[] m0VarArr = this.f18653a;
            if (i10 >= m0VarArr.length) {
                return;
            }
            if (rVar.b(i10)) {
                m0VarArr[i10].m();
            }
            i10++;
        }
    }

    public final void u(boolean z) {
        l0 l0Var = this.f18669s.l;
        f2.c0 c0Var = l0Var == null ? this.K.f18825b : l0Var.f18726g.f18758a;
        boolean zEquals = this.K.f18834k.equals(c0Var);
        if (!zEquals) {
            this.K = this.K.c(c0Var);
        }
        v0 v0Var = this.K;
        v0Var.f18839q = l0Var == null ? v0Var.f18840s : l0Var.d();
        v0 v0Var2 = this.K;
        v0Var2.r = p(v0Var2.f18839q);
        if ((!zEquals || z) && l0Var != null && l0Var.f18724e) {
            x0(l0Var.f18726g.f18758a, l0Var.f18733o);
        }
    }

    public final void u0(boolean z, boolean z4) {
        O(z || !this.X, false, true, false);
        this.L.c(z4 ? 1 : 0);
        g gVar = (g) this.f18658f;
        z1.i iVar = this.f18674x;
        ConcurrentHashMap concurrentHashMap = gVar.f18690p;
        f fVar = (f) concurrentHashMap.get(iVar);
        if (fVar != null) {
            int i10 = fVar.f18649a - 1;
            fVar.f18649a = i10;
            if (i10 == 0) {
                concurrentHashMap.remove(iVar);
                gVar.c();
            }
        }
        this.B.d(1, this.K.l);
        n0(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0246 A[PHI: r6
  0x0246: PHI (r6v6 long) = (r6v3 long), (r6v3 long), (r6v3 long), (r6v3 long), (r6v3 long), (r6v7 long) binds: [B:123:0x0264, B:125:0x026a, B:132:0x028a, B:134:0x0291, B:129:0x0283, B:117:0x0244] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02fd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04c1  */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v2, types: [f2.c0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v30, types: [f2.c0] */
    /* JADX WARN: Type inference failed for: r1v31, types: [f2.c0] */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v64, types: [u1.b0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(r1.q0 q0Var, boolean z) throws Throwable {
        n0 n0Var;
        int i10;
        long jN;
        long j10;
        int iA;
        long jH;
        boolean z4;
        boolean z10;
        boolean z11;
        boolean z12;
        ?? r11;
        long jMin;
        long j11;
        long j12;
        int i11;
        d0 d0Var;
        int i12;
        long jLongValue;
        int i13;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        int iA2;
        f0 f0Var;
        f0 f0Var2;
        ?? r112;
        int i14;
        l0 l0Var;
        f0 f0Var3 = this;
        v0 v0Var = f0Var3.K;
        e0 e0Var = f0Var3.f18671t0;
        n0 n0Var2 = f0Var3.f18669s;
        int i15 = f0Var3.T;
        boolean z17 = f0Var3.V;
        r1.p0 p0Var = f0Var3.f18664k;
        r1.o0 o0Var = f0Var3.l;
        if (q0Var.p()) {
            f2.c0 c0Var = v0.f18823u;
            boolean z18 = (c0Var.equals(v0Var.f18825b) && v0Var.f18840s == 0) ? false : true;
            d0Var = new d0(c0Var, 0L, -9223372036854775807L, false, true, false, z18, z18 && z && !v0Var.f18824a.p() && !v0Var.f18824a.g(v0Var.f18825b.f5236a, o0Var).f13508f, 4);
            jN = 0;
            f0Var = f0Var3;
        } else {
            f2.c0 c0Var2 = v0Var.f18825b;
            Object obj = c0Var2.f5236a;
            r1.q0 q0Var2 = v0Var.f18824a;
            boolean z19 = q0Var2.p() || q0Var2.g(c0Var2.f5236a, o0Var).f13508f;
            long j13 = (v0Var.f18825b.b() || z19) ? v0Var.f18826c : v0Var.f18840s;
            if (e0Var != null) {
                r11 = c0Var2;
                n0Var = n0Var2;
                Pair pairS = S(q0Var, e0Var, true, i15, z17, p0Var, o0Var);
                if (pairS == null) {
                    iA2 = q0Var.a(z17);
                    j10 = j13;
                    z15 = false;
                    z16 = true;
                    z14 = false;
                } else {
                    if (e0Var.f18644c == -9223372036854775807L) {
                        i13 = q0Var.g(pairS.first, o0Var).f13505c;
                        jLongValue = j13;
                        z13 = false;
                    } else {
                        obj = pairS.first;
                        jLongValue = ((Long) pairS.second).longValue();
                        i13 = -1;
                        z13 = true;
                    }
                    z14 = v0Var.f18828e == 4;
                    z15 = z13;
                    z16 = false;
                    long j14 = jLongValue;
                    iA2 = i13;
                    j10 = j14;
                }
                z11 = z15;
                z10 = z16;
                z4 = z14;
                i10 = -1;
                jN = 0;
                iA = iA2;
            } else {
                f2.c0 c0Var3 = c0Var2;
                n0Var = n0Var2;
                if (v0Var.f18824a.p()) {
                    iA = q0Var.a(z17);
                    j10 = j13;
                    i10 = -1;
                } else {
                    i10 = -1;
                    if (q0Var.b(obj) == -1) {
                        int iT = T(p0Var, o0Var, i15, z17, obj, v0Var.f18824a, q0Var);
                        if (iT == -1) {
                            iT = q0Var.a(z17);
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        iA = iT;
                        z10 = z12;
                        j10 = j13;
                        jN = 0;
                        z4 = false;
                        z11 = false;
                        r11 = c0Var3;
                    } else if (j13 == -9223372036854775807L) {
                        iA = q0Var.g(obj, o0Var).f13505c;
                        j10 = j13;
                    } else if (z19) {
                        v0Var.f18824a.g(c0Var3.f5236a, o0Var);
                        if (v0Var.f18824a.m(o0Var.f13505c, p0Var, 0L).f13546m == v0Var.f18824a.b(c0Var3.f5236a)) {
                            jN = 0;
                            Pair pairI = q0Var.i(p0Var, o0Var, q0Var.g(obj, o0Var).f13505c, j13 + o0Var.f13507e);
                            obj = pairI.first;
                            jH = ((Long) pairI.second).longValue();
                        } else {
                            jN = 0;
                            if (q0Var.g(obj, o0Var).f13506d != -9223372036854775807L) {
                                jH = u1.f0.h(j13, 0L, o0Var.f13506d - 1);
                            } else {
                                j10 = j13;
                                iA = -1;
                                z4 = false;
                                z10 = false;
                                z11 = true;
                                r11 = c0Var3;
                            }
                        }
                        j10 = jH;
                        iA = -1;
                        z4 = false;
                        z10 = false;
                        z11 = true;
                        r11 = c0Var3;
                    } else {
                        jN = 0;
                        j10 = j13;
                        iA = -1;
                        z4 = false;
                        z10 = false;
                        z11 = false;
                        r11 = c0Var3;
                    }
                }
                jN = 0;
                z4 = false;
                z10 = false;
                z11 = false;
                r11 = c0Var3;
            }
            if (iA != i10) {
                Pair pairI2 = q0Var.i(p0Var, o0Var, iA, -9223372036854775807L);
                obj = pairI2.first;
                jMin = ((Long) pairI2.second).longValue();
                j10 = -9223372036854775807L;
            } else {
                jMin = j10;
            }
            f2.c0 c0VarP = n0Var.p(q0Var, obj, jMin);
            int i16 = c0VarP.f5240e;
            boolean z20 = i16 == i10 || ((i12 = r11.f5240e) != i10 && i16 >= i12);
            boolean zEquals = r11.f5236a.equals(obj);
            boolean z21 = zEquals && !r11.b() && !c0VarP.b() && z20;
            r1.o0 o0VarG = q0Var.g(obj, o0Var);
            if (!z19 && j13 == j10 && r11.f5236a.equals(c0VarP.f5236a)) {
                if (r11.b()) {
                    o0VarG.g(r11.f5237b);
                }
                if (c0VarP.b()) {
                    o0VarG.g(c0VarP.f5237b);
                }
            }
            if (z21) {
                c0VarP = r11;
            }
            if (c0VarP.b()) {
                if (c0VarP.equals(r11)) {
                    jMin = v0Var.f18840s;
                    j12 = j10;
                    j11 = jMin;
                    boolean z22 = c0VarP.equals(v0Var.f18825b) || j11 != v0Var.f18840s;
                    int i17 = q0Var.b(v0Var.f18825b.f5236a) != i10 ? 4 : 3;
                    if (!c0VarP.f5236a.equals(v0Var.f18825b.f5236a) && c0VarP.f5237b != i10) {
                        r1.a aVarA = q0Var.g(c0VarP.f5236a, o0Var).f13509g.a(c0VarP.f5237b);
                        int i18 = c0VarP.f5238c;
                        int[] iArr = aVarA.f13367e;
                        if (i18 >= iArr.length || iArr[i18] != 2) {
                            i11 = 0;
                        }
                        d0Var = new d0(c0VarP, j11, j12, z4, z10, z11, z22, z22 && z && !v0Var.f18824a.p() && !v0Var.f18824a.g(v0Var.f18825b.f5236a, o0Var).f13508f, i11);
                        f0Var = r11;
                    }
                    i11 = i17;
                    if (z22) {
                        d0Var = new d0(c0VarP, j11, j12, z4, z10, z11, z22, z22 && z && !v0Var.f18824a.p() && !v0Var.f18824a.g(v0Var.f18825b.f5236a, o0Var).f13508f, i11);
                        f0Var = r11;
                    }
                } else {
                    q0Var.g(c0VarP.f5236a, o0Var);
                    if (c0VarP.f5238c == o0Var.e(c0VarP.f5237b)) {
                        o0Var.f13509g.getClass();
                    }
                    j12 = j10;
                    j11 = jN;
                    if (c0VarP.equals(v0Var.f18825b)) {
                        if (q0Var.b(v0Var.f18825b.f5236a) != i10) {
                        }
                        if (!c0VarP.f5236a.equals(v0Var.f18825b.f5236a)) {
                            i11 = i17;
                        }
                    }
                }
            } else if (zEquals && r11.b()) {
                r1.a aVarA2 = q0Var.g(obj, o0Var).f13509g.a(r11.f5237b);
                aVarA2.getClass();
                long j15 = v0Var.f18826c;
                if (j15 == -9223372036854775807L || jN > j15) {
                    int i19 = aVarA2.f13363a;
                    int i20 = r11.f5238c;
                    if (i19 > i20 && aVarA2.f13367e[i20] == 2) {
                        long j16 = q0Var.g(obj, o0Var).f13506d;
                        if (j16 != -9223372036854775807L) {
                            jMin = Math.min(j16 - 1, jMin);
                        }
                        j11 = jMin;
                        j12 = j11;
                    }
                    if (c0VarP.equals(v0Var.f18825b)) {
                    }
                }
            } else {
                j12 = j10;
                j11 = jMin;
                if (c0VarP.equals(v0Var.f18825b)) {
                }
            }
        }
        f2.c0 c0Var4 = d0Var.f18613a;
        long jX = d0Var.f18614b;
        try {
            if (d0Var.f18617e) {
                f0Var2 = this;
                try {
                    if (f0Var2.K.f18828e != 1) {
                        f0Var2.n0(4);
                    }
                    f0Var2.O(false, false, false, true);
                } catch (Throwable th2) {
                    th = th2;
                    r112 = 2;
                    v0 v0Var2 = f0Var2.K;
                    C0(q0Var, c0Var4, v0Var2.f18824a, v0Var2.f18825b, !d0Var.f18618f ? jX : -9223372036854775807L, false);
                    if (!d0Var.f18619g) {
                        long j17 = d0Var.f18615c;
                        boolean z23 = d0Var.f18620h;
                        f0Var2.K = y(c0Var4, jX, j17, !z23 ? jX : f0Var2.K.f18827d, z23, d0Var.f18621i);
                    }
                    P();
                    f0Var2.R(q0Var, f0Var2.K.f18824a);
                    f0Var2.K = f0Var2.K.j(q0Var);
                    if (!q0Var.p()) {
                    }
                    f0Var2.u(false);
                    f0Var2.f18660h.f(r112);
                    throw th;
                }
            } else {
                f0Var2 = this;
            }
            for (h4.m0 m0Var : f0Var2.f18653a) {
                a aVar = (a) m0Var.f6462e;
                if (!Objects.equals(aVar.f18566q, q0Var)) {
                    aVar.f18566q = q0Var;
                    aVar.v();
                }
                a aVar2 = (a) m0Var.f6463f;
                if (aVar2 != null && !Objects.equals(aVar2.f18566q, q0Var)) {
                    aVar2.f18566q = q0Var;
                    aVar2.v();
                }
            }
            try {
                if (d0Var.f18619g) {
                    i14 = 2;
                    if (!q0Var.p()) {
                        for (l0 l0Var2 = f0Var2.f18669s.f18778i; l0Var2 != null; l0Var2 = l0Var2.f18731m) {
                            if (l0Var2.f18726g.f18758a.equals(c0Var4)) {
                                l0Var2.f18726g = f0Var2.f18669s.h(q0Var, l0Var2.f18726g);
                                l0Var2.k();
                            }
                        }
                        boolean z24 = d0Var.f18616d;
                        n0 n0Var3 = f0Var2.f18669s;
                        jX = X(c0Var4, jX, n0Var3.f18778i != n0Var3.f18779j, z24);
                    }
                } else {
                    l0 l0Var3 = f0Var2.f18669s.f18779j;
                    long jN2 = l0Var3 == null ? jN : f0Var2.n(l0Var3);
                    if (f() && (l0Var = f0Var2.f18669s.f18780k) != null) {
                        jN = f0Var2.n(l0Var);
                    }
                    i14 = 2;
                    int iS = f0Var2.f18669s.s(q0Var, f0Var2.M0, jN2, jN);
                    if ((iS & 1) != 0) {
                        f0Var2.V(false);
                    } else if ((iS & 2) != 0) {
                        h();
                    }
                }
                v0 v0Var3 = f0Var2.K;
                C0(q0Var, c0Var4, v0Var3.f18824a, v0Var3.f18825b, d0Var.f18618f ? jX : -9223372036854775807L, false);
                if (d0Var.f18619g || d0Var.f18615c != f0Var2.K.f18826c) {
                    long j18 = d0Var.f18615c;
                    boolean z25 = d0Var.f18620h;
                    f0Var2.K = y(c0Var4, jX, j18, z25 ? jX : f0Var2.K.f18827d, z25, d0Var.f18621i);
                }
                P();
                f0Var2.R(q0Var, f0Var2.K.f18824a);
                f0Var2.K = f0Var2.K.j(q0Var);
                if (!q0Var.p()) {
                    f0Var2.f18671t0 = null;
                }
                f0Var2.u(false);
                f0Var2.f18660h.f(i14);
            } catch (Throwable th3) {
                th = th3;
                r112 = f0Var;
                v0 v0Var22 = f0Var2.K;
                C0(q0Var, c0Var4, v0Var22.f18824a, v0Var22.f18825b, !d0Var.f18618f ? jX : -9223372036854775807L, false);
                if (!d0Var.f18619g || d0Var.f18615c != f0Var2.K.f18826c) {
                    long j172 = d0Var.f18615c;
                    boolean z232 = d0Var.f18620h;
                    f0Var2.K = y(c0Var4, jX, j172, !z232 ? jX : f0Var2.K.f18827d, z232, d0Var.f18621i);
                }
                P();
                f0Var2.R(q0Var, f0Var2.K.f18824a);
                f0Var2.K = f0Var2.K.j(q0Var);
                if (!q0Var.p()) {
                    f0Var2.f18671t0 = null;
                }
                f0Var2.u(false);
                f0Var2.f18660h.f(r112);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            f0Var2 = this;
        }
    }

    public final void v0() {
        h hVar = this.f18666n;
        hVar.f18702f = false;
        ba.n nVar = hVar.f18697a;
        if (nVar.f2721a) {
            nVar.d(nVar.a());
            nVar.f2721a = false;
        }
        for (h4.m0 m0Var : this.f18653a) {
            a aVar = (a) m0Var.f6462e;
            if (h4.m0.h(aVar)) {
                h4.m0.b(aVar);
            }
            a aVar2 = (a) m0Var.f6463f;
            if (aVar2 != null && aVar2.f18559h != 0) {
                h4.m0.b(aVar2);
            }
        }
    }

    public final void w(f2.a0 a0Var) {
        l0 l0Var;
        n0 n0Var = this.f18669s;
        l0 l0Var2 = n0Var.l;
        int i10 = 0;
        boolean z = l0Var2 != null && l0Var2.f18720a == a0Var;
        h hVar = this.f18666n;
        if (z) {
            l0Var2.getClass();
            if (!l0Var2.f18724e) {
                float f10 = hVar.c().f13452a;
                v0 v0Var = this.K;
                l0Var2.f(f10, v0Var.f18824a, v0Var.l);
            }
            x0(l0Var2.f18726g.f18758a, l0Var2.f18733o);
            if (l0Var2 == n0Var.f18778i) {
                Q(l0Var2.f18726g.f18759b, true);
                l(new boolean[this.f18653a.length], n0Var.f18779j.e());
                l0Var2.f18727h = true;
                v0 v0Var2 = this.K;
                f2.c0 c0Var = v0Var2.f18825b;
                m0 m0Var = l0Var2.f18726g;
                long j10 = v0Var2.f18826c;
                long j11 = m0Var.f18759b;
                this.K = y(c0Var, j11, j10, j11, false, 5);
            }
            C();
            return;
        }
        while (true) {
            if (i10 >= n0Var.f18785q.size()) {
                l0Var = null;
                break;
            }
            l0Var = (l0) n0Var.f18785q.get(i10);
            if (l0Var.f18720a == a0Var) {
                break;
            } else {
                i10++;
            }
        }
        if (l0Var != null) {
            a9.o.t(!l0Var.f18724e);
            float f11 = hVar.c().f13452a;
            v0 v0Var3 = this.K;
            l0Var.f(f11, v0Var3.f18824a, v0Var3.l);
            l0 l0Var3 = n0Var.f18781m;
            if (l0Var3 == null || l0Var3.f18720a != a0Var) {
                return;
            }
            D();
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [f2.d1, java.lang.Object] */
    public final void w0() {
        l0 l0Var = this.f18669s.l;
        boolean z = this.S || (l0Var != null && l0Var.f18720a.j());
        v0 v0Var = this.K;
        if (z != v0Var.f18830g) {
            this.K = v0Var.b(z);
        }
    }

    public final void x(r1.h0 h0Var, float f10, boolean z, boolean z4) {
        int i10;
        if (z) {
            if (z4) {
                this.L.c(1);
            }
            this.K = this.K.g(h0Var);
        }
        float f11 = h0Var.f13452a;
        l0 l0Var = this.f18669s.f18778i;
        while (true) {
            i10 = 0;
            if (l0Var == null) {
                break;
            }
            h2.p[] pVarArr = l0Var.f18733o.f6408c;
            int length = pVarArr.length;
            while (i10 < length) {
                h2.p pVar = pVarArr[i10];
                if (pVar != null) {
                    pVar.i(f11);
                }
                i10++;
            }
            l0Var = l0Var.f18731m;
        }
        h4.m0[] m0VarArr = this.f18653a;
        int length2 = m0VarArr.length;
        while (i10 < length2) {
            h4.m0 m0Var = m0VarArr[i10];
            a aVar = (a) m0Var.f6462e;
            float f12 = h0Var.f13452a;
            aVar.A(f10, f12);
            a aVar2 = (a) m0Var.f6463f;
            if (aVar2 != null) {
                aVar2.A(f10, f12);
            }
            i10++;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x0(f2.c0 c0Var, h2.r rVar) {
        boolean z;
        int length;
        int i10;
        l0 l0Var = this.f18669s.l;
        l0Var.getClass();
        p(l0Var.d());
        if (s0(this.K.f18824a, l0Var.f18726g.f18758a)) {
            long j10 = this.f18672v.f18636h;
        }
        r1.q0 q0Var = this.K.f18824a;
        float f10 = this.f18666n.c().f13452a;
        boolean z4 = this.K.l;
        h2.p[] pVarArr = rVar.f6408c;
        g gVar = (g) this.f18658f;
        gVar.getClass();
        z1.i iVar = this.f18674x;
        Integer num = (Integer) gVar.f18689o.get(iVar.f19389a);
        int iIntValue = (num == null || num.intValue() == -1) ? gVar.l : num.intValue();
        f fVar = (f) gVar.f18690p.get(iVar);
        fVar.getClass();
        if (iIntValue == -1) {
            r1.v vVar = q0Var.m(q0Var.g(c0Var.f5236a, gVar.f18677b).f13505c, gVar.f18676a, 0L).f13537c.f13627b;
            if (vVar == null) {
                z = false;
                length = pVarArr.length;
                i10 = 0;
                int i11 = 0;
                while (true) {
                    int i12 = 13107200;
                    if (i10 >= length) {
                        h2.p pVar = pVarArr[i10];
                        if (pVar != null) {
                            switch (pVar.a().f13555c) {
                                case -2:
                                    i12 = 0;
                                    i11 += i12;
                                    break;
                                case -1:
                                case 1:
                                    i11 += i12;
                                    break;
                                case 0:
                                    i12 = 144310272;
                                    i11 += i12;
                                    break;
                                case 2:
                                    i12 = z ? 19660800 : 131072000;
                                    i11 += i12;
                                    break;
                                case 3:
                                case 5:
                                case 6:
                                    i12 = 131072;
                                    i11 += i12;
                                    break;
                                case 4:
                                    i12 = 26214400;
                                    i11 += i12;
                                    break;
                                default:
                                    throw new IllegalArgumentException();
                            }
                        }
                        i10++;
                    } else {
                        iIntValue = u1.f0.g(i11, 13107200, 210239488);
                    }
                }
            } else {
                String scheme = vVar.f13592a.getScheme();
                if (TextUtils.isEmpty(scheme) || g.r.contains(scheme)) {
                    z = true;
                }
                length = pVarArr.length;
                i10 = 0;
                int i112 = 0;
                while (true) {
                    int i122 = 13107200;
                    if (i10 >= length) {
                    }
                    i10++;
                }
            }
        }
        fVar.f18651c = iIntValue;
        gVar.c();
    }

    public final v0 y(f2.c0 c0Var, long j10, long j11, long j12, boolean z, int i10) {
        j1 j1Var;
        h2.r rVar;
        List list;
        u7.y0 y0VarG;
        boolean z4;
        int i11;
        int i12;
        this.P0 = (!this.P0 && j10 == this.K.f18840s && c0Var.equals(this.K.f18825b)) ? false : true;
        P();
        v0 v0Var = this.K;
        j1 j1Var2 = v0Var.f18831h;
        h2.r rVar2 = v0Var.f18832i;
        List list2 = v0Var.f18833j;
        if (this.f18670t.f10953a) {
            l0 l0Var = this.f18669s.f18778i;
            j1 j1Var3 = l0Var == null ? j1.f5298d : l0Var.f18732n;
            h2.r rVar3 = l0Var == null ? this.f18657e : l0Var.f18733o;
            h2.p[] pVarArr = rVar3.f6408c;
            u7.d0 d0Var = new u7.d0();
            int length = pVarArr.length;
            int i13 = 0;
            boolean z10 = false;
            while (i13 < length) {
                h2.p pVar = pVarArr[i13];
                if (pVar == null) {
                    i12 = 1;
                } else {
                    r1.d0 d0Var2 = pVar.c(0).l;
                    if (d0Var2 == null) {
                        d0Var.b(new r1.d0(new r1.c0[0]));
                        i12 = 1;
                    } else {
                        d0Var.b(d0Var2);
                        i12 = 1;
                        z10 = true;
                    }
                }
                i13 += i12;
            }
            if (z10) {
                y0VarG = d0Var.g();
            } else {
                u7.e0 e0Var = u7.g0.f15471b;
                y0VarG = u7.y0.f15549e;
            }
            if (l0Var != null) {
                m0 m0Var = l0Var.f18726g;
                if (m0Var.f18761d != j11) {
                    l0Var.f18726g = m0Var.a(j11);
                }
            }
            n0 n0Var = this.f18669s;
            l0 l0Var2 = n0Var.f18778i;
            if (l0Var2 == n0Var.f18779j && l0Var2 != null) {
                h2.r rVar4 = l0Var2.f18733o;
                boolean z11 = false;
                int i14 = 0;
                while (true) {
                    h4.m0[] m0VarArr = this.f18653a;
                    if (i14 >= m0VarArr.length) {
                        z4 = true;
                        break;
                    }
                    if (rVar4.b(i14)) {
                        i11 = 1;
                        if (((a) m0VarArr[i14].f6462e).f18553b != 1) {
                            z4 = false;
                            break;
                        }
                        if (rVar4.f6407b[i14].f18585a != 0) {
                            z11 = true;
                        }
                    } else {
                        i11 = 1;
                    }
                    i14 += i11;
                }
                boolean z12 = z11 && z4;
                if (z12 != this.Z) {
                    this.Z = z12;
                    if (!z12 && this.K.f18838p) {
                        this.f18660h.f(2);
                    }
                }
            }
            list = y0VarG;
            j1Var = j1Var3;
            rVar = rVar3;
        } else if (c0Var.equals(v0Var.f18825b)) {
            j1Var = j1Var2;
            rVar = rVar2;
            list = list2;
        } else {
            j1Var = j1.f5298d;
            rVar = this.f18657e;
            list = u7.y0.f15549e;
        }
        if (z) {
            s3.t tVar = this.L;
            if (!tVar.f14245c || tVar.f14246d == 5) {
                tVar.f14243a = true;
                tVar.f14245c = true;
                tVar.f14246d = i10;
            } else {
                a9.o.k(i10 == 5);
            }
        }
        v0 v0Var2 = this.K;
        return v0Var2.d(c0Var, j10, j11, j12, p(v0Var2.f18839q), j1Var, rVar, list);
    }

    public final void y0(int i10, int i11, List list) throws Throwable {
        this.L.c(1);
        m7.l lVar = this.f18670t;
        lVar.getClass();
        ArrayList arrayList = (ArrayList) lVar.f10955c;
        a9.o.k(i10 >= 0 && i10 <= i11 && i11 <= arrayList.size());
        a9.o.k(list.size() == i11 - i10);
        for (int i12 = i10; i12 < i11; i12++) {
            ((u0) arrayList.get(i12)).f18816a.r((r1.y) list.get(i12 - i10));
        }
        v(lVar.c(), false);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x031e A[PHI: r4
  0x031e: PHI (r4v49 long) = (r4v48 long), (r4v55 long) binds: [B:160:0x031c, B:156:0x030c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x055a  */
    /* JADX WARN: Type inference failed for: r0v83, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v44, types: [f2.a0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [f2.a0, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z0() {
        l0 l0Var;
        n0 n0Var;
        l0 l0Var2;
        l0 l0Var3;
        boolean z;
        h4.m0[] m0VarArr;
        boolean z4;
        int i10;
        long j10;
        int i11;
        n0 n0Var2;
        l0 l0Var4;
        l0 l0Var5;
        boolean z10;
        h2.r rVar;
        int i12;
        int i13;
        if (this.K.f18824a.p() || !this.f18670t.f10953a) {
            return;
        }
        this.f18669s.m(this.M0);
        n0 n0Var3 = this.f18669s;
        l0 l0Var6 = n0Var3.l;
        long j11 = -9223372036854775807L;
        if (l0Var6 == null || (!l0Var6.f18726g.f18768k && l0Var6.g() && n0Var3.l.f18726g.f18763f != -9223372036854775807L && n0Var3.f18782n < 100)) {
            n0 n0Var4 = this.f18669s;
            long j12 = this.M0;
            v0 v0Var = this.K;
            l0 l0Var7 = n0Var4.l;
            m0 m0VarD = l0Var7 == null ? n0Var4.d(v0Var.f18824a, v0Var.f18825b, v0Var.f18826c, v0Var.f18840s, -9223372036854775807L) : n0Var4.c(v0Var.f18824a, l0Var7, j12);
            if (m0VarD != null) {
                n0 n0Var5 = this.f18669s;
                l0 l0Var8 = n0Var5.l;
                long j13 = l0Var8 == null ? 1000000000000L : (l0Var8.f18734p + l0Var8.f18726g.f18763f) - m0VarD.f18759b;
                int i14 = 0;
                while (true) {
                    if (i14 >= n0Var5.f18785q.size()) {
                        l0Var = null;
                        break;
                    }
                    m0 m0Var = ((l0) n0Var5.f18785q.get(i14)).f18726g;
                    long j14 = m0Var.f18763f;
                    if ((j14 == j11 || j14 == m0VarD.f18763f) && m0Var.f18759b == m0VarD.f18759b && m0Var.f18758a.equals(m0VarD.f18758a)) {
                        l0Var = (l0) n0Var5.f18785q.remove(i14);
                        break;
                    } else {
                        i14++;
                        j11 = -9223372036854775807L;
                    }
                }
                if (l0Var == null) {
                    f0 f0Var = n0Var5.f18774e.f18872a;
                    g gVar = (g) f0Var.f18658f;
                    gVar.getClass();
                    s4.a aVar = new s4.a(gVar, f0Var.f18674x);
                    f0Var.S0.getClass();
                    l0Var = new l0(f0Var.f18654b, j13, f0Var.f18656d, aVar, f0Var.f18670t, m0VarD, f0Var.f18657e);
                } else {
                    l0Var.f18726g = m0VarD;
                    l0Var.f18734p = j13;
                }
                l0 l0Var9 = n0Var5.l;
                if (l0Var9 == null) {
                    n0Var5.f18778i = l0Var;
                    n0Var5.f18779j = l0Var;
                    n0Var5.f18780k = l0Var;
                } else if (l0Var != l0Var9.f18731m) {
                    l0Var9.b();
                    l0Var9.f18731m = l0Var;
                    l0Var9.c();
                }
                n0Var5.f18783o = null;
                n0Var5.l = l0Var;
                n0Var5.f18782n++;
                n0Var5.l();
                if (!l0Var.f18723d) {
                    long j15 = m0VarD.f18759b;
                    l0Var.f18723d = true;
                    l0Var.f18720a.l(this, j15);
                } else if (l0Var.f18724e) {
                    this.f18660h.b(8, l0Var.f18720a).b();
                }
                if (this.f18669s.f18778i == l0Var) {
                    Q(m0VarD.f18759b, true);
                }
                u(false);
            }
        }
        if (this.S) {
            this.S = z(this.f18669s.l);
            w0();
        } else {
            C();
        }
        if (!this.O && this.A && !this.U0 && !f() && (l0Var4 = (n0Var2 = this.f18669s).f18780k) != null && l0Var4 == n0Var2.f18779j && (l0Var5 = l0Var4.f18731m) != null && (z10 = l0Var5.f18724e)) {
            a9.o.t(z10);
            if (((long) ((l0Var5.e() - this.M0) / this.f18666n.c().f13452a)) <= 10000000) {
                l0 l0Var10 = n0Var2.f18780k;
                l0Var10.getClass();
                n0Var2.f18780k = l0Var10.f18731m;
                n0Var2.l();
                n0Var2.f18780k.getClass();
                l0 l0Var11 = n0Var2.f18780k;
                if (l0Var11 != null) {
                    h2.r rVar2 = l0Var11.f18733o;
                    int i15 = 0;
                    while (true) {
                        h4.m0[] m0VarArr2 = this.f18653a;
                        if (i15 >= m0VarArr2.length) {
                            break;
                        }
                        if (rVar2.b(i15)) {
                            h4.m0 m0Var2 = m0VarArr2[i15];
                            if (((a) m0Var2.f6463f) == null || m0Var2.f()) {
                                rVar = rVar2;
                                i12 = i15;
                            } else {
                                h4.m0 m0Var3 = m0VarArr2[i15];
                                a9.o.t(!m0Var3.f());
                                if (h4.m0.h((a) m0Var3.f6462e)) {
                                    i13 = 3;
                                } else {
                                    a aVar2 = (a) m0Var3.f6463f;
                                    i13 = (aVar2 == null || aVar2.f18559h == 0) ? 2 : 4;
                                }
                                m0Var3.f6459b = i13;
                                rVar = rVar2;
                                i12 = i15;
                                k(l0Var11, i15, false, l0Var11.e());
                            }
                        }
                        i15 = i12 + 1;
                        rVar2 = rVar;
                    }
                    if (f()) {
                        this.T0 = l0Var11.f18720a.m();
                        if (!l0Var11.g()) {
                            n0Var2.n(l0Var11);
                            u(false);
                            C();
                        }
                    }
                }
            }
        }
        n0 n0Var6 = this.f18669s;
        l0 l0Var12 = n0Var6.f18779j;
        if (l0Var12 != null) {
            l0 l0Var13 = l0Var12.f18731m;
            h4.m0[] m0VarArr3 = this.f18653a;
            if (l0Var13 == null || this.O) {
                if (l0Var12.f18726g.f18768k || this.O) {
                    for (h4.m0 m0Var4 : m0VarArr3) {
                        if (m0Var4.d(l0Var12) != null) {
                            a aVarD = m0Var4.d(l0Var12);
                            aVarD.getClass();
                            if (aVarD.k()) {
                                long j16 = l0Var12.f18726g.f18763f;
                                long j17 = (j16 == -9223372036854775807L || j16 == Long.MIN_VALUE) ? -9223372036854775807L : j16 + l0Var12.f18734p;
                                a aVarD2 = m0Var4.d(l0Var12);
                                aVarD2.getClass();
                                h4.m0.l(aVarD2, j17);
                            }
                        }
                    }
                }
            } else if (l0Var12.f18724e) {
                int i16 = 0;
                while (true) {
                    if (i16 < m0VarArr3.length) {
                        h4.m0 m0Var5 = m0VarArr3[i16];
                        if (!m0Var5.e(l0Var12, (a) m0Var5.f6462e) || !m0Var5.e(l0Var12, (a) m0Var5.f6463f)) {
                            break;
                        } else {
                            i16++;
                        }
                    } else if (!f() || n0Var6.f18780k != n0Var6.f18779j) {
                        l0 l0Var14 = l0Var12.f18731m;
                        if (l0Var14.f18724e || this.M0 >= l0Var14.e()) {
                            boolean z11 = l0Var12.f18731m.f18724e;
                            if (z11) {
                                a9.o.t(z11);
                                if (((long) ((r1.e() - this.M0) / this.f18666n.c().f13452a)) <= 10000000) {
                                    h2.r rVar3 = l0Var12.f18733o;
                                    l0 l0Var15 = n0Var6.f18780k;
                                    l0 l0Var16 = n0Var6.f18779j;
                                    if (l0Var15 == l0Var16) {
                                        l0Var16.getClass();
                                        n0Var6.f18780k = l0Var16.f18731m;
                                    }
                                    l0 l0Var17 = n0Var6.f18779j;
                                    l0Var17.getClass();
                                    n0Var6.f18779j = l0Var17.f18731m;
                                    n0Var6.l();
                                    l0 l0Var18 = n0Var6.f18779j;
                                    l0Var18.getClass();
                                    h2.r rVar4 = l0Var18.f18733o;
                                    r1.q0 q0Var = this.K.f18824a;
                                    h2.r rVar5 = rVar3;
                                    C0(q0Var, l0Var18.f18726g.f18758a, q0Var, l0Var12.f18726g.f18758a, -9223372036854775807L, false);
                                    if (l0Var18.f18724e) {
                                        boolean z12 = this.A;
                                        if (z12) {
                                            j10 = -9223372036854775807L;
                                            if (this.T0 != -9223372036854775807L) {
                                                this.T0 = j10;
                                                boolean z13 = z12 && !this.U0;
                                                if (z13) {
                                                    int i17 = 0;
                                                    while (true) {
                                                        if (i17 >= m0VarArr3.length) {
                                                            break;
                                                        }
                                                        if (rVar4.b(i17) && ((a) m0VarArr3[i17].f6462e).f18553b != -2) {
                                                            h2.p[] pVarArr = rVar4.f6408c;
                                                            if (!r1.e0.a(pVarArr[i17].h().f13523o, pVarArr[i17].h().f13520k) && !m0VarArr3[i17].f()) {
                                                                z13 = false;
                                                                break;
                                                            }
                                                        }
                                                        i17++;
                                                    }
                                                }
                                                if (!z13) {
                                                    long jE = l0Var18.e();
                                                    for (h4.m0 m0Var6 : m0VarArr3) {
                                                        a aVar3 = (a) m0Var6.f6462e;
                                                        if (h4.m0.h(aVar3) && (i11 = m0Var6.f6459b) != 4 && i11 != 2) {
                                                            h4.m0.l(aVar3, jE);
                                                        }
                                                        a aVar4 = (a) m0Var6.f6463f;
                                                        if (aVar4 != null) {
                                                            if ((aVar4.f18559h != 0) && m0Var6.f6459b != 3) {
                                                                h4.m0.l(aVar4, jE);
                                                            }
                                                        }
                                                    }
                                                    if (!l0Var18.g()) {
                                                        n0Var6.n(l0Var18);
                                                        u(false);
                                                        C();
                                                    }
                                                }
                                            }
                                        } else {
                                            j10 = -9223372036854775807L;
                                        }
                                        if (l0Var18.f18720a.m() != j10) {
                                        }
                                    } else {
                                        int length = m0VarArr3.length;
                                        int i18 = 0;
                                        while (i18 < length) {
                                            h4.m0 m0Var7 = m0VarArr3[i18];
                                            long jE2 = l0Var18.e();
                                            int i19 = m0Var7.f6458a;
                                            h2.r rVar6 = rVar5;
                                            boolean zB = rVar6.b(i19);
                                            boolean zB2 = rVar4.b(i19);
                                            a aVar5 = (a) m0Var7.f6462e;
                                            a aVar6 = (a) m0Var7.f6463f;
                                            if (aVar6 == null || (i10 = m0Var7.f6459b) == 3 || (i10 == 0 && h4.m0.h(aVar5))) {
                                                aVar6 = aVar5;
                                            }
                                            if (zB && !aVar6.f18564n) {
                                                boolean z14 = aVar5.f18553b == -2;
                                                b1 b1Var = rVar6.f6407b[i19];
                                                b1 b1Var2 = rVar4.f6407b[i19];
                                                if (!zB2 || !Objects.equals(b1Var2, b1Var) || z14 || m0Var7.f()) {
                                                    h4.m0.l(aVar6, jE2);
                                                }
                                            }
                                            i18++;
                                            rVar5 = rVar6;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        n0 n0Var7 = this.f18669s;
        l0 l0Var19 = n0Var7.f18779j;
        if (l0Var19 != null && n0Var7.f18778i != l0Var19 && !l0Var19.f18727h) {
            h2.r rVar7 = l0Var19.f18733o;
            int i20 = 0;
            boolean z15 = true;
            while (true) {
                m0VarArr = this.f18653a;
                if (i20 >= m0VarArr.length) {
                    break;
                }
                int iC = m0VarArr[i20].c();
                h4.m0 m0Var8 = m0VarArr[i20];
                a aVar7 = (a) m0Var8.f6462e;
                h hVar = this.f18666n;
                int iJ = m0Var8.j(aVar7, l0Var19, rVar7, hVar);
                int iJ2 = m0Var8.j((a) m0Var8.f6463f, l0Var19, rVar7, hVar);
                if (iJ == 1) {
                    iJ = iJ2;
                }
                if ((iJ & 2) != 0 && (z4 = this.Z) && z4) {
                    this.Z = false;
                    if (this.K.f18838p) {
                        this.f18660h.f(2);
                    }
                }
                this.f18661h0 -= iC - m0VarArr[i20].c();
                z15 &= (iJ & 1) != 0;
                i20++;
            }
            if (z15) {
                for (int i21 = 0; i21 < m0VarArr.length; i21++) {
                    if (rVar7.b(i21)) {
                        if (!(m0VarArr[i21].d(l0Var19) != null)) {
                            k(l0Var19, i21, false, l0Var19.e());
                        }
                    }
                }
            }
            if (z15) {
                n0Var7.f18779j.f18727h = true;
            }
        }
        boolean z16 = false;
        while (r0() && !this.O && (l0Var2 = (n0Var = this.f18669s).f18778i) != null && (l0Var3 = l0Var2.f18731m) != null && this.M0 >= l0Var3.e() && l0Var3.f18727h) {
            if (z16) {
                E();
            }
            this.U0 = false;
            l0 l0VarA = n0Var.a();
            l0VarA.getClass();
            if (this.K.f18825b.f5236a.equals(l0VarA.f18726g.f18758a.f5236a)) {
                f2.c0 c0Var = this.K.f18825b;
                if (c0Var.f5237b == -1) {
                    f2.c0 c0Var2 = l0VarA.f18726g.f18758a;
                    z = c0Var2.f5237b == -1 && c0Var.f5240e != c0Var2.f5240e;
                }
            }
            m0 m0Var9 = l0VarA.f18726g;
            f2.c0 c0Var3 = m0Var9.f18758a;
            long j18 = m0Var9.f18759b;
            this.K = y(c0Var3, j18, m0Var9.f18761d, j18, !z, 0);
            P();
            B0();
            boolean zF = f();
            h4.m0[] m0VarArr4 = this.f18653a;
            if (zF && l0VarA == n0Var.f18780k) {
                for (h4.m0 m0Var10 : m0VarArr4) {
                    int i22 = m0Var10.f6459b;
                    if (i22 == 3 || i22 == 4) {
                        boolean z17 = i22 == 4;
                        a aVar8 = (a) m0Var10.f6462e;
                        a aVar9 = (a) m0Var10.f6463f;
                        if (z17) {
                            aVar9.getClass();
                            aVar9.d(17, aVar8);
                        } else {
                            aVar9.getClass();
                            aVar8.d(17, aVar9);
                        }
                        m0Var10.f6459b = m0Var10.f6459b == 4 ? 0 : 1;
                    } else if (i22 == 2) {
                        m0Var10.f6459b = 0;
                    }
                }
            }
            if (this.K.f18828e == 3) {
                t0();
            }
            h2.r rVar8 = n0Var.f18778i.f18733o;
            for (int i23 = 0; i23 < m0VarArr4.length; i23++) {
                if (rVar8.b(i23)) {
                    h4.m0 m0Var11 = m0VarArr4[i23];
                    a aVar10 = (a) m0Var11.f6462e;
                    if (h4.m0.h(aVar10)) {
                        aVar10.g();
                    } else {
                        a aVar11 = (a) m0Var11.f6463f;
                        if (aVar11 != null) {
                            if (aVar11.f18559h != 0) {
                                aVar11.g();
                            }
                        }
                    }
                }
            }
            z16 = true;
        }
        this.S0.getClass();
    }
}
