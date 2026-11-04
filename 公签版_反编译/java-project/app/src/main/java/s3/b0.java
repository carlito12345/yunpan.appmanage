package s3;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import ha.l2;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class b0 implements l2.o {

    /* renamed from: a, reason: collision with root package name */
    public final int f14005a;

    /* renamed from: b, reason: collision with root package name */
    public final List f14006b;

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f14007c = new u1.q(new byte[9400], 0);

    /* renamed from: d, reason: collision with root package name */
    public final SparseIntArray f14008d;

    /* renamed from: e, reason: collision with root package name */
    public final l5.y f14009e;

    /* renamed from: f, reason: collision with root package name */
    public final i3.h f14010f;

    /* renamed from: g, reason: collision with root package name */
    public final SparseArray f14011g;

    /* renamed from: h, reason: collision with root package name */
    public final SparseBooleanArray f14012h;

    /* renamed from: i, reason: collision with root package name */
    public final SparseBooleanArray f14013i;

    /* renamed from: j, reason: collision with root package name */
    public final v f14014j;

    /* renamed from: k, reason: collision with root package name */
    public q2.a f14015k;
    public l2.q l;

    /* renamed from: m, reason: collision with root package name */
    public int f14016m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f14017n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f14018o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f14019p;

    /* renamed from: q, reason: collision with root package name */
    public int f14020q;

    public b0(int i10, i3.h hVar, u1.d0 d0Var, l5.y yVar) {
        this.f14009e = yVar;
        this.f14005a = i10;
        this.f14010f = hVar;
        this.f14006b = Collections.singletonList(d0Var);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f14012h = sparseBooleanArray;
        this.f14013i = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f14011g = sparseArray;
        this.f14008d = new SparseIntArray();
        this.f14014j = new v(1);
        this.l = l2.q.C0;
        this.f14020q = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i11 = 0; i11 < size; i11++) {
            sparseArray.put(sparseArray2.keyAt(i11), (e0) sparseArray2.valueAt(i11));
        }
        sparseArray.put(0, new z(new kf.d(this)));
    }

    @Override // l2.o
    public final l2.o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        if ((this.f14005a & 1) == 0) {
            qVar = new androidx.room.i(qVar, this.f14010f);
        }
        this.l = qVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    @Override // l2.o
    public final int d(l2.p pVar, dd.c cVar) throws EOFException, InterruptedIOException {
        long j10;
        ?? r22;
        ?? r32;
        boolean z;
        long j11;
        long j12;
        long j13 = ((l2.l) pVar).f10498c;
        if (this.f14017n) {
            v vVar = this.f14014j;
            if (j13 != -1 && !vVar.f14262d) {
                int i10 = this.f14020q;
                if (i10 <= 0) {
                    vVar.a((l2.l) pVar);
                    return 0;
                }
                boolean z4 = vVar.f14264f;
                u1.q qVar = vVar.f14261c;
                if (!z4) {
                    l2.l lVar = (l2.l) pVar;
                    long j14 = lVar.f10498c;
                    int iMin = (int) Math.min(112800, j14);
                    long j15 = j14 - iMin;
                    if (lVar.f10499d == j15) {
                        qVar.L(iMin);
                        lVar.f10501f = 0;
                        lVar.c(qVar.f15266a, 0, iMin, false);
                        int i11 = qVar.f15267b;
                        int i12 = qVar.f15268c;
                        int i13 = i12 - 188;
                        while (true) {
                            if (i13 < i11) {
                                j12 = -9223372036854775807L;
                                break;
                            }
                            byte[] bArr = qVar.f15266a;
                            int i14 = -4;
                            int i15 = 0;
                            while (true) {
                                if (i14 > 4) {
                                    break;
                                }
                                int i16 = (i14 * 188) + i13;
                                if (i16 < i11 || i16 >= i12 || bArr[i16] != 71) {
                                    i15 = 0;
                                } else {
                                    i15++;
                                    if (i15 == 5) {
                                        long jY = com.bumptech.glide.d.Y(qVar, i13, i10);
                                        if (jY != -9223372036854775807L) {
                                            j12 = jY;
                                            break;
                                        }
                                    }
                                }
                                i14++;
                            }
                            i13--;
                        }
                        vVar.f14266h = j12;
                        vVar.f14264f = true;
                        return 0;
                    }
                    cVar.f4591b = j15;
                } else {
                    if (vVar.f14266h == -9223372036854775807L) {
                        vVar.a((l2.l) pVar);
                        return 0;
                    }
                    if (vVar.f14263e) {
                        long j16 = vVar.f14265g;
                        if (j16 == -9223372036854775807L) {
                            vVar.a((l2.l) pVar);
                            return 0;
                        }
                        u1.d0 d0Var = vVar.f14260b;
                        vVar.f14267i = d0Var.c(vVar.f14266h) - d0Var.b(j16);
                        vVar.a((l2.l) pVar);
                        return 0;
                    }
                    l2.l lVar2 = (l2.l) pVar;
                    int iMin2 = (int) Math.min(112800, lVar2.f10498c);
                    long j17 = 0;
                    if (lVar2.f10499d == j17) {
                        qVar.L(iMin2);
                        lVar2.f10501f = 0;
                        lVar2.c(qVar.f15266a, 0, iMin2, false);
                        int i17 = qVar.f15267b;
                        int i18 = qVar.f15268c;
                        while (true) {
                            if (i17 >= i18) {
                                j11 = -9223372036854775807L;
                                break;
                            }
                            if (qVar.f15266a[i17] == 71) {
                                long jY2 = com.bumptech.glide.d.Y(qVar, i17, i10);
                                if (jY2 != -9223372036854775807L) {
                                    j11 = jY2;
                                    break;
                                }
                            }
                            i17++;
                        }
                        vVar.f14265g = j11;
                        vVar.f14263e = true;
                        return 0;
                    }
                    cVar.f4591b = j17;
                }
                return 1;
            }
            if (this.f14018o) {
                j10 = j13;
            } else {
                this.f14018o = true;
                long j18 = vVar.f14267i;
                if (j18 != -9223372036854775807L) {
                    j10 = j13;
                    q2.a aVar = new q2.a(new l2(16), new androidx.room.s(this.f14020q, vVar.f14260b), j18, j18 + 1, 0L, j13, 188L, 940);
                    this.f14015k = aVar;
                    this.l.s(aVar.f12932a);
                } else {
                    j10 = j13;
                    this.l.s(new l2.s(j18));
                }
            }
            if (this.f14019p) {
                z = false;
                this.f14019p = false;
                e(0L, 0L);
                if (((l2.l) pVar).f10499d != 0) {
                    cVar.f4591b = 0L;
                    return 1;
                }
            } else {
                z = false;
            }
            r32 = 1;
            r32 = 1;
            q2.a aVar2 = this.f14015k;
            r22 = z;
            if (aVar2 != null) {
                r22 = z;
                if (aVar2.f12934c != null) {
                    return aVar2.b((l2.l) pVar, cVar);
                }
            }
        } else {
            j10 = j13;
            r22 = 0;
            r32 = 1;
        }
        u1.q qVar2 = this.f14007c;
        byte[] bArr2 = qVar2.f15266a;
        if (9400 - qVar2.f15267b < 188) {
            int iA = qVar2.a();
            if (iA > 0) {
                System.arraycopy(bArr2, qVar2.f15267b, bArr2, r22, iA);
            }
            qVar2.M(iA, bArr2);
        }
        while (true) {
            int iA2 = qVar2.a();
            SparseArray sparseArray = this.f14011g;
            if (iA2 >= 188) {
                int i19 = qVar2.f15267b;
                int i20 = qVar2.f15268c;
                byte[] bArr3 = qVar2.f15266a;
                while (i19 < i20 && bArr3[i19] != 71) {
                    i19++;
                }
                qVar2.O(i19);
                int i21 = i19 + 188;
                int i22 = qVar2.f15268c;
                if (i21 > i22) {
                    return r22;
                }
                int iO = qVar2.o();
                if ((8388608 & iO) != 0) {
                    qVar2.O(i21);
                    return r22;
                }
                int i23 = (4194304 & iO) != 0 ? 1 : 0;
                int i24 = (2096896 & iO) >> 8;
                boolean z10 = (iO & 32) != 0;
                e0 e0Var = (iO & 16) != 0 ? (e0) sparseArray.get(i24) : null;
                if (e0Var == null) {
                    qVar2.O(i21);
                    return r22;
                }
                int i25 = iO & 15;
                SparseIntArray sparseIntArray = this.f14008d;
                int i26 = sparseIntArray.get(i24, i25 - 1);
                sparseIntArray.put(i24, i25);
                if (i26 == i25) {
                    qVar2.O(i21);
                    return r22;
                }
                if (i25 != ((i26 + r32) & 15)) {
                    e0Var.b();
                }
                if (z10) {
                    int iB = qVar2.B();
                    i23 |= (qVar2.B() & 64) != 0 ? 2 : 0;
                    qVar2.P(iB - r32);
                }
                boolean z11 = this.f14017n;
                if (z11 || !this.f14013i.get(i24, r22)) {
                    qVar2.N(i21);
                    e0Var.a(i23, qVar2);
                    qVar2.N(i22);
                }
                if (!z11 && this.f14017n && j10 != -1) {
                    this.f14019p = r32;
                }
                qVar2.O(i21);
                return r22;
            }
            int i27 = qVar2.f15268c;
            int i28 = ((l2.l) pVar).read(bArr2, i27, 9400 - i27);
            if (i28 == -1) {
                for (int i29 = 0; i29 < sparseArray.size(); i29++) {
                    e0 e0Var2 = (e0) sparseArray.valueAt(i29);
                    if (e0Var2 instanceof u) {
                        u uVar = (u) e0Var2;
                        if (uVar.f14250c == 3 && uVar.f14257j == -1) {
                            uVar.a(r32, new u1.q());
                        }
                    }
                }
                return -1;
            }
            qVar2.N(i27 + i28);
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        q2.a aVar;
        List list = this.f14006b;
        int size = list.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            u1.d0 d0Var = (u1.d0) list.get(i11);
            boolean z = d0Var.e() == -9223372036854775807L;
            if (!z) {
                long jD = d0Var.d();
                z = (jD == -9223372036854775807L || jD == 0 || jD == j11) ? false : true;
            }
            if (z) {
                d0Var.g(j11);
            }
        }
        if (j11 != 0 && (aVar = this.f14015k) != null) {
            aVar.d(j11);
        }
        this.f14007c.L(0);
        this.f14008d.clear();
        while (true) {
            SparseArray sparseArray = this.f14011g;
            if (i10 >= sparseArray.size()) {
                return;
            }
            ((e0) sparseArray.valueAt(i10)).b();
            i10++;
        }
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        r2 = r2 + 1;
     */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(l2.p pVar) {
        byte[] bArr = this.f14007c.f15266a;
        l2.l lVar = (l2.l) pVar;
        lVar.c(bArr, 0, 940, false);
        int i10 = 0;
        while (i10 < 188) {
            for (int i11 = 0; i11 < 5; i11++) {
                if (bArr[(i11 * 188) + i10] != 71) {
                    break;
                }
            }
            lVar.o(i10, false);
            return true;
        }
        return false;
    }

    @Override // l2.o
    public final void a() {
    }
}
