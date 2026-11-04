package y1;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import f2.j1;
import ha.v1;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import u7.o1;
import ua.g5;
import ua.g8;
import ua.i8;
import ua.t6;

/* loaded from: classes.dex */
public final class x extends a.b implements ExoPlayer {
    public final androidx.room.i A;
    public final u1.i0 B;
    public final u1.i0 C;
    public final long D;
    public final b5.i E;
    public final u1.x F;
    public final s4.a G;
    public final i8 H;
    public final i8 I;
    public int K;
    public boolean L;
    public int M;
    public SurfaceHolder M0;
    public int N;
    public k2.k N0;
    public boolean O;
    public boolean O0;
    public boolean P;
    public TextureView P0;
    public final int Q0;
    public u7.j0 R;
    public u1.r R0;
    public final d1 S;
    public r1.d S0;
    public final e1 T;
    public float T0;
    public boolean U0;
    public f2.e1 V;
    public t1.c V0;
    public final boolean W0;
    public final n X;
    public boolean X0;
    public r1.i0 Y;
    public final int Y0;
    public r1.b0 Z;
    public boolean Z0;

    /* renamed from: a1, reason: collision with root package name */
    public r1.b1 f18843a1;

    /* renamed from: b, reason: collision with root package name */
    public final h2.r f18844b;

    /* renamed from: b1, reason: collision with root package name */
    public final long f18845b1;

    /* renamed from: c, reason: collision with root package name */
    public final r1.i0 f18846c;

    /* renamed from: c1, reason: collision with root package name */
    public final long f18847c1;

    /* renamed from: d, reason: collision with root package name */
    public final u1.e f18848d;

    /* renamed from: d1, reason: collision with root package name */
    public final long f18849d1;

    /* renamed from: e, reason: collision with root package name */
    public final Context f18850e;

    /* renamed from: e1, reason: collision with root package name */
    public r1.b0 f18851e1;

    /* renamed from: f, reason: collision with root package name */
    public final r1.m0 f18852f;

    /* renamed from: f1, reason: collision with root package name */
    public v0 f18853f1;

    /* renamed from: g, reason: collision with root package name */
    public final a[] f18854g;
    public int g1;

    /* renamed from: h, reason: collision with root package name */
    public final a[] f18855h;

    /* renamed from: h0, reason: collision with root package name */
    public Object f18856h0;

    /* renamed from: h1, reason: collision with root package name */
    public long f18857h1;

    /* renamed from: i, reason: collision with root package name */
    public final h2.q f18858i;

    /* renamed from: j, reason: collision with root package name */
    public final u1.b0 f18859j;

    /* renamed from: k, reason: collision with root package name */
    public final r f18860k;
    public final f0 l;

    /* renamed from: m, reason: collision with root package name */
    public final u1.m f18861m;

    /* renamed from: n, reason: collision with root package name */
    public final CopyOnWriteArraySet f18862n;

    /* renamed from: p, reason: collision with root package name */
    public final r1.o0 f18863p;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f18864q;
    public final boolean r;

    /* renamed from: s, reason: collision with root package name */
    public final f2.b0 f18865s;

    /* renamed from: t, reason: collision with root package name */
    public final z1.e f18866t;

    /* renamed from: t0, reason: collision with root package name */
    public Surface f18867t0;

    /* renamed from: v, reason: collision with root package name */
    public final Looper f18868v;

    /* renamed from: w, reason: collision with root package name */
    public final i2.c f18869w;

    /* renamed from: x, reason: collision with root package name */
    public final u1.z f18870x;

    /* renamed from: y, reason: collision with root package name */
    public final t f18871y;
    public final u z;

