package f2;

import android.util.SparseArray;
import j$.util.Objects;
import java.io.EOFException;
import ua.i8;

/* loaded from: classes.dex */
public final class b1 implements l2.j0 {
    public r1.p B;
    public boolean D;

    /* renamed from: a, reason: collision with root package name */
    public final z0 f5205a;

    /* renamed from: d, reason: collision with root package name */
    public final b2.g f5208d;

    /* renamed from: e, reason: collision with root package name */
    public final b2.d f5209e;

    /* renamed from: f, reason: collision with root package name */
    public u0 f5210f;

    /* renamed from: g, reason: collision with root package name */
    public r1.p f5211g;

    /* renamed from: h, reason: collision with root package name */
    public a1.i f5212h;

    /* renamed from: p, reason: collision with root package name */
    public int f5219p;

    /* renamed from: q, reason: collision with root package name */
    public int f5220q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f5221s;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5227y;

    /* renamed from: b, reason: collision with root package name */
    public final c2.g f5206b = new c2.g();

    /* renamed from: i, reason: collision with root package name */
    public int f5213i = 1000;

    /* renamed from: j, reason: collision with root package name */
    public long[] f5214j = new long[1000];

    /* renamed from: k, reason: collision with root package name */
    public long[] f5215k = new long[1000];

    /* renamed from: n, reason: collision with root package name */
    public long[] f5217n = new long[1000];

    /* renamed from: m, reason: collision with root package name */
    public int[] f5216m = new int[1000];
    public int[] l = new int[1000];

    /* renamed from: o, reason: collision with root package name */
    public l2.i0[] f5218o = new l2.i0[1000];

    /* renamed from: c, reason: collision with root package name */
    public final androidx.room.s f5207c = new androidx.room.s(new a2.u0(21));

    /* renamed from: t, reason: collision with root package name */
    public long f5222t = Long.MIN_VALUE;

    /* renamed from: v, reason: collision with root package name */
    public long f5224v = Long.MIN_VALUE;

    /* renamed from: w, reason: collision with root package name */
    public long f5225w = Long.MIN_VALUE;
    public boolean A = true;
    public boolean z = true;
    public boolean C = true;

    /* renamed from: u, reason: collision with root package name */
    public long f5223u = Long.MIN_VALUE;

    /* renamed from: x, reason: collision with root package name */
    public int f5226x = -1;

    public b1(s4.a aVar, b2.g gVar, b2.d dVar) {
        this.f5208d = gVar;
        this.f5209e = dVar;
        this.f5205a = new z0(aVar);
    }

