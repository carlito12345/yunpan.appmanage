package r1;

import android.util.Pair;

/* loaded from: classes.dex */
public abstract class q0 {

    /* renamed from: a, reason: collision with root package name */
    public static final n0 f13551a = new n0();

    static {
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(2);
    }

    public int a(boolean z) {
        return p() ? -1 : 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z) {
        if (p()) {
            return -1;
        }
        return o() - 1;
    }

    public final int d(int i10, o0 o0Var, p0 p0Var, int i11, boolean z) {
        int i12 = f(i10, o0Var, false).f13505c;
        if (m(i12, p0Var, 0L).f13547n != i10) {
            return i10 + 1;
        }
        int iE = e(i12, i11, z);
        if (iE == -1) {
            return -1;
        }
        return m(iE, p0Var, 0L).f13546m;
    }

    public int e(int i10, int i11, boolean z) {
        if (i11 == 0) {
            if (i10 == c(z)) {
                return -1;
            }
            return i10 + 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == c(z) ? a(z) : i10 + 1;
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        int iC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        if (q0Var.o() != o() || q0Var.h() != h()) {
            return false;
        }
        p0 p0Var = new p0();
        o0 o0Var = new o0();
        p0 p0Var2 = new p0();
        o0 o0Var2 = new o0();
        for (int i10 = 0; i10 < o(); i10++) {
            if (!m(i10, p0Var, 0L).equals(q0Var.m(i10, p0Var2, 0L))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < h(); i11++) {
            if (!f(i11, o0Var, true).equals(q0Var.f(i11, o0Var2, true))) {
                return false;
            }
        }
        int iA = a(true);
        if (iA != q0Var.a(true) || (iC = c(true)) != q0Var.c(true)) {
            return false;
        }
        while (iA != iC) {
            int iE = e(iA, 0, true);
            if (iE != q0Var.e(iA, 0, true)) {
                return false;
            }
            iA = iE;
        }
        return true;
    }

    public abstract o0 f(int i10, o0 o0Var, boolean z);

    public o0 g(Object obj, o0 o0Var) {
        return f(b(obj), o0Var, true);
    }

    public abstract int h();

    public int hashCode() {
        p0 p0Var = new p0();
        o0 o0Var = new o0();
        int iO = o() + 217;
        for (int i10 = 0; i10 < o(); i10++) {
            iO = (iO * 31) + m(i10, p0Var, 0L).hashCode();
        }
        int iH = h() + (iO * 31);
        for (int i11 = 0; i11 < h(); i11++) {
            iH = (iH * 31) + f(i11, o0Var, true).hashCode();
        }
        int iA = a(true);
        while (iA != -1) {
            iH = (iH * 31) + iA;
            iA = e(iA, 0, true);
        }
        return iH;
    }

    public final Pair i(p0 p0Var, o0 o0Var, int i10, long j10) {
        Pair pairJ = j(p0Var, o0Var, i10, j10, 0L);
        pairJ.getClass();
        return pairJ;
    }

    public final Pair j(p0 p0Var, o0 o0Var, int i10, long j10, long j11) {
        a9.o.m(i10, o());
        m(i10, p0Var, j11);
        if (j10 == -9223372036854775807L) {
            j10 = p0Var.f13545k;
            if (j10 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = p0Var.f13546m;
        f(i11, o0Var, false);
        while (i11 < p0Var.f13547n && o0Var.f13507e != j10) {
            int i12 = i11 + 1;
            if (f(i12, o0Var, false).f13507e > j10) {
                break;
            }
            i11 = i12;
        }
        f(i11, o0Var, true);
        long jMin = j10 - o0Var.f13507e;
        long j12 = o0Var.f13506d;
        if (j12 != -9223372036854775807L) {
            jMin = Math.min(jMin, j12 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = o0Var.f13504b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public int k(int i10, int i11, boolean z) {
        if (i11 == 0) {
            if (i10 == a(z)) {
                return -1;
            }
            return i10 - 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == a(z) ? c(z) : i10 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object l(int i10);

    public abstract p0 m(int i10, p0 p0Var, long j10);

    public final void n(int i10, p0 p0Var) {
        m(i10, p0Var, 0L);
    }

    public abstract int o();

    public final boolean p() {
        return o() == 0;
    }
}
