package s3;

import android.util.SparseArray;
import f2.u0;
import ha.l2;
import java.util.List;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class x implements l2.o {

    /* renamed from: e, reason: collision with root package name */
    public boolean f14279e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14280f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14281g;

    /* renamed from: h, reason: collision with root package name */
    public long f14282h;

    /* renamed from: i, reason: collision with root package name */
    public q2.a f14283i;

    /* renamed from: j, reason: collision with root package name */
    public u0 f14284j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14285k;

    /* renamed from: a, reason: collision with root package name */
    public final u1.d0 f14275a = new u1.d0(0);

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f14277c = new u1.q(4096);

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f14276b = new SparseArray();

    /* renamed from: d, reason: collision with root package name */
    public final v f14278d = new v(0);

    @Override // l2.o
    public final l2.o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        this.f14284j = (u0) qVar;
    }

    @Override // l2.o
    public final int d(l2.p pVar, dd.c cVar) {
        long j10;
        f hVar;
        long jC;
        int i10;
        long jC2;
        this.f14284j.getClass();
        long j11 = ((l2.l) pVar).f10498c;
        v vVar = this.f14278d;
        if (j11 != -1 && !vVar.f14262d) {
            boolean z = vVar.f14264f;
            u1.q qVar = vVar.f14261c;
            if (!z) {
                l2.l lVar = (l2.l) pVar;
                long j12 = lVar.f10498c;
                int iMin = (int) Math.min(20000L, j12);
                long j13 = j12 - iMin;
                if (lVar.f10499d != j13) {
                    cVar.f4591b = j13;
                    i10 = 1;
                } else {
                    qVar.L(iMin);
                    lVar.f10501f = 0;
                    lVar.c(qVar.f15266a, 0, iMin, false);
                    int i11 = qVar.f15267b;
                    int i12 = qVar.f15268c - 4;
                    while (true) {
                        if (i12 < i11) {
                            jC2 = -9223372036854775807L;
                            break;
                        }
                        if (v.b(i12, qVar.f15266a) == 442) {
                            qVar.O(i12 + 4);
                            jC2 = v.c(qVar);
                            if (jC2 != -9223372036854775807L) {
                                break;
                            }
                        }
                        i12--;
                    }
                    vVar.f14266h = jC2;
                    vVar.f14264f = true;
                    i10 = 0;
                }
            } else {
                if (vVar.f14266h == -9223372036854775807L) {
                    vVar.a((l2.l) pVar);
                    return 0;
                }
                if (vVar.f14263e) {
                    long j14 = vVar.f14265g;
                    if (j14 == -9223372036854775807L) {
                        vVar.a((l2.l) pVar);
                        return 0;
                    }
                    u1.d0 d0Var = vVar.f14260b;
                    vVar.f14267i = d0Var.c(vVar.f14266h) - d0Var.b(j14);
                    vVar.a((l2.l) pVar);
                    return 0;
                }
                l2.l lVar2 = (l2.l) pVar;
                int iMin2 = (int) Math.min(20000L, lVar2.f10498c);
                long j15 = 0;
                if (lVar2.f10499d != j15) {
                    cVar.f4591b = j15;
                    i10 = 1;
                } else {
                    qVar.L(iMin2);
                    lVar2.f10501f = 0;
                    lVar2.c(qVar.f15266a, 0, iMin2, false);
                    int i13 = qVar.f15267b;
                    int i14 = qVar.f15268c;
                    while (true) {
                        if (i13 >= i14 - 3) {
                            jC = -9223372036854775807L;
                            break;
                        }
                        if (v.b(i13, qVar.f15266a) == 442) {
                            qVar.O(i13 + 4);
                            jC = v.c(qVar);
                            if (jC != -9223372036854775807L) {
                                break;
                            }
                        }
                        i13++;
                    }
                    vVar.f14265g = jC;
                    vVar.f14263e = true;
                    i10 = 0;
                }
            }
            return i10;
        }
        if (this.f14285k) {
            j10 = j11;
        } else {
            this.f14285k = true;
            long j16 = vVar.f14267i;
            if (j16 != -9223372036854775807L) {
                j10 = j11;
                q2.a aVar = new q2.a(new l2(16), new kf.d(vVar.f14260b), j16, 1 + j16, 0L, j11, 188L, 1000);
                this.f14283i = aVar;
                this.f14284j.s(aVar.f12932a);
            } else {
                j10 = j11;
                this.f14284j.s(new l2.s(j16));
            }
        }
        q2.a aVar2 = this.f14283i;
        if (aVar2 != null && aVar2.f12934c != null) {
            return aVar2.b((l2.l) pVar, cVar);
        }
        l2.l lVar3 = (l2.l) pVar;
        lVar3.f10501f = 0;
        long jD = j10 != -1 ? j10 - lVar3.d() : -1L;
        if (jD != -1 && jD < 4) {
            return -1;
        }
        u1.q qVar2 = this.f14277c;
        if (!lVar3.c(qVar2.f15266a, 0, 4, true)) {
            return -1;
        }
        qVar2.O(0);
        int iO = qVar2.o();
        if (iO == 441) {
            return -1;
        }
        if (iO == 442) {
            lVar3.c(qVar2.f15266a, 0, 10, false);
            qVar2.O(9);
            lVar3.o((qVar2.B() & 7) + 14, false);
            return 0;
        }
        if (iO == 443) {
            lVar3.c(qVar2.f15266a, 0, 2, false);
            qVar2.O(0);
            lVar3.o(qVar2.I() + 6, false);
            return 0;
        }
        if (((iO & (-256)) >> 8) != 1) {
            lVar3.o(1, false);
            return 0;
        }
        int i15 = iO & 255;
        SparseArray sparseArray = this.f14276b;
        w wVar = (w) sparseArray.get(i15);
        if (!this.f14279e) {
            if (wVar == null) {
                if (i15 == 189) {
                    hVar = new a("video/mp2p");
                    this.f14280f = true;
                    this.f14282h = lVar3.f10499d;
                } else if ((iO & 224) == 192) {
                    hVar = new r(null, 0, "video/mp2p");
                    this.f14280f = true;
                    this.f14282h = lVar3.f10499d;
                } else if ((iO & 240) == 224) {
                    hVar = new h(null, "video/mp2p");
                    this.f14281g = true;
                    this.f14282h = lVar3.f10499d;
                } else {
                    hVar = null;
                }
                if (hVar != null) {
                    hVar.e(this.f14284j, new d0(i15, 256));
                    wVar = new w(hVar, this.f14275a);
                    sparseArray.put(i15, wVar);
                }
            }
            if (lVar3.f10499d > ((this.f14280f && this.f14281g) ? this.f14282h + 8192 : 1048576L)) {
                this.f14279e = true;
                this.f14284j.q();
            }
        }
        lVar3.c(qVar2.f15266a, 0, 2, false);
        qVar2.O(0);
        int I = qVar2.I() + 6;
        if (wVar == null) {
            lVar3.o(I, false);
            return 0;
        }
        qVar2.L(I);
        lVar3.b(qVar2.f15266a, 0, I, false);
        qVar2.O(6);
        j3.f fVar = wVar.f14270c;
        qVar2.l(0, 3, fVar.f9720b);
        fVar.m(0);
        fVar.o(8);
        wVar.f14271d = fVar.f();
        wVar.f14272e = fVar.f();
        fVar.o(6);
        qVar2.l(0, fVar.g(8), fVar.f9720b);
        fVar.m(0);
        wVar.f14274g = 0L;
        if (wVar.f14271d) {
            fVar.o(4);
            fVar.o(1);
            fVar.o(1);
            long jG = (fVar.g(3) << 30) | (fVar.g(15) << 15) | fVar.g(15);
            fVar.o(1);
            boolean z4 = wVar.f14273f;
            u1.d0 d0Var2 = wVar.f14269b;
            if (!z4 && wVar.f14272e) {
                fVar.o(4);
                fVar.o(1);
                fVar.o(1);
                fVar.o(1);
                d0Var2.b((fVar.g(15) << 15) | (fVar.g(3) << 30) | fVar.g(15));
                wVar.f14273f = true;
            }
            wVar.f14274g = d0Var2.b(jG);
        }
        long j17 = wVar.f14274g;
        f fVar2 = wVar.f14268a;
        fVar2.d(4, j17);
        fVar2.a(qVar2);
        fVar2.c(false);
        qVar2.N(qVar2.f15266a.length);
        return 0;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        u1.d0 d0Var = this.f14275a;
        boolean z = d0Var.e() == -9223372036854775807L;
        if (!z) {
            long jD = d0Var.d();
            z = (jD == -9223372036854775807L || jD == 0 || jD == j11) ? false : true;
        }
        if (z) {
            d0Var.g(j11);
        }
        q2.a aVar = this.f14283i;
        if (aVar != null) {
            aVar.d(j11);
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = this.f14276b;
            if (i10 >= sparseArray.size()) {
                return;
            }
            w wVar = (w) sparseArray.valueAt(i10);
            wVar.f14273f = false;
            wVar.f14268a.b();
            i10++;
        }
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(l2.p pVar) {
        byte[] bArr = new byte[14];
        l2.l lVar = (l2.l) pVar;
        lVar.c(bArr, 0, 14, false);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        lVar.k(bArr[13] & 7, false);
        lVar.c(bArr, 0, 3, false);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override // l2.o
    public final void a() {
    }
}