    static {
        r1.z.a("media3.exoplayer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x(m mVar) throws Throwable {
        x xVar;
        f0 f0Var;
        u1.b0 b0Var;
        ContextWrapper contextWrapper;
        s4.a aVar;
        super(4);
        this.f18848d = new u1.e();
        try {
            u1.a.j("Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.10.1] [" + u1.f0.f15206a + "]");
            ContextWrapper contextWrapper2 = mVar.f18735a;
            Looper looper = mVar.f18741g;
            this.f18850e = contextWrapper2.getApplicationContext();
            u1.z zVar = mVar.f18736b;
            this.f18866t = new z1.e(zVar);
            this.Y0 = mVar.f18742h;
            this.S0 = mVar.f18743i;
            this.Q0 = mVar.f18744j;
            this.U0 = false;
            this.D = mVar.f18751s;
            t tVar = new t(this);
            this.f18871y = tVar;
            this.z = new u();
            a[] aVarArrA = ((i) mVar.f18737c.get()).a(new Handler(looper), tVar, tVar, tVar, tVar);
            this.f18854g = aVarArrA;
            a9.o.t(aVarArrA.length > 0);
            this.f18855h = new a[aVarArrA.length];
            int i10 = 0;
            while (true) {
                a[] aVarArr = this.f18855h;
                if (i10 >= aVarArr.length) {
                    break;
                }
                int i11 = this.f18854g[i10].f18553b;
                aVarArr[i10] = null;
                i10++;
            }
            this.f18858i = (h2.q) mVar.f18739e.get();
            this.f18865s = (f2.b0) mVar.f18738d.get();
            this.f18869w = (i2.c) mVar.f18740f.get();
            this.r = mVar.f18745k;
            this.T = mVar.l;
            this.f18845b1 = mVar.f18747n;
            this.f18847c1 = mVar.f18748o;
            this.f18849d1 = mVar.f18749p;
            this.S = mVar.f18746m;
            this.f18868v = looper;
            this.f18870x = zVar;
            this.f18852f = this;
            this.f18861m = new u1.m(new CopyOnWriteArraySet(), looper, looper.getThread(), zVar, new r(this), true);
            this.f18862n = new CopyOnWriteArraySet();
            this.f18864q = new ArrayList();
            this.V = new f2.e1();
            this.X = n.f18769a;
            a[] aVarArr2 = this.f18854g;
            this.f18844b = new h2.r(new b1[aVarArr2.length], new h2.p[aVarArr2.length], r1.x0.f13624b, null);
            this.f18863p = new r1.o0();
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32};
            for (int i12 = 0; i12 < 20; i12++) {
                int i13 = iArr[i12];
                a9.o.t(!false);
                sparseBooleanArray.append(i13, true);
            }
            this.f18858i.getClass();
            a9.o.t(!false);
            sparseBooleanArray.append(29, true);
            a9.o.t(!false);
            r1.n nVar = new r1.n(sparseBooleanArray);
            this.f18846c = new r1.i0(nVar);
            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
            for (int i14 = 0; i14 < nVar.f13479a.size(); i14++) {
                int iA = nVar.a(i14);
                a9.o.t(!false);
                sparseBooleanArray2.append(iA, true);
            }
            a9.o.t(!false);
            sparseBooleanArray2.append(4, true);
            a9.o.t(!false);
            sparseBooleanArray2.append(10, true);
            a9.o.t(!false);
            this.Y = new r1.i0(new r1.n(sparseBooleanArray2));
            this.f18859j = this.f18870x.a(this.f18868v, null);
            r rVar = new r(this);
            this.f18860k = rVar;
            this.f18853f1 = v0.k(this.f18844b);
            this.f18866t.O(this.f18852f, this.f18868v);
            z1.i iVar = new z1.i(mVar.z);
            try {
                f0Var = new f0(this.f18850e, this.f18854g, this.f18855h, this.f18858i, this.f18844b, new g(), this.f18869w, this.K, this.L, this.f18866t, this.T, mVar.f18750q, mVar.r, this.f18868v, this.f18870x, rVar, iVar, this.X, this.z, mVar.A);
                b0Var = f0Var.f18660h;
                xVar = this;
            } catch (Throwable th2) {
                th = th2;
                xVar = this;
            }
            try {
                xVar.l = f0Var;
                Looper looper2 = f0Var.f18663j;
                xVar.T0 = 1.0f;
                xVar.K = 0;
                r1.b0 b0Var2 = r1.b0.B;
                xVar.Z = b0Var2;
                xVar.f18851e1 = b0Var2;
                xVar.g1 = -1;
                xVar.V0 = t1.c.f14681c;
                xVar.W0 = true;
                z1.e eVar = xVar.f18866t;
                eVar.getClass();
                xVar.f18861m.a(eVar);
                i2.c cVar = xVar.f18869w;
                Handler handler = new Handler(xVar.f18868v);
                z1.e eVar2 = xVar.f18866t;
                i2.f fVar = (i2.f) cVar;
                fVar.getClass();
                eVar2.getClass();
                androidx.viewpager2.adapter.b bVar = fVar.f8446c;
                bVar.getClass();
                CopyOnWriteArrayList copyOnWriteArrayList = bVar.f2451a;
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    i2.b bVar2 = (i2.b) it.next();
                    if (bVar2.f8429b == eVar2) {
                        bVar2.f8430c = true;
                        copyOnWriteArrayList.remove(bVar2);
                    }
                }
                copyOnWriteArrayList.add(new i2.b(handler, eVar2));
                xVar.f18862n.add(xVar.f18871y);
                int i15 = Build.VERSION.SDK_INT;
                if (i15 >= 31) {
                    aVar = null;
                    contextWrapper = contextWrapper2;
                    xVar.f18870x.a(f0Var.f18663j, null).d(new fa.t(2, xVar.f18850e, this, iVar, mVar.f18756x));
                } else {
                    contextWrapper = contextWrapper2;
                    aVar = null;
                }
                b5.i iVar2 = new b5.i((Object) 0, looper2, xVar.f18868v, xVar.f18870x, new r(xVar));
                xVar.E = iVar2;
                iVar2.l(new g8(12, xVar));
                androidx.room.i iVar3 = new androidx.room.i(contextWrapper, looper2, mVar.f18741g, xVar.f18871y, xVar.f18870x);
                xVar.A = iVar3;
                iVar3.h();
                boolean z = (mVar.f18752t == Integer.MAX_VALUE || mVar.f18753u == Integer.MAX_VALUE || mVar.f18754v == Integer.MAX_VALUE || mVar.f18755w == Integer.MAX_VALUE) ? 0 : 1;
                u1.i0 i0Var = new u1.i0(contextWrapper, looper2, xVar.f18870x, 0);
                xVar.B = i0Var;
                if (i0Var.f15236d != z) {
                    i0Var.f15236d = z;
                    i0Var.a(z, i0Var.f15237e);
                }
                u1.i0 i0Var2 = new u1.i0(contextWrapper, looper2, xVar.f18870x, 1);
                xVar.C = i0Var2;
                boolean z4 = z == 2;
                if (i0Var2.f15236d != z4) {
                    i0Var2.f15236d = z4;
                    i0Var2.b(z4, i0Var2.f15237e);
                }
                int i16 = r1.i.f13455c;
                xVar.f18843a1 = r1.b1.f13418d;
                xVar.R0 = u1.r.f15269c;
                xVar.G = i15 >= 34 ? new s4.a(xVar, contextWrapper) : aVar;
                xVar.H = new i8(10);
                xVar.I = new i8(10);
                xVar.F = new u1.x(this, xVar.f18871y, xVar.f18870x, mVar.f18752t, mVar.f18753u, mVar.f18754v, mVar.f18755w);
                b0Var.b(38, xVar.S).b();
                r1.d dVar = xVar.S0;
                b0Var.getClass();
                u1.a0 a0VarC = u1.b0.c();
                a0VarC.f15183a = b0Var.f15188a.obtainMessage(31, 0, 0, dVar);
                a0VarC.b();
                xVar.W(1, 3, xVar.S0);
                xVar.W(2, 4, Integer.valueOf(xVar.Q0));
                xVar.W(2, 5, 0);
                xVar.W(1, 9, Boolean.valueOf(xVar.U0));
                xVar.W(6, 8, xVar.z);
                xVar.W(-1, 16, Integer.valueOf(xVar.Y0));
                xVar.f18848d.e();
            } catch (Throwable th3) {
                th = th3;
                xVar.f18848d.e();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            xVar = this;
        }
    }

    public static long L(v0 v0Var) {
        r1.p0 p0Var = new r1.p0();
        r1.o0 o0Var = new r1.o0();
        v0Var.f18824a.g(v0Var.f18825b.f5236a, o0Var);
        long j10 = v0Var.f18826c;
        if (j10 != -9223372036854775807L) {
            return o0Var.f13507e + j10;
        }
        return v0Var.f18824a.m(o0Var.f13505c, p0Var, 0L).f13545k;
    }

    public static v0 O(v0 v0Var, int i10) {
        v0 v0VarH = v0Var.h(i10);
        return (i10 == 1 || i10 == 4) ? v0VarH.b(false) : v0VarH;
    }

    public final int A() {
        h0();
        int iG = G(this.f18853f1);
        if (iG == -1) {
            return 0;
        }
        return iG;
    }

    public final int B() {
        h0();
        if (!this.f18853f1.f18824a.p()) {
            v0 v0Var = this.f18853f1;
            return v0Var.f18824a.b(v0Var.f18825b.f5236a);
        }
        int i10 = this.g1;
        if (i10 == -1) {
            return 0;
        }
        return i10;
    }

    public final long C() {
        h0();
        return u1.f0.R(D(this.f18853f1));
    }

