package c8;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class o extends h8.a {

    /* renamed from: v, reason: collision with root package name */
    public static final n f2931v = new n();

    /* renamed from: w, reason: collision with root package name */
    public static final Object f2932w = new Object();

    /* renamed from: q, reason: collision with root package name */
    public Object[] f2933q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public String[] f2934s;

    /* renamed from: t, reason: collision with root package name */
    public int[] f2935t;

    public o(z7.p pVar) {
        super(f2931v);
        this.f2933q = new Object[32];
        this.r = 0;
        this.f2934s = new String[32];
        this.f2935t = new int[32];
        u0(pVar);
    }

    @Override // h8.a
    public final void A() {
        o0(3);
        u0(new b8.k((b8.l) ((z7.s) s0()).f19480a.entrySet()));
    }

    @Override // h8.a
    public final void L() {
        o0(2);
        t0();
        t0();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // h8.a
    public final void M() {
        o0(4);
        this.f2934s[this.r - 1] = null;
        t0();
        t0();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // h8.a
    public final String O() {
        return p0(false);
    }

    @Override // h8.a
    public final String Q() {
        return p0(true);
    }

    @Override // h8.a
    public final boolean R() {
        int iE0 = e0();
        return (iE0 == 4 || iE0 == 2 || iE0 == 10) ? false : true;
    }

    @Override // h8.a
    public final boolean U() {
        o0(8);
        boolean zB = ((z7.t) t0()).b();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return zB;
    }

    @Override // h8.a
    public final double V() throws h8.c {
        int iE0 = e0();
        if (iE0 != 7 && iE0 != 6) {
            throw new IllegalStateException("Expected " + g.b.B(7) + " but was " + g.b.B(iE0) + q0());
        }
        double dC = ((z7.t) s0()).c();
        if (this.f6695p != 1 && (Double.isNaN(dC) || Double.isInfinite(dC))) {
            throw new h8.c("JSON forbids NaN and infinities: " + dC);
        }
        t0();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return dC;
    }

    @Override // h8.a
    public final int W() {
        int iE0 = e0();
        if (iE0 != 7 && iE0 != 6) {
            throw new IllegalStateException("Expected " + g.b.B(7) + " but was " + g.b.B(iE0) + q0());
        }
        int iE = ((z7.t) s0()).e();
        t0();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return iE;
    }

    @Override // h8.a
    public final long X() {
        int iE0 = e0();
        if (iE0 != 7 && iE0 != 6) {
            throw new IllegalStateException("Expected " + g.b.B(7) + " but was " + g.b.B(iE0) + q0());
        }
        long jH = ((z7.t) s0()).h();
        t0();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return jH;
    }

    @Override // h8.a
    public final String Y() {
        return r0(false);
    }

    @Override // h8.a
    public final void a0() {
        o0(9);
        t0();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // h8.a
    public final String c0() {
        int iE0 = e0();
        if (iE0 != 6 && iE0 != 7) {
            throw new IllegalStateException("Expected " + g.b.B(6) + " but was " + g.b.B(iE0) + q0());
        }
        String strI = ((z7.t) t0()).i();
        int i10 = this.r;
        if (i10 > 0) {
            int[] iArr = this.f2935t;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return strI;
    }

    @Override // h8.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2933q = new Object[]{f2932w};
        this.r = 1;
    }

    @Override // h8.a
    public final int e0() {
        if (this.r == 0) {
            return 10;
        }
        Object objS0 = s0();
        if (objS0 instanceof Iterator) {
            boolean z = this.f2933q[this.r - 2] instanceof z7.s;
            Iterator it = (Iterator) objS0;
            if (!it.hasNext()) {
                return z ? 4 : 2;
            }
            if (z) {
                return 5;
            }
            u0(it.next());
            return e0();
        }
        if (objS0 instanceof z7.s) {
            return 3;
        }
        if (objS0 instanceof z7.o) {
            return 1;
        }
        if (objS0 instanceof z7.t) {
            Serializable serializable = ((z7.t) objS0).f19481a;
            if (serializable instanceof String) {
                return 6;
            }
            if (serializable instanceof Boolean) {
                return 8;
            }
            if (serializable instanceof Number) {
                return 7;
            }
            throw new AssertionError();
        }
        if (objS0 instanceof z7.r) {
            return 9;
        }
        if (objS0 == f2932w) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new h8.c("Custom JsonElement subclass " + objS0.getClass().getName() + " is not supported");
    }

    @Override // h8.a
    public final void l0() {
        int iC = d0.f.c(e0());
        if (iC == 1) {
            L();
            return;
        }
        if (iC != 9) {
            if (iC == 3) {
                M();
                return;
            }
            if (iC == 4) {
                r0(true);
                return;
            }
            t0();
            int i10 = this.r;
            if (i10 > 0) {
                int[] iArr = this.f2935t;
                int i11 = i10 - 1;
                iArr[i11] = iArr[i11] + 1;
            }
        }
    }

    public final void o0(int i10) {
        if (e0() == i10) {
            return;
        }
        throw new IllegalStateException("Expected " + g.b.B(i10) + " but was " + g.b.B(e0()) + q0());
    }

    public final String p0(boolean z) {
        StringBuilder sb2 = new StringBuilder("$");
        int i10 = 0;
        while (true) {
            int i11 = this.r;
            if (i10 >= i11) {
                return sb2.toString();
            }
            Object[] objArr = this.f2933q;
            Object obj = objArr[i10];
            if (obj instanceof z7.o) {
                i10++;
                if (i10 < i11 && (objArr[i10] instanceof Iterator)) {
                    int i12 = this.f2935t[i10];
                    if (z && i12 > 0 && (i10 == i11 - 1 || i10 == i11 - 2)) {
                        i12--;
                    }
                    sb2.append('[');
                    sb2.append(i12);
                    sb2.append(']');
                }
            } else if ((obj instanceof z7.s) && (i10 = i10 + 1) < i11 && (objArr[i10] instanceof Iterator)) {
                sb2.append('.');
                String str = this.f2934s[i10];
                if (str != null) {
                    sb2.append(str);
                }
            }
            i10++;
        }
    }

    public final String q0() {
        return " at path " + p0(false);
    }

    @Override // h8.a
    public final void r() {
        o0(1);
        u0(((z7.o) s0()).f19478a.iterator());
        this.f2935t[this.r - 1] = 0;
    }

    public final String r0(boolean z) {
        o0(5);
        Map.Entry entry = (Map.Entry) ((Iterator) s0()).next();
        String str = (String) entry.getKey();
        this.f2934s[this.r - 1] = z ? "<skipped>" : str;
        u0(entry.getValue());
        return str;
    }

    public final Object s0() {
        return this.f2933q[this.r - 1];
    }

    public final Object t0() {
        Object[] objArr = this.f2933q;
        int i10 = this.r - 1;
        this.r = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    @Override // h8.a
    public final String toString() {
        return o.class.getSimpleName() + q0();
    }

    public final void u0(Object obj) {
        int i10 = this.r;
        Object[] objArr = this.f2933q;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f2933q = Arrays.copyOf(objArr, i11);
            this.f2935t = Arrays.copyOf(this.f2935t, i11);
            this.f2934s = (String[]) Arrays.copyOf(this.f2934s, i11);
        }
        Object[] objArr2 = this.f2933q;
        int i12 = this.r;
        this.r = i12 + 1;
        objArr2[i12] = obj;
    }
}
