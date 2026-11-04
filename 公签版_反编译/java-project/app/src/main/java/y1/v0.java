package y1;

import android.os.SystemClock;
import f2.j1;
import java.util.List;

/* loaded from: classes.dex */
public final class v0 {

    /* renamed from: u, reason: collision with root package name */
    public static final f2.c0 f18823u = new f2.c0(new Object());

    /* renamed from: a, reason: collision with root package name */
    public final r1.q0 f18824a;

    /* renamed from: b, reason: collision with root package name */
    public final f2.c0 f18825b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18826c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18827d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18828e;

    /* renamed from: f, reason: collision with root package name */
    public final k f18829f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f18830g;

    /* renamed from: h, reason: collision with root package name */
    public final j1 f18831h;

    /* renamed from: i, reason: collision with root package name */
    public final h2.r f18832i;

    /* renamed from: j, reason: collision with root package name */
    public final List f18833j;

    /* renamed from: k, reason: collision with root package name */
    public final f2.c0 f18834k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final int f18835m;

    /* renamed from: n, reason: collision with root package name */
    public final int f18836n;

    /* renamed from: o, reason: collision with root package name */
    public final r1.h0 f18837o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f18838p;

    /* renamed from: q, reason: collision with root package name */
    public volatile long f18839q;
    public volatile long r;

    /* renamed from: s, reason: collision with root package name */
    public volatile long f18840s;

    /* renamed from: t, reason: collision with root package name */
    public volatile long f18841t;

    public v0(r1.q0 q0Var, f2.c0 c0Var, long j10, long j11, int i10, k kVar, boolean z, j1 j1Var, h2.r rVar, List list, f2.c0 c0Var2, boolean z4, int i11, int i12, r1.h0 h0Var, long j12, long j13, long j14, long j15, boolean z10) {
        this.f18824a = q0Var;
        this.f18825b = c0Var;
        this.f18826c = j10;
        this.f18827d = j11;
        this.f18828e = i10;
        this.f18829f = kVar;
        this.f18830g = z;
        this.f18831h = j1Var;
        this.f18832i = rVar;
        this.f18833j = list;
        this.f18834k = c0Var2;
        this.l = z4;
        this.f18835m = i11;
        this.f18836n = i12;
        this.f18837o = h0Var;
        this.f18839q = j12;
        this.r = j13;
        this.f18840s = j14;
        this.f18841t = j15;
        this.f18838p = z10;
    }

    public static v0 k(h2.r rVar) {
        r1.n0 n0Var = r1.q0.f13551a;
        f2.c0 c0Var = f18823u;
        return new v0(n0Var, c0Var, -9223372036854775807L, 0L, 1, null, false, j1.f5298d, rVar, u7.y0.f15549e, c0Var, false, 1, 0, r1.h0.f13451d, 0L, 0L, 0L, 0L, false);
    }

    public final v0 a() {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, l(), SystemClock.elapsedRealtime(), this.f18838p);
    }

    public final v0 b(boolean z) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, z, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final v0 c(f2.c0 c0Var) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, c0Var, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final v0 d(f2.c0 c0Var, long j10, long j11, long j12, long j13, j1 j1Var, h2.r rVar, List list) {
        return new v0(this.f18824a, c0Var, j11, j12, this.f18828e, this.f18829f, this.f18830g, j1Var, rVar, list, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, j13, j10, SystemClock.elapsedRealtime(), this.f18838p);
    }

    public final v0 e(int i10, int i11, boolean z) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, z, i10, i11, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final v0 f(k kVar) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, kVar, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final v0 g(r1.h0 h0Var) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, h0Var, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final v0 h(int i10) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, i10, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final v0 i(boolean z) {
        return new v0(this.f18824a, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, z);
    }

    public final v0 j(r1.q0 q0Var) {
        return new v0(q0Var, this.f18825b, this.f18826c, this.f18827d, this.f18828e, this.f18829f, this.f18830g, this.f18831h, this.f18832i, this.f18833j, this.f18834k, this.l, this.f18835m, this.f18836n, this.f18837o, this.f18839q, this.r, this.f18840s, this.f18841t, this.f18838p);
    }

    public final long l() {
        long j10;
        long j11;
        if (!m()) {
            return this.f18840s;
        }
        do {
            j10 = this.f18841t;
            j11 = this.f18840s;
        } while (j10 != this.f18841t);
        return u1.f0.G(u1.f0.R(j11) + ((long) ((SystemClock.elapsedRealtime() - j10) * this.f18837o.f13452a)));
    }

    public final boolean m() {
        return this.f18828e == 3 && this.l && this.f18836n == 0;
    }
}