    public final long D(v0 v0Var) {
        if (v0Var.f18824a.p()) {
            return u1.f0.G(this.f18857h1);
        }
        long jL = v0Var.f18838p ? v0Var.l() : v0Var.f18840s;
        if (v0Var.f18825b.b()) {
            return jL;
        }
        r1.q0 q0Var = v0Var.f18824a;
        Object obj = v0Var.f18825b.f5236a;
        r1.o0 o0Var = this.f18863p;
        q0Var.g(obj, o0Var);
        return jL + o0Var.f13507e;
    }

    public final r1.q0 E() {
        h0();
        return this.f18853f1.f18824a;
    }

    public final r1.x0 F() {
        h0();
        return this.f18853f1.f18832i.f6409d;
    }

    public final int G(v0 v0Var) {
        if (v0Var.f18824a.p()) {
            return this.g1;
        }
        return v0Var.f18824a.g(v0Var.f18825b.f5236a, this.f18863p).f13505c;
    }

    public final long H() {
        h0();
        if (!N()) {
            return g();
        }
        v0 v0Var = this.f18853f1;
        f2.c0 c0Var = v0Var.f18825b;
        r1.q0 q0Var = v0Var.f18824a;
        Object obj = c0Var.f5236a;
        r1.o0 o0Var = this.f18863p;
        q0Var.g(obj, o0Var);
        return u1.f0.R(o0Var.a(c0Var.f5237b, c0Var.f5238c));
    }

    public final boolean I() {
        h0();
        return this.f18853f1.l;
    }

    public final int J() {
        h0();
        return this.f18853f1.f18828e;
    }

    public final int K() {
        h0();
        return this.f18853f1.f18836n;
    }

    public final r1.v0 M() {
        h0();
        h2.i iVarK = ((h2.n) this.f18858i).k();
        if (!this.P) {
            return iVarK;
        }
        iVarK.getClass();
        h2.h hVar = new h2.h(iVarK);
        hVar.j(this.R);
        return new h2.i(hVar);
    }

    public final boolean N() {
        h0();
        return this.f18853f1.f18825b.b();
    }

    public final v0 P(v0 v0Var, r1.q0 q0Var, Pair pair) {
        List list;
        a9.o.k(q0Var.p() || pair != null);
        r1.q0 q0Var2 = v0Var.f18824a;
        long jX = x(v0Var);
        v0 v0VarJ = v0Var.j(q0Var);
        if (q0Var.p()) {
            f2.c0 c0Var = v0.f18823u;
            long jG = u1.f0.G(this.f18857h1);
            v0 v0VarC = v0VarJ.d(c0Var, jG, jG, jG, 0L, j1.f5298d, this.f18844b, u7.y0.f15549e).c(c0Var);
            v0VarC.f18839q = v0VarC.f18840s;
            return v0VarC;
        }
        Object obj = v0VarJ.f18825b.f5236a;
        boolean zEquals = obj.equals(pair.first);
        f2.c0 c0Var2 = !zEquals ? new f2.c0(pair.first) : v0VarJ.f18825b;
        long jLongValue = ((Long) pair.second).longValue();
        long jG2 = u1.f0.G(jX);
        if (!q0Var2.p()) {
            jG2 -= q0Var2.g(obj, this.f18863p).f13507e;
            if (zEquals && jG2 - jLongValue == 1 && jG2 == q0Var2.g(obj, this.f18863p).f13506d) {
                jG2--;
            }
        }
        if (!zEquals || jLongValue < jG2) {
            a9.o.t(!c0Var2.b());
            j1 j1Var = !zEquals ? j1.f5298d : v0VarJ.f18831h;
            h2.r rVar = !zEquals ? this.f18844b : v0VarJ.f18832i;
            if (zEquals) {
                list = v0VarJ.f18833j;
            } else {
                u7.e0 e0Var = u7.g0.f15471b;
                list = u7.y0.f15549e;
            }
            v0 v0VarC2 = v0VarJ.d(c0Var2, jLongValue, jLongValue, jLongValue, 0L, j1Var, rVar, list).c(c0Var2);
            v0VarC2.f18839q = jLongValue;
            return v0VarC2;
        }
        if (jLongValue != jG2) {
            a9.o.t(!c0Var2.b());
            long jMax = Math.max(0L, v0VarJ.r - (jLongValue - jG2));
            long j10 = v0VarJ.f18839q;
            if (v0VarJ.f18834k.equals(v0VarJ.f18825b)) {
                j10 = jLongValue + jMax;
            }
            v0 v0VarD = v0VarJ.d(c0Var2, jLongValue, jLongValue, jLongValue, jMax, v0VarJ.f18831h, v0VarJ.f18832i, v0VarJ.f18833j);
            v0VarD.f18839q = j10;
            return v0VarD;
        }
        int iB = q0Var.b(v0VarJ.f18834k.f5236a);
        if (iB != -1 && q0Var.f(iB, this.f18863p, false).f13505c == q0Var.g(c0Var2.f5236a, this.f18863p).f13505c) {
            return v0VarJ;
        }
        q0Var.g(c0Var2.f5236a, this.f18863p);
        long jA = c0Var2.b() ? this.f18863p.a(c0Var2.f5237b, c0Var2.f5238c) : this.f18863p.f13506d;
        v0 v0VarC3 = v0VarJ.d(c0Var2, v0VarJ.f18840s, v0VarJ.f18840s, v0VarJ.f18827d, jA - v0VarJ.f18840s, v0VarJ.f18831h, v0VarJ.f18832i, v0VarJ.f18833j).c(c0Var2);
        v0VarC3.f18839q = jA;
        return v0VarC3;
    }

    public final Pair Q(r1.q0 q0Var, int i10, long j10) {
        if (q0Var.p()) {
            this.g1 = i10;
            if (j10 == -9223372036854775807L) {
                j10 = 0;
            }
            this.f18857h1 = j10;
            return null;
        }
        if (i10 == -1 || i10 >= q0Var.o()) {
            i10 = q0Var.a(this.L);
            j10 = u1.f0.R(q0Var.m(i10, (r1.p0) this.f1a, 0L).f13545k);
        }
        return q0Var.i((r1.p0) this.f1a, this.f18863p, i10, u1.f0.G(j10));
    }

    public final void R(final int i10, final int i11) {
        u1.r rVar = this.R0;
        if (i10 == rVar.f15270a && i11 == rVar.f15271b) {
            return;
        }
        this.R0 = new u1.r(i10, i11);
        this.f18861m.e(24, new u1.j() { // from class: y1.q
            @Override // u1.j
            /* renamed from: a */
            public final void mo12a(Object obj) {
                ((r1.k0) obj).D(i10, i11);
            }
        });
        W(2, 14, new u1.r(i10, i11));
    }

    public final void S() {
        h0();
        v0 v0Var = this.f18853f1;
        if (v0Var.f18828e != 1) {
            return;
        }
        v0 v0VarF = v0Var.f(null);
        v0 v0VarO = O(v0VarF, v0VarF.f18824a.p() ? 4 : 2);
        this.M++;
        this.l.f18660h.a(29).b();
        f0(v0VarO, 1, false, 5, -9223372036854775807L, -1, false);
    }