    @Override // l2.j0
    public final void a(int i10, u1.q qVar) {
        c(qVar, i10, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc A[Catch: all -> 0x0063, TryCatch #0 {all -> 0x0063, blocks: (B:23:0x0043, B:25:0x0049, B:29:0x005f, B:32:0x0066, B:36:0x006e, B:38:0x0081, B:42:0x0089, B:43:0x0090, B:48:0x00c1, B:71:0x013c, B:73:0x0145, B:50:0x00dc, B:52:0x00e5, B:54:0x00ee, B:56:0x0102, B:60:0x010b, B:61:0x0110, B:63:0x0116, B:67:0x0124, B:69:0x0129, B:70:0x0139, B:53:0x00ec), top: B:78:0x0043 }] */
    @Override // l2.j0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(long j10, int i10, int i11, int i12, l2.i0 i0Var) {
        int i13 = i10 & 1;
        boolean z = i13 != 0;
        if (this.z) {
            if (!z) {
                return;
            } else {
                this.z = false;
            }
        }
        if (this.C) {
            if (j10 < this.f5222t) {
                return;
            }
            if (i13 == 0) {
                if (!this.D) {
                    u1.a.p("Overriding unexpected non-sync sample for format: " + this.B);
                    this.D = true;
                }
                i10 |= 1;
            }
        }
        long j11 = (this.f5205a.f5453g - i11) - i12;
        synchronized (this) {
            try {
                int i14 = this.f5219p;
                if (i14 > 0) {
                    int iM = m(i14 - 1);
                    a9.o.k(this.f5215k[iM] + ((long) this.l[iM]) <= j11);
                }
                this.f5227y = (536870912 & i10) != 0;
                this.f5225w = Math.max(this.f5225w, j10);
                long j12 = this.f5223u;
                if (j12 != Long.MIN_VALUE && this.f5226x == -1 && j10 >= j12) {
                    this.f5226x = this.f5220q + this.f5219p;
                }
                int iM2 = m(this.f5219p);
                this.f5217n[iM2] = j10;
                this.f5215k[iM2] = j11;
                this.l[iM2] = i11;
                this.f5216m[iM2] = i10;
                this.f5218o[iM2] = i0Var;
                this.f5214j[iM2] = 0;
                if (!(((SparseArray) this.f5207c.f2427c).size() == 0)) {
                    SparseArray sparseArray = (SparseArray) this.f5207c.f2427c;
                    if (!((a1) sparseArray.valueAt(sparseArray.size() - 1)).f5200a.equals(this.B)) {
                        r1.p pVar = this.B;
                        pVar.getClass();
                        b2.g gVar = this.f5208d;
                        b2.f fVarU = gVar != null ? gVar.u(this.f5209e, pVar) : b2.f.f2531a;
                        androidx.room.s sVar = this.f5207c;
                        int i15 = this.f5220q + this.f5219p;
                        a1 a1Var = new a1(pVar, fVarU);
                        int i16 = sVar.f2426b;
                        SparseArray sparseArray2 = (SparseArray) sVar.f2427c;
                        if (i16 == -1) {
                            a9.o.t(sparseArray2.size() == 0);
                            sVar.f2426b = 0;
                        }
                        if (sparseArray2.size() > 0) {
                            int iKeyAt = sparseArray2.keyAt(sparseArray2.size() - 1);
                            a9.o.k(i15 >= iKeyAt);
                            if (iKeyAt == i15) {
                                ((a2.u0) sVar.f2428d).accept(sparseArray2.valueAt(sparseArray2.size() - 1));
                            }
                        }
                        sparseArray2.append(i15, a1Var);
                    }
                }
                int i17 = this.f5219p + 1;
                this.f5219p = i17;
                int i18 = this.f5213i;
                if (i17 == i18) {
                    int i19 = i18 + 1000;
                    long[] jArr = new long[i19];
                    long[] jArr2 = new long[i19];
                    long[] jArr3 = new long[i19];
                    int[] iArr = new int[i19];
                    int[] iArr2 = new int[i19];
                    l2.i0[] i0VarArr = new l2.i0[i19];
                    int i20 = this.r;
                    int i21 = i18 - i20;
                    System.arraycopy(this.f5215k, i20, jArr2, 0, i21);
                    System.arraycopy(this.f5217n, this.r, jArr3, 0, i21);
                    System.arraycopy(this.f5216m, this.r, iArr, 0, i21);
                    System.arraycopy(this.l, this.r, iArr2, 0, i21);
                    System.arraycopy(this.f5218o, this.r, i0VarArr, 0, i21);
                    System.arraycopy(this.f5214j, this.r, jArr, 0, i21);
                    int i22 = this.r;
                    System.arraycopy(this.f5215k, 0, jArr2, i21, i22);
                    System.arraycopy(this.f5217n, 0, jArr3, i21, i22);
                    System.arraycopy(this.f5216m, 0, iArr, i21, i22);
                    System.arraycopy(this.l, 0, iArr2, i21, i22);
                    System.arraycopy(this.f5218o, 0, i0VarArr, i21, i22);
                    System.arraycopy(this.f5214j, 0, jArr, i21, i22);
                    this.f5215k = jArr2;
                    this.f5217n = jArr3;
                    this.f5216m = iArr;
                    this.l = iArr2;
                    this.f5218o = i0VarArr;
                    this.f5214j = jArr;
                    this.r = 0;
                    this.f5213i = i19;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // l2.j0
    public final void c(u1.q qVar, int i10, int i11) {
        while (true) {
            z0 z0Var = this.f5205a;
            if (i10 <= 0) {
                z0Var.getClass();
                return;
            }
            int iB = z0Var.b(i10);
            y0 y0Var = z0Var.f5452f;
            i2.a aVar = (i2.a) y0Var.f5445c;
            qVar.l(((int) (z0Var.f5453g - y0Var.f5443a)) + aVar.f8427b, iB, aVar.f8426a);
            i10 -= iB;
            long j10 = z0Var.f5453g + iB;
            z0Var.f5453g = j10;
            y0 y0Var2 = z0Var.f5452f;
            if (j10 == y0Var2.f5444b) {
                z0Var.f5452f = (y0) y0Var2.f5446d;
            }
        }
    }

    @Override // l2.j0
    public final /* synthetic */ void d(long j10) {
    }

    @Override // l2.j0
    public final int e(r1.h hVar, int i10, boolean z) {
        return f(hVar, i10, z);
    }

    @Override // l2.j0
    public final int f(r1.h hVar, int i10, boolean z) throws EOFException {
        z0 z0Var = this.f5205a;
        int iB = z0Var.b(i10);
        y0 y0Var = z0Var.f5452f;
        i2.a aVar = (i2.a) y0Var.f5445c;
        int i11 = hVar.read(aVar.f8426a, ((int) (z0Var.f5453g - y0Var.f5443a)) + aVar.f8427b, iB);
        if (i11 == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        long j10 = z0Var.f5453g + i11;
        z0Var.f5453g = j10;
        y0 y0Var2 = z0Var.f5452f;
        if (j10 != y0Var2.f5444b) {
            return i11;
        }
        z0Var.f5452f = (y0) y0Var2.f5446d;
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[Catch: all -> 0x004f, TryCatch #0 {all -> 0x004f, blocks: (B:4:0x0002, B:8:0x000e, B:13:0x0020, B:15:0x0039, B:19:0x0053, B:21:0x0061, B:25:0x006a, B:18:0x0051), top: B:35:0x0002 }] */
    @Override // l2.j0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(r1.p pVar) {
        boolean z;
        synchronized (this) {
            z = false;
            try {
                this.A = false;
                if (!Objects.equals(pVar, this.B)) {
                    if (!(((SparseArray) this.f5207c.f2427c).size() == 0)) {
                        SparseArray sparseArray = (SparseArray) this.f5207c.f2427c;
                        if (((a1) sparseArray.valueAt(sparseArray.size() - 1)).f5200a.equals(pVar)) {
                            SparseArray sparseArray2 = (SparseArray) this.f5207c.f2427c;
                            this.B = ((a1) sparseArray2.valueAt(sparseArray2.size() - 1)).f5200a;
                        } else {
                            this.B = pVar;
                        }
                        boolean z4 = this.C;
                        r1.p pVar2 = this.B;
                        String str = pVar2.f13523o;
                        this.C = z4 & (r1.e0.g(str) == 1 && r1.e0.a(str, pVar2.f13520k));
                        this.D = false;
                        z = true;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        u0 u0Var = this.f5210f;
        if (u0Var == null || !z) {
            return;
        }
        u0Var.r.post(u0Var.f5405p);
    }

    public final long h(int i10) {
        long j10 = this.f5224v;
        long jMax = Long.MIN_VALUE;
        if (i10 != 0) {
            int iM = m(i10 - 1);
            for (int i11 = 0; i11 < i10; i11++) {
                jMax = Math.max(jMax, this.f5217n[iM]);
                if ((this.f5216m[iM] & 1) != 0) {
                    break;
                }
                iM--;
                if (iM == -1) {
                    iM = this.f5213i - 1;
                }
            }
        }
        this.f5224v = Math.max(j10, jMax);
        this.f5219p -= i10;
        int i12 = this.f5220q + i10;
        this.f5220q = i12;
        int i13 = this.r + i10;
        this.r = i13;
        int i14 = this.f5213i;
        if (i13 >= i14) {
            this.r = i13 - i14;
        }
        int i15 = this.f5221s - i10;
        this.f5221s = i15;
        int i16 = 0;
        if (i15 < 0) {
            this.f5221s = 0;
        }
        while (true) {
            androidx.room.s sVar = this.f5207c;
            SparseArray sparseArray = (SparseArray) sVar.f2427c;
            if (i16 >= sparseArray.size() - 1) {
                break;
            }
            int i17 = i16 + 1;
            if (i12 < sparseArray.keyAt(i17)) {
                break;
            }
            ((a2.u0) sVar.f2428d).accept(sparseArray.valueAt(i16));
            sparseArray.removeAt(i16);
            int i18 = sVar.f2426b;
            if (i18 > 0) {
                sVar.f2426b = i18 - 1;
            }
            i16 = i17;
        }
        if (this.f5219p != 0) {
            return this.f5215k[this.r];
        }
        int i19 = this.r;
        if (i19 == 0) {
            i19 = this.f5213i;
        }
        return this.f5215k[i19 - 1] + this.l[r10];
    }

    public final void i() {
        long jH;
        z0 z0Var = this.f5205a;
        synchronized (this) {
            int i10 = this.f5219p;
            jH = i10 == 0 ? -1L : h(i10);
        }
        z0Var.a(jH);
    }

    public final int j(int i10, int i11, long j10, boolean z) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f5217n[i10] >= j10) {
                return i12;
            }
            i10++;
            if (i10 == this.f5213i) {
                i10 = 0;
            }
        }
        if (z) {
            return i11;
        }
        return -1;
    }

    public final int k(int i10, int i11, long j10, boolean z) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f5217n[i10];
            if (j11 > j10) {
                return i12;
            }
            if (!z || (this.f5216m[i10] & 1) != 0) {
                if (j11 == j10) {
                    return i13;
                }
                i12 = i13;
            }
            i10++;
            if (i10 == this.f5213i) {
                i10 = 0;
            }
        }
        return i12;
    }

    public final synchronized long l() {
        return this.f5225w;
    }

    public final int m(int i10) {
        int i11 = this.r + i10;
        int i12 = this.f5213i;
        return i11 < i12 ? i11 : i11 - i12;
    }

    public final synchronized r1.p n() {
        return this.A ? null : this.B;
    }

    public final synchronized boolean o(boolean z) {
        r1.p pVar;
        int i10 = this.f5220q;
        int i11 = this.f5221s;
        int i12 = i10 + i11;
        int i13 = this.f5226x;
        boolean z4 = true;
        if (i13 != -1 && i12 >= i13) {
            return true;
        }
        if (i11 != this.f5219p) {
            if (((a1) this.f5207c.g(i12)).f5200a != this.f5211g) {
                return true;
            }
            return p(m(this.f5221s));
        }
        if (!z && !this.f5227y && ((pVar = this.B) == null || pVar == this.f5211g)) {
            z4 = false;
        }
        return z4;
    }

    public final boolean p(int i10) {
        a1.i iVar = this.f5212h;
        if (iVar == null || iVar.t() == 4) {
            return true;
        }
        if ((this.f5216m[i10] & 1073741824) == 0) {
            this.f5212h.getClass();
        }
        return false;
    }

    public final void q(r1.p pVar, i8 i8Var) {
        r1.p pVar2;
        r1.p pVar3 = this.f5211g;
        boolean z = pVar3 == null;
        r1.l lVar = pVar3 == null ? null : pVar3.f13526s;
        this.f5211g = pVar;
        r1.l lVar2 = pVar.f13526s;
        b2.g gVar = this.f5208d;
        if (gVar != null) {
            int iQ = gVar.q(pVar);
            r1.o oVar = new r1.o(pVar);
            oVar.O = iQ;
            pVar2 = new r1.p(oVar);
        } else {
            pVar2 = pVar;
        }
        i8Var.f15742c = pVar2;
        i8Var.f15741b = this.f5212h;
        if (gVar == null) {
            return;
        }
        if (z || !Objects.equals(lVar, lVar2)) {
            a1.i iVar = this.f5212h;
            b2.d dVar = this.f5209e;
            a1.i iVarO = gVar.o(dVar, pVar);
            this.f5212h = iVarO;
            i8Var.f15741b = iVarO;
            if (iVar != null) {
                iVar.C(dVar);
            }
        }
    }

    public final void r(boolean z) {
        androidx.room.s sVar;
        SparseArray sparseArray;
        z0 z0Var = this.f5205a;
        y0 y0Var = z0Var.f5450d;
        i2.a aVar = (i2.a) y0Var.f5445c;
        s4.a aVar2 = z0Var.f5447a;
        if (aVar != null) {
            synchronized (aVar2) {
                ((y1.g) aVar2.f14295d).f18678c.b(y0Var);
                y0 y0Var2 = y0Var;
                while (y0Var2 != null) {
                    i2.a aVar3 = (i2.a) y0Var2.f5445c;
                    aVar3.getClass();
                    aVar2.s(aVar3);
                    y0Var2 = (y0) y0Var2.f5446d;
                    if (y0Var2 == null || ((i2.a) y0Var2.f5445c) == null) {
                        y0Var2 = null;
                    }
                }
            }
            y0Var.f5445c = null;
            y0Var.f5446d = null;
        }
        y0 y0Var3 = z0Var.f5450d;
        int i10 = z0Var.f5448b;
        int i11 = 0;
        a9.o.t(((i2.a) y0Var3.f5445c) == null);
        y0Var3.f5443a = 0L;
        y0Var3.f5444b = i10;
        y0 y0Var4 = z0Var.f5450d;
        z0Var.f5451e = y0Var4;
        z0Var.f5452f = y0Var4;
        z0Var.f5453g = 0L;
        aVar2.v();
        this.f5219p = 0;
        this.f5220q = 0;
        this.r = 0;
        this.f5221s = 0;
        this.f5226x = -1;
        this.z = true;
        this.f5222t = Long.MIN_VALUE;
        this.f5224v = Long.MIN_VALUE;
        this.f5225w = Long.MIN_VALUE;
        this.f5227y = false;
        while (true) {
            sVar = this.f5207c;
            sparseArray = (SparseArray) sVar.f2427c;
            if (i11 >= sparseArray.size()) {
                break;
            }
            ((a2.u0) sVar.f2428d).accept(sparseArray.valueAt(i11));
            i11++;
        }
        sVar.f2426b = -1;
        sparseArray.clear();
        if (z) {
            this.B = null;
            this.A = true;
            this.C = true;
        }
    }

    public final synchronized void s() {
        this.f5221s = 0;
        z0 z0Var = this.f5205a;
        z0Var.f5451e = z0Var.f5450d;
    }

    public final synchronized boolean t(long j10, boolean z) {
        try {
            s();
            int iM = m(this.f5221s);
            long j11 = this.f5223u;
            long jMin = j11 != Long.MIN_VALUE ? Math.min(this.f5225w, j11) : this.f5225w;
            int i10 = this.f5221s;
            int i11 = this.f5219p;
            if ((i10 != i11) && j10 >= this.f5217n[iM] && (j10 <= jMin || z)) {
                int iJ = this.C ? j(iM, i11 - i10, j10, z) : k(iM, i11 - i10, j10, true);
                if (iJ == -1) {
                    return false;
                }
                this.f5222t = j10;
                this.f5221s += iJ;
                return true;
            }
            return false;
        } finally {
        }
    }

    public final synchronized void u(long j10) {
        if (j10 == this.f5223u) {
            return;
        }
        int i10 = -1;
        if (j10 == Long.MIN_VALUE) {
            this.f5226x = -1;
            return;
        }
        int iJ = j10 <= this.f5225w ? j(this.r, this.f5219p, j10, false) : -1;
        if (iJ != -1) {
            i10 = this.f5220q + iJ;
        }
        this.f5226x = i10;
        this.f5223u = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void v(int i10) {
        boolean z;
        if (i10 >= 0) {
            try {
                z = this.f5221s + i10 <= this.f5219p;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        a9.o.k(z);
        this.f5221s += i10;
    }
}