    public final void T() {
        String str;
        boolean zC;
        Context context;
        StringBuilder sb2 = new StringBuilder("Release ");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" [AndroidXMedia3/1.10.1] [");
        sb2.append(u1.f0.f15206a);
        sb2.append("] [");
        HashSet hashSet = r1.z.f13633a;
        synchronized (r1.z.class) {
            str = r1.z.f13634b;
        }
        sb2.append(str);
        sb2.append("]");
        u1.a.j(sb2.toString());
        h0();
        this.A.h();
        this.B.c(false);
        this.C.c(false);
        s4.a aVar = this.G;
        if (aVar != null && Build.VERSION.SDK_INT >= 34 && (context = (Context) ((WeakReference) aVar.f14293b).get()) != null) {
            context.unregisterDeviceIdChangeListener((w) aVar.f14294c);
        }
        u1.x xVar = this.F;
        xVar.f15308f.f15188a.removeCallbacksAndMessages(null);
        xVar.f15303a.U(xVar.f15304b);
        f0 f0Var = this.l;
        if (f0Var.M || !f0Var.f18663j.getThread().isAlive()) {
            zC = true;
        } else {
            f0Var.M = true;
            u1.e eVar = new u1.e(f0Var.f18668q);
            f0Var.f18660h.b(7, eVar).b();
            zC = eVar.c(f0Var.f18673w);
        }
        if (!zC) {
            this.f18861m.e(10, new t6(12));
        }
        this.f18861m.d();
        this.f18859j.f15188a.removeCallbacksAndMessages(null);
        i2.c cVar = this.f18869w;
        z1.e eVar2 = this.f18866t;
        CopyOnWriteArrayList copyOnWriteArrayList = ((i2.f) cVar).f8446c.f2451a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            i2.b bVar = (i2.b) it.next();
            if (bVar.f8429b == eVar2) {
                bVar.f8430c = true;
                copyOnWriteArrayList.remove(bVar);
            }
        }
        v0 v0Var = this.f18853f1;
        if (v0Var.f18838p) {
            this.f18853f1 = v0Var.a();
        }
        v0 v0VarO = O(this.f18853f1, 1);
        this.f18853f1 = v0VarO;
        v0 v0VarC = v0VarO.c(v0VarO.f18825b);
        this.f18853f1 = v0VarC;
        v0VarC.f18839q = v0VarC.f18840s;
        this.f18853f1.r = 0L;
        z1.e eVar3 = this.f18866t;
        u1.b0 b0Var = eVar3.f19347h;
        b0Var.getClass();
        b0Var.d(new g8(16, eVar3));
        V();
        Surface surface = this.f18867t0;
        if (surface != null) {
            surface.release();
            this.f18867t0 = null;
        }
        this.V0 = t1.c.f14681c;
        this.Z0 = true;
    }

    public final void U(r1.k0 k0Var) {
        h0();
        k0Var.getClass();
        u1.m mVar = this.f18861m;
        if (mVar.f15251i) {
            a9.o.t(Thread.currentThread() == mVar.f15243a);
        }
        CopyOnWriteArraySet copyOnWriteArraySet = mVar.f15246d;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            u1.l lVar = (u1.l) it.next();
            if (lVar.f15239a.equals(k0Var)) {
                lVar.f15242d = true;
                u1.k kVar = mVar.f15245c;
                if (kVar != null && lVar.f15241c) {
                    lVar.f15241c = false;
                    kVar.h(lVar.f15239a, lVar.f15240b.b());
                }
                copyOnWriteArraySet.remove(lVar);
            }
        }
    }

    public final void V() {
        k2.k kVar = this.N0;
        t tVar = this.f18871y;
        if (kVar != null) {
            y0 y0VarV = v(this.z);
            a9.o.t(!y0VarV.f18878f);
            y0VarV.f18875c = 10000;
            a9.o.t(!y0VarV.f18878f);
            y0VarV.f18876d = null;
            y0VarV.b();
            this.N0.f10068a.remove(tVar);
            this.N0 = null;
        }
        TextureView textureView = this.P0;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != tVar) {
                u1.a.p("SurfaceTextureListener already unset or replaced.");
            } else {
                this.P0.setSurfaceTextureListener(null);
            }
            this.P0 = null;
        }
        SurfaceHolder surfaceHolder = this.M0;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(tVar);
            this.M0 = null;
        }
    }

    public final void W(int i10, int i11, Object obj) {
        for (a aVar : this.f18854g) {
            if (i10 == -1 || aVar.f18553b == i10) {
                y0 y0VarV = v(aVar);
                a9.o.t(!y0VarV.f18878f);
                y0VarV.f18875c = i11;
                a9.o.t(!y0VarV.f18878f);
                y0VarV.f18876d = obj;
                y0VarV.b();
            }
        }
        for (a aVar2 : this.f18855h) {
            if (aVar2 != null && (i10 == -1 || aVar2.f18553b == i10)) {
                y0 y0VarV2 = v(aVar2);
                a9.o.t(!y0VarV2.f18878f);
                y0VarV2.f18875c = i11;
                a9.o.t(!y0VarV2.f18878f);
                y0VarV2.f18876d = obj;
                y0VarV2.b();
            }
        }
    }

    public final void X(r1.d dVar) {
        h0();
        if (this.Z0) {
            return;
        }
        boolean zEquals = Objects.equals(this.S0, dVar);
        u1.m mVar = this.f18861m;
        if (!zEquals) {
            this.S0 = dVar;
            W(1, 3, dVar);
            mVar.c(20, new g5(21, dVar));
        }
        r1.d dVar2 = this.S0;
        u1.b0 b0Var = this.l.f18660h;
        b0Var.getClass();
        u1.a0 a0VarC = u1.b0.c();
        a0VarC.f15183a = b0Var.f15188a.obtainMessage(31, 0, 0, dVar2);
        a0VarC.b();
        mVar.b();
    }

    public final void Y(SurfaceHolder surfaceHolder) {
        this.O0 = false;
        this.M0 = surfaceHolder;
        surfaceHolder.addCallback(this.f18871y);
        Surface surface = this.M0.getSurface();
        if (surface == null || !surface.isValid()) {
            R(0, 0);
        } else {
            Rect surfaceFrame = this.M0.getSurfaceFrame();
            R(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    public final void Z(int i10) {
        h0();
        if (this.K != i10) {
            this.K = i10;
            u1.b0 b0Var = this.l.f18660h;
            b0Var.getClass();
            u1.a0 a0VarC = u1.b0.c();
            a0VarC.f15183a = b0Var.f15188a.obtainMessage(11, i10, 0);
            a0VarC.b();
            fa.d0 d0Var = new fa.d0(i10, 3);
            u1.m mVar = this.f18861m;
            mVar.c(8, d0Var);
            d0();
            mVar.b();
        }
    }

    public final void a0(r1.v0 v0Var) {
        r1.v0 v0VarA;
        h0();
        h2.q qVar = this.f18858i;
        qVar.getClass();
        r1.v0 v0VarM = M();
        if (this.P) {
            this.R = v0Var.f13617w;
            u7.j0 j0Var = this.S.f18623a;
            r1.u0 u0VarA = v0Var.a();
            o1 o1VarH = j0Var.iterator();
            while (o1VarH.hasNext()) {
                u0VarA.i(((Integer) o1VarH.next()).intValue(), true);
            }
            v0VarA = u0VarA.a();
        } else {
            v0VarA = v0Var;
        }
        if (!v0VarA.equals(((h2.n) qVar).k())) {
            qVar.b(v0VarA);
        }
        if (v0VarM.equals(v0Var)) {
            return;
        }
        this.f18861m.e(19, new g5(22, v0Var));
    }

    public final void b0(Object obj) {
        Object obj2 = this.f18856h0;
        boolean zC = true;
        boolean z = (obj2 == null || obj2 == obj) ? false : true;
        long j10 = z ? this.D : -9223372036854775807L;
        f0 f0Var = this.l;
        if (!f0Var.M && f0Var.f18663j.getThread().isAlive()) {
            u1.e eVar = new u1.e(f0Var.f18668q);
            f0Var.f18660h.b(30, new Pair(obj, eVar)).b();
            if (j10 != -9223372036854775807L) {
                zC = eVar.c(j10);
            }
        }
        if (z) {
            Object obj3 = this.f18856h0;
            Surface surface = this.f18867t0;
            if (obj3 == surface) {
                surface.release();
                this.f18867t0 = null;
            }
        }
        this.f18856h0 = obj;
        if (zC) {
            return;
        }
        c0(new k(2, new androidx.fragment.app.b0(3), 1003));
    }

    public final void c0(k kVar) {
        v0 v0Var = this.f18853f1;
        v0 v0VarC = v0Var.c(v0Var.f18825b);
        v0VarC.f18839q = v0VarC.f18840s;
        v0VarC.r = 0L;
        v0 v0VarO = O(v0VarC, 1);
        if (kVar != null) {
            v0VarO = v0VarO.f(kVar);
        }
        this.M++;
        this.l.f18660h.a(6).b();
        f0(v0VarO, 0, false, 5, -9223372036854775807L, -1, false);
    }

    public final void d0() {
        int iK;
        int iE;
        boolean z = false;
        r1.i0 i0Var = this.Y;
        String str = u1.f0.f15206a;
        x xVar = (x) this.f18852f;
        boolean zN = xVar.N();
        boolean zM = xVar.m();
        r1.q0 q0VarE = xVar.E();
        if (q0VarE.p()) {
            iK = -1;
        } else {
            int iA = xVar.A();
            xVar.h0();
            int i10 = xVar.K;
            if (i10 == 1) {
                i10 = 0;
            }
            xVar.h0();
            iK = q0VarE.k(iA, i10, xVar.L);
        }
        boolean z4 = iK != -1;
        r1.q0 q0VarE2 = xVar.E();
        if (q0VarE2.p()) {
            iE = -1;
        } else {
            int iA2 = xVar.A();
            xVar.h0();
            int i11 = xVar.K;
            if (i11 == 1) {
                i11 = 0;
            }
            xVar.h0();
            iE = q0VarE2.e(iA2, i11, xVar.L);
        }
        boolean z10 = iE != -1;
        boolean zK = xVar.k();
        boolean zJ = xVar.j();
        boolean zP = xVar.E().p();
        l5.y yVar = new l5.y((byte) 0, 14);
        r1.n nVar = this.f18846c.f13458a;
        h5.d0 d0Var = (h5.d0) yVar.f10629b;
        d0Var.getClass();
        for (int i12 = 0; i12 < nVar.f13479a.size(); i12++) {
            d0Var.a(nVar.a(i12));
        }
        boolean z11 = !zN;
        yVar.r(4, z11);
        yVar.r(5, zM && !zN);
        yVar.r(6, z4 && !zN);
        yVar.r(7, !zP && (z4 || !zK || zM) && !zN);
        yVar.r(8, z10 && !zN);
        yVar.r(9, !zP && (z10 || (zK && zJ)) && !zN);
        yVar.r(10, z11);
        yVar.r(11, zM && !zN);
        if (zM && !zN) {
            z = true;
        }
        yVar.r(12, z);
        r1.i0 i0Var2 = new r1.i0(d0Var.b());
        this.Y = i0Var2;
        if (i0Var2.equals(i0Var)) {
            return;
        }
        this.f18861m.c(13, new r(this));
    }

    public final void e0(int i10, boolean z) {
        int i11 = this.P ? 4 : (this.f18853f1.f18836n != 1 || z) ? 0 : 1;
        v0 v0VarA = this.f18853f1;
        if (v0VarA.l == z && v0VarA.f18836n == i11 && v0VarA.f18835m == i10) {
            return;
        }
        this.M++;
        if (v0VarA.f18838p) {
            v0VarA = v0VarA.a();
        }
        v0 v0VarE = v0VarA.e(i10, i11, z);
        int i12 = i10 | (i11 << 4);
        u1.b0 b0Var = this.l.f18660h;
        b0Var.getClass();
        u1.a0 a0VarC = u1.b0.c();
        a0VarC.f15183a = b0Var.f15188a.obtainMessage(1, z ? 1 : 0, i12);
        a0VarC.b();
        f0(v0VarE, 0, false, 5, -9223372036854775807L, -1, false);
    }

    public final void f0(final v0 v0Var, int i10, boolean z, int i11, long j10, int i12, boolean z4) {
        Pair pair;
        int i13;
        r1.y yVar;
        boolean z10;
        boolean z11;
        int i14;
        int i15;
        Object obj;
        r1.y yVar2;
        Object obj2;
        long j11;
        long j12;
        long jL;
        long jL2;
        int i16;
        Object obj3;
        r1.y yVar3;
        Object obj4;
        v0 v0Var2 = this.f18853f1;
        this.f18853f1 = v0Var;
        boolean zEquals = v0Var2.f18824a.equals(v0Var.f18824a);
        r1.q0 q0Var = v0Var2.f18824a;
        r1.q0 q0Var2 = v0Var.f18824a;
        if (q0Var2.p() && q0Var.p()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (q0Var2.p() != q0Var.p()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else {
            f2.c0 c0Var = v0Var2.f18825b;
            Object obj5 = c0Var.f5236a;
            r1.o0 o0Var = this.f18863p;
            int i17 = q0Var.g(obj5, o0Var).f13505c;
            r1.p0 p0Var = (r1.p0) this.f1a;
            Object obj6 = q0Var.m(i17, p0Var, 0L).f13535a;
            f2.c0 c0Var2 = v0Var.f18825b;
            if (obj6.equals(q0Var2.m(q0Var2.g(c0Var2.f5236a, o0Var).f13505c, p0Var, 0L).f13535a)) {
                pair = (z && i11 == 0 && c0Var.f5239d < c0Var2.f5239d) ? new Pair(Boolean.TRUE, 0) : (z && i11 == 1 && z4) ? new Pair(Boolean.TRUE, 2) : new Pair(Boolean.FALSE, -1);
            } else {
                if (z && i11 == 0) {
                    i13 = 1;
                } else if (z && i11 == 1) {
                    i13 = 2;
                } else {
                    if (zEquals) {
                        throw new IllegalStateException();
                    }
                    i13 = 3;
                }
                pair = new Pair(Boolean.TRUE, Integer.valueOf(i13));
            }
        }
        boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
        int iIntValue = ((Integer) pair.second).intValue();
        if (zBooleanValue) {
            yVar = !v0Var.f18824a.p() ? v0Var.f18824a.m(v0Var.f18824a.g(v0Var.f18825b.f5236a, this.f18863p).f13505c, (r1.p0) this.f1a, 0L).f13537c : null;
            this.f18851e1 = r1.b0.B;
        } else {
            yVar = null;
        }
        if (zBooleanValue || !v0Var2.f18833j.equals(v0Var.f18833j)) {
            r1.b0 b0Var = this.f18851e1;
            b0Var.getClass();
            r1.a0 a0Var = new r1.a0(b0Var);
            List list = v0Var.f18833j;
            for (int i18 = 0; i18 < list.size(); i18++) {
                r1.d0 d0Var = (r1.d0) list.get(i18);
                int i19 = 0;
                while (true) {
                    r1.c0[] c0VarArr = d0Var.f13430a;
                    if (i19 < c0VarArr.length) {
                        c0VarArr[i19].b(a0Var);
                        i19++;
                    }
                }
            }
            this.f18851e1 = new r1.b0(a0Var);
        }
        r1.b0 b0VarT = t();
        boolean zEquals2 = b0VarT.equals(this.Z);
        this.Z = b0VarT;
        boolean z12 = v0Var2.l != v0Var.l;
        boolean z13 = v0Var2.f18828e != v0Var.f18828e;
        if (z13 || z12) {
            g0();
        }
        boolean z14 = v0Var2.f18830g != v0Var.f18830g;
        if (!zEquals) {
            this.f18861m.c(0, new ha.o(i10, 19, v0Var));
        }
        if (z) {
            r1.o0 o0Var2 = new r1.o0();
            if (v0Var2.f18824a.p()) {
                z10 = z13;
                z11 = z14;
                i14 = i12;
                i15 = i14;
                obj = null;
                yVar2 = null;
                obj2 = null;
            } else {
                Object obj7 = v0Var2.f18825b.f5236a;
                v0Var2.f18824a.g(obj7, o0Var2);
                int i20 = o0Var2.f13505c;
                int iB = v0Var2.f18824a.b(obj7);
                z10 = z13;
                z11 = z14;
                obj = v0Var2.f18824a.m(i20, (r1.p0) this.f1a, 0L).f13535a;
                yVar2 = ((r1.p0) this.f1a).f13537c;
                i14 = i20;
                i15 = iB;
                obj2 = obj7;
            }
            if (i11 == 0) {
                if (v0Var2.f18825b.b()) {
                    f2.c0 c0Var3 = v0Var2.f18825b;
                    jL = o0Var2.a(c0Var3.f5237b, c0Var3.f5238c);
                    jL2 = L(v0Var2);
                } else if (v0Var2.f18825b.f5240e != -1) {
                    jL = L(this.f18853f1);
                    jL2 = jL;
                } else {
                    j11 = o0Var2.f13507e;
                    j12 = o0Var2.f13506d;
                    jL = j11 + j12;
                    jL2 = jL;
                }
            } else if (v0Var2.f18825b.b()) {
                jL = v0Var2.f18840s;
                jL2 = L(v0Var2);
            } else {
                j11 = o0Var2.f13507e;
                j12 = v0Var2.f18840s;
                jL = j11 + j12;
                jL2 = jL;
            }
            long jR = u1.f0.R(jL);
            long jR2 = u1.f0.R(jL2);
            f2.c0 c0Var4 = v0Var2.f18825b;
            r1.l0 l0Var = new r1.l0(obj, i14, yVar2, obj2, i15, jR, jR2, c0Var4.f5237b, c0Var4.f5238c);
            int iA = A();
            int iB2 = B();
            if (this.f18853f1.f18824a.p()) {
                i16 = iB2;
                obj3 = null;
                yVar3 = null;
                obj4 = null;
            } else {
                v0 v0Var3 = this.f18853f1;
                Object obj8 = v0Var3.f18825b.f5236a;
                v0Var3.f18824a.g(obj8, this.f18863p);
                int iB3 = this.f18853f1.f18824a.b(obj8);
                r1.q0 q0Var3 = this.f18853f1.f18824a;
                r1.p0 p0Var2 = (r1.p0) this.f1a;
                i16 = iB3;
                obj3 = q0Var3.m(iA, p0Var2, 0L).f13535a;
                yVar3 = p0Var2.f13537c;
                obj4 = obj8;
            }
            long jR3 = u1.f0.R(j10);
            long jR4 = this.f18853f1.f18825b.b() ? u1.f0.R(L(this.f18853f1)) : jR3;
            f2.c0 c0Var5 = this.f18853f1.f18825b;
            this.f18861m.c(11, new v1(i11, l0Var, new r1.l0(obj3, iA, yVar3, obj4, i16, jR3, jR4, c0Var5.f5237b, c0Var5.f5238c)));
        } else {
            z10 = z13;
            z11 = z14;
        }
        if (zBooleanValue) {
            this.f18861m.c(1, new ha.o(iIntValue, 20, yVar));
        }
        if (v0Var2.f18829f != v0Var.f18829f) {
            final int i21 = 7;
            this.f18861m.c(10, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i21) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
            if (v0Var.f18829f != null) {
                final int i22 = 8;
                this.f18861m.c(10, new u1.j() { // from class: y1.o
                    @Override // u1.j
                    /* renamed from: a */
                    public final void mo12a(Object obj9) {
                        r1.k0 k0Var = (r1.k0) obj9;
                        switch (i22) {
                            case 0:
                                v0 v0Var4 = v0Var;
                                boolean z15 = v0Var4.f18830g;
                                k0Var.getClass();
                                k0Var.f(v0Var4.f18830g);
                                break;
                            case 1:
                                v0 v0Var5 = v0Var;
                                k0Var.A(v0Var5.f18828e, v0Var5.l);
                                break;
                            case 2:
                                k0Var.k(v0Var.f18828e);
                                break;
                            case 3:
                                v0 v0Var6 = v0Var;
                                k0Var.g(v0Var6.f18835m, v0Var6.l);
                                break;
                            case 4:
                                k0Var.a(v0Var.f18836n);
                                break;
                            case 5:
                                k0Var.H(v0Var.m());
                                break;
                            case 6:
                                k0Var.C(v0Var.f18837o);
                                break;
                            case 7:
                                k0Var.n(v0Var.f18829f);
                                break;
                            case 8:
                                k0Var.r(v0Var.f18829f);
                                break;
                            default:
                                k0Var.d(v0Var.f18832i.f6409d);
                                break;
                        }
                    }
                });
            }
        }
        h2.r rVar = v0Var2.f18832i;
        h2.r rVar2 = v0Var.f18832i;
        if (rVar != rVar2) {
            h2.q qVar = this.f18858i;
            b5.i iVar = rVar2.f6410e;
            qVar.getClass();
            final int i23 = 9;
            this.f18861m.c(2, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i23) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (!zEquals2) {
            this.f18861m.c(14, new g5(20, this.Z));
        }
        if (z11) {
            final int i24 = 0;
            this.f18861m.c(3, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i24) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (z10 || z12) {
            final int i25 = 1;
            this.f18861m.c(-1, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i25) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (z10) {
            final int i26 = 2;
            this.f18861m.c(4, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i26) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (z12 || v0Var2.f18835m != v0Var.f18835m) {
            final int i27 = 3;
            this.f18861m.c(5, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i27) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (v0Var2.f18836n != v0Var.f18836n) {
            final int i28 = 4;
            this.f18861m.c(6, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i28) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (v0Var2.m() != v0Var.m()) {
            final int i29 = 5;
            this.f18861m.c(7, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i29) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        if (!v0Var2.f18837o.equals(v0Var.f18837o)) {
            final int i30 = 6;
            this.f18861m.c(12, new u1.j() { // from class: y1.o
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj9) {
                    r1.k0 k0Var = (r1.k0) obj9;
                    switch (i30) {
                        case 0:
                            v0 v0Var4 = v0Var;
                            boolean z15 = v0Var4.f18830g;
                            k0Var.getClass();
                            k0Var.f(v0Var4.f18830g);
                            break;
                        case 1:
                            v0 v0Var5 = v0Var;
                            k0Var.A(v0Var5.f18828e, v0Var5.l);
                            break;
                        case 2:
                            k0Var.k(v0Var.f18828e);
                            break;
                        case 3:
                            v0 v0Var6 = v0Var;
                            k0Var.g(v0Var6.f18835m, v0Var6.l);
                            break;
                        case 4:
                            k0Var.a(v0Var.f18836n);
                            break;
                        case 5:
                            k0Var.H(v0Var.m());
                            break;
                        case 6:
                            k0Var.C(v0Var.f18837o);
                            break;
                        case 7:
                            k0Var.n(v0Var.f18829f);
                            break;
                        case 8:
                            k0Var.r(v0Var.f18829f);
                            break;
                        default:
                            k0Var.d(v0Var.f18832i.f6409d);
                            break;
                    }
                }
            });
        }
        d0();
        this.f18861m.b();
        if (v0Var2.f18838p != v0Var.f18838p) {
            Iterator it = this.f18862n.iterator();
            while (it.hasNext()) {
                ((t) it.next()).f18808a.g0();
            }
        }
    }

    public final void g0() {
        int iJ = J();
        u1.i0 i0Var = this.C;
        u1.i0 i0Var2 = this.B;
        if (iJ != 1) {
            if (iJ == 2 || iJ == 3) {
                h0();
                i0Var2.c(I() && !this.f18853f1.f18838p);
                i0Var.c(I());
                return;
            } else if (iJ != 4) {
                throw new IllegalStateException();
            }
        }
        i0Var2.c(false);
        i0Var.c(false);
    }

    public final void h0() {
        this.f18848d.b();
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.f18868v;
        if (threadCurrentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            String str = u1.f0.f15206a;
            Locale locale = Locale.US;
            String strL = ta.q.l("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread");
            if (this.W0) {
                throw new IllegalStateException(strL);
            }
            u1.a.q(strL, this.X0 ? null : new IllegalStateException());
            this.X0 = true;
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final boolean isScrubbingModeEnabled() {
        h0();
        return this.P;
    }

    @Override // a.b
    public final void p(int i10, long j10, boolean z) {
        h0();
        if (i10 == -1) {
            return;
        }
        a9.o.k(i10 >= 0);
        r1.q0 q0Var = this.f18853f1.f18824a;
        if (q0Var.p() || i10 < q0Var.o()) {
            z1.e eVar = this.f18866t;
            if (!eVar.f19348i) {
                z1.a aVarI = eVar.I();
                eVar.f19348i = true;
                eVar.N(aVarI, -1, new z1.c(aVarI, 25));
            }
            this.M++;
            if (N()) {
                u1.a.p("seekTo ignored because an ad is playing");
                s3.t tVar = new s3.t(this.f18853f1);
                tVar.c(1);
                x xVar = this.f18860k.f18797a;
                xVar.f18859j.d(new s1.f(xVar, 15, tVar));
                return;
            }
            v0 v0VarH = this.f18853f1;
            int i11 = v0VarH.f18828e;
            if (i11 == 3 || (i11 == 4 && !q0Var.p())) {
                v0VarH = this.f18853f1.h(2);
            }
            int iA = A();
            v0 v0VarP = P(v0VarH, q0Var, Q(q0Var, i10, j10));
            this.l.f18660h.b(3, new e0(q0Var, i10, u1.f0.G(j10))).b();
            f0(v0VarP, 0, true, 1, D(v0VarP), iA, z);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setImageOutput(ImageOutput imageOutput) {
        h0();
        W(4, 15, imageOutput);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setScrubbingModeEnabled(boolean z) {
        r1.v0 v0VarA;
        h0();
        if (z == this.P) {
            return;
        }
        this.P = z;
        d1 d1Var = this.S;
        if (!d1Var.f18623a.isEmpty()) {
            h2.q qVar = this.f18858i;
            qVar.getClass();
            h2.i iVarK = ((h2.n) qVar).k();
            if (z) {
                this.R = iVarK.f13617w;
                r1.u0 u0VarA = iVarK.a();
                o1 o1VarH = d1Var.f18623a.iterator();
                while (o1VarH.hasNext()) {
                    u0VarA.i(((Integer) o1VarH.next()).intValue(), true);
                }
                v0VarA = u0VarA.a();
            } else {
                iVarK.getClass();
                h2.h hVar = new h2.h(iVarK);
                hVar.j(this.R);
                h2.i iVar = new h2.i(hVar);
                this.R = null;
                v0VarA = iVar;
            }
            if (!v0VarA.equals(iVarK)) {
                qVar.b(v0VarA);
            }
        }
        this.l.f18660h.b(36, Boolean.valueOf(z)).b();
        v0 v0Var = this.f18853f1;
        e0(v0Var.f18835m, v0Var.l);
    }

    public final r1.b0 t() {
        r1.q0 q0VarE = E();
        if (q0VarE.p()) {
            return this.f18851e1;
        }
        r1.y yVar = q0VarE.m(A(), (r1.p0) this.f1a, 0L).f13537c;
        r1.b0 b0Var = this.f18851e1;
        b0Var.getClass();
        r1.a0 a0Var = new r1.a0(b0Var);
        r1.b0 b0Var2 = yVar.f13629d;
        if (b0Var2 != null) {
            CharSequence charSequence = b0Var2.f13395a;
            if (charSequence != null) {
                a0Var.f13371a = charSequence;
            }
            CharSequence charSequence2 = b0Var2.f13396b;
            if (charSequence2 != null) {
                a0Var.f13372b = charSequence2;
            }
            CharSequence charSequence3 = b0Var2.f13397c;
            if (charSequence3 != null) {
                a0Var.f13373c = charSequence3;
            }
            CharSequence charSequence4 = b0Var2.f13398d;
            if (charSequence4 != null) {
                a0Var.f13374d = charSequence4;
            }
            CharSequence charSequence5 = b0Var2.f13399e;
            if (charSequence5 != null) {
                a0Var.f13375e = charSequence5;
            }
            byte[] bArr = b0Var2.f13400f;
            if (bArr != null) {
                a0Var.f13376f = bArr == null ? null : (byte[]) bArr.clone();
                a0Var.f13377g = b0Var2.f13401g;
                r1.b0 b0Var3 = r1.b0.B;
            }
            Integer num = b0Var2.f13402h;
            if (num != null) {
                a0Var.f13378h = num;
            }
            Integer num2 = b0Var2.f13403i;
            if (num2 != null) {
                a0Var.f13379i = num2;
            }
            Integer num3 = b0Var2.f13404j;
            if (num3 != null) {
                a0Var.f13380j = num3;
            }
            Boolean bool = b0Var2.f13405k;
            if (bool != null) {
                a0Var.f13381k = bool;
            }
            Integer num4 = b0Var2.l;
            if (num4 != null) {
                a0Var.l = num4;
            }
            Integer num5 = b0Var2.f13406m;
            if (num5 != null) {
                a0Var.l = num5;
            }
            Integer num6 = b0Var2.f13407n;
            if (num6 != null) {
                a0Var.f13382m = num6;
            }
            Integer num7 = b0Var2.f13408o;
            if (num7 != null) {
                a0Var.f13383n = num7;
            }
            Integer num8 = b0Var2.f13409p;
            if (num8 != null) {
                a0Var.f13384o = num8;
            }
            Integer num9 = b0Var2.f13410q;
            if (num9 != null) {
                a0Var.f13385p = num9;
            }
            Integer num10 = b0Var2.r;
            if (num10 != null) {
                a0Var.f13386q = num10;
            }
            CharSequence charSequence6 = b0Var2.f13411s;
            if (charSequence6 != null) {
                a0Var.r = charSequence6;
            }
            CharSequence charSequence7 = b0Var2.f13412t;
            if (charSequence7 != null) {
                a0Var.f13387s = charSequence7;
            }
            CharSequence charSequence8 = b0Var2.f13413u;
            if (charSequence8 != null) {
                a0Var.f13388t = charSequence8;
            }
            Integer num11 = b0Var2.f13414v;
            if (num11 != null) {
                a0Var.f13389u = num11;
            }
            Integer num12 = b0Var2.f13415w;
            if (num12 != null) {
                a0Var.f13390v = num12;
            }
            CharSequence charSequence9 = b0Var2.f13416x;
            if (charSequence9 != null) {
                a0Var.f13391w = charSequence9;
            }
            CharSequence charSequence10 = b0Var2.f13417y;
            if (charSequence10 != null) {
                a0Var.f13392x = charSequence10;
            }
            Integer num13 = b0Var2.z;
            if (num13 != null) {
                a0Var.f13393y = num13;
            }
            u7.g0 g0Var = b0Var2.A;
            if (!g0Var.isEmpty()) {
                a0Var.z = u7.g0.m(g0Var);
            }
        }
        return new r1.b0(a0Var);
    }

    public final void u() {
        h0();
        V();
        b0(null);
        R(0, 0);
    }

    public final y0 v(x0 x0Var) {
        int iG = G(this.f18853f1);
        r1.q0 q0Var = this.f18853f1.f18824a;
        int i10 = iG == -1 ? 0 : iG;
        f0 f0Var = this.l;
        return new y0(f0Var, x0Var, q0Var, i10, f0Var.f18663j);
    }

    public final long w() {
        h0();
        if (this.f18853f1.f18824a.p()) {
            return this.f18857h1;
        }
        v0 v0Var = this.f18853f1;
        long j10 = 0;
        if (v0Var.f18834k.f5239d != v0Var.f18825b.f5239d) {
            return u1.f0.R(v0Var.f18824a.m(A(), (r1.p0) this.f1a, 0L).l);
        }
        long j11 = v0Var.f18839q;
        if (this.f18853f1.f18834k.b()) {
            v0 v0Var2 = this.f18853f1;
            v0Var2.f18824a.g(v0Var2.f18834k.f5236a, this.f18863p).d(this.f18853f1.f18834k.f5237b);
        } else {
            j10 = j11;
        }
        v0 v0Var3 = this.f18853f1;
        r1.q0 q0Var = v0Var3.f18824a;
        Object obj = v0Var3.f18834k.f5236a;
        r1.o0 o0Var = this.f18863p;
        q0Var.g(obj, o0Var);
        return u1.f0.R(j10 + o0Var.f13507e);
    }

    public final long x(v0 v0Var) {
        if (!v0Var.f18825b.b()) {
            return u1.f0.R(D(v0Var));
        }
        Object obj = v0Var.f18825b.f5236a;
        r1.q0 q0Var = v0Var.f18824a;
        r1.o0 o0Var = this.f18863p;
        q0Var.g(obj, o0Var);
        long j10 = v0Var.f18826c;
        return j10 == -9223372036854775807L ? u1.f0.R(q0Var.m(G(v0Var), (r1.p0) this.f1a, 0L).f13545k) : u1.f0.R(o0Var.f13507e) + u1.f0.R(j10);
    }

    public final int y() {
        h0();
        if (N()) {
            return this.f18853f1.f18825b.f5237b;
        }
        return -1;
    }

    public final int z() {
        h0();
        if (N()) {
            return this.f18853f1.f18825b.f5238c;
        }
        return -1;
    }
}
