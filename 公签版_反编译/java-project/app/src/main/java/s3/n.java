package s3;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Arrays;
import l2.j0;
import u1.f0;

/* loaded from: classes.dex */
public final class n implements f {

    /* renamed from: a, reason: collision with root package name */
    public final a0 f14152a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14153b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14154c;

    /* renamed from: g, reason: collision with root package name */
    public long f14158g;

    /* renamed from: i, reason: collision with root package name */
    public String f14160i;

    /* renamed from: j, reason: collision with root package name */
    public j0 f14161j;

    /* renamed from: k, reason: collision with root package name */
    public m f14162k;
    public boolean l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f14164n;

    /* renamed from: h, reason: collision with root package name */
    public final boolean[] f14159h = new boolean[3];

    /* renamed from: d, reason: collision with root package name */
    public final t f14155d = new t(7);

    /* renamed from: e, reason: collision with root package name */
    public final t f14156e = new t(8);

    /* renamed from: f, reason: collision with root package name */
    public final t f14157f = new t(6);

    /* renamed from: m, reason: collision with root package name */
    public long f14163m = -9223372036854775807L;

    /* renamed from: o, reason: collision with root package name */
    public final u1.q f14165o = new u1.q();

    public n(a0 a0Var, boolean z, boolean z4) {
        this.f14152a = a0Var;
        this.f14153b = z;
        this.f14154c = z4;
    }

    @Override // s3.f
    public final void a(u1.q qVar) {
        int i10;
        int i11;
        this.f14161j.getClass();
        String str = f0.f15206a;
        int i12 = qVar.f15267b;
        int i13 = qVar.f15268c;
        byte[] bArr = qVar.f15266a;
        this.f14158g += qVar.a();
        this.f14161j.a(qVar.a(), qVar);
        while (true) {
            int iC = v1.o.c(bArr, i12, i13, this.f14159h);
            if (iC == i13) {
                g(i12, i13, bArr);
                return;
            }
            int i14 = bArr[iC + 3] & 31;
            if (iC <= 0 || bArr[iC - 1] != 0) {
                i10 = iC;
                i11 = 3;
            } else {
                i10 = iC - 1;
                i11 = 4;
            }
            int i15 = i10 - i12;
            if (i15 > 0) {
                g(i12, i10, bArr);
            }
            int i16 = i13 - i10;
            long j10 = this.f14158g - i16;
            f(i16, i15 < 0 ? -i15 : 0, j10, this.f14163m);
            h(i14, j10, this.f14163m);
            i12 = i10 + i11;
        }
    }

    @Override // s3.f
    public final void b() {
        this.f14158g = 0L;
        this.f14164n = false;
        this.f14163m = -9223372036854775807L;
        v1.o.b(this.f14159h);
        this.f14155d.d();
        this.f14156e.d();
        this.f14157f.d();
        this.f14152a.f13993d.d(0);
        m mVar = this.f14162k;
        if (mVar != null) {
            mVar.f14145k = false;
            mVar.f14148o = false;
            l lVar = mVar.f14147n;
            lVar.f14121b = false;
            lVar.f14120a = false;
        }
    }

    @Override // s3.f
    public final void c(boolean z) {
        this.f14161j.getClass();
        String str = f0.f15206a;
        if (z) {
            this.f14152a.f13993d.d(0);
            f(0, 0, this.f14158g, this.f14163m);
            h(9, this.f14158g, this.f14163m);
            f(0, 0, this.f14158g, this.f14163m);
        }
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14163m = j10;
        this.f14164n = ((i10 & 2) != 0) | this.f14164n;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14160i = (String) d0Var.f14066f;
        d0Var.n();
        j0 j0VarZ = qVar.z(d0Var.f14064d, 2);
        this.f14161j = j0VarZ;
        this.f14162k = new m(j0VarZ, this.f14153b, this.f14154c);
        this.f14152a.b(qVar, d0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x01fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(int i10, int i11, long j10, long j11) {
        boolean z;
        int i12;
        int i13;
        int i14;
        boolean z4;
        boolean z10 = this.l;
        boolean z11 = true;
        b5.i iVar = this.f14152a.f13993d;
        if (!z10 || this.f14162k.f14137c) {
            t tVar = this.f14155d;
            tVar.b(i11);
            t tVar2 = this.f14156e;
            tVar2.b(i11);
            if (this.l) {
                if (tVar.f14245c) {
                    v1.n nVarM = v1.o.m(3, tVar.f14246d, (byte[]) tVar.f14247e);
                    iVar.n(nVarM.f16385s);
                    this.f14162k.f14138d.append(nVarM.f16372d, nVarM);
                    tVar.d();
                } else if (tVar2.f14245c) {
                    t3.e eVar = new t3.e((byte[]) tVar2.f14247e, 4, tVar2.f14246d);
                    int iG = eVar.g();
                    int iG2 = eVar.g();
                    eVar.k();
                    this.f14162k.f14139e.append(iG, new v1.m(iG, iG2, eVar.e()));
                    tVar2.d();
                }
            } else if (tVar.f14245c && tVar2.f14245c) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf((byte[]) tVar.f14247e, tVar.f14246d));
                arrayList.add(Arrays.copyOf((byte[]) tVar2.f14247e, tVar2.f14246d));
                v1.n nVarM2 = v1.o.m(3, tVar.f14246d, (byte[]) tVar.f14247e);
                t3.e eVar2 = new t3.e((byte[]) tVar2.f14247e, 4, tVar2.f14246d);
                int iG3 = eVar2.g();
                int iG4 = eVar2.g();
                eVar2.k();
                v1.m mVar = new v1.m(iG3, iG4, eVar2.e());
                byte[] bArr = u1.c.f15189a;
                String str = String.format("avc1.%02X%02X%02X", Integer.valueOf(nVarM2.f16369a), Integer.valueOf(nVarM2.f16370b), Integer.valueOf(nVarM2.f16371c));
                j0 j0Var = this.f14161j;
                r1.o oVar = new r1.o();
                oVar.f13480a = this.f14160i;
                oVar.f13491m = r1.e0.l("video/mp2t");
                oVar.f13492n = r1.e0.l("video/avc");
                oVar.f13489j = str;
                oVar.f13498u = nVarM2.f16373e;
                oVar.f13499v = nVarM2.f16374f;
                oVar.D = new r1.g(nVarM2.f16383p, nVarM2.f16384q, nVarM2.r, null, nVarM2.f16376h + 8, nVarM2.f16377i + 8);
                oVar.A = nVarM2.f16375g;
                oVar.f13495q = arrayList;
                int i15 = nVarM2.f16385s;
                oVar.f13494p = i15;
                j0Var.g(new r1.p(oVar));
                this.l = true;
                iVar.n(i15);
                this.f14162k.f14138d.append(nVarM2.f16372d, nVarM2);
                this.f14162k.f14139e.append(iG3, mVar);
                tVar.d();
                tVar2.d();
            }
        }
        t tVar3 = this.f14157f;
        if (tVar3.b(i11)) {
            int iP = v1.o.p(tVar3.f14246d, (byte[]) tVar3.f14247e);
            byte[] bArr2 = (byte[]) tVar3.f14247e;
            u1.q qVar = this.f14165o;
            qVar.M(iP, bArr2);
            qVar.O(4);
            iVar.a(j11, qVar);
        }
        m mVar2 = this.f14162k;
        boolean z12 = this.l;
        if (mVar2.f14143i == 9) {
            if (z12 && mVar2.f14148o) {
                long j12 = mVar2.f14144j;
                int i16 = i10 + ((int) (j10 - j12));
                long j13 = mVar2.f14150q;
                if (j13 != -9223372036854775807L) {
                    long j14 = mVar2.f14149p;
                    if (j12 != j14) {
                        mVar2.f14135a.b(j13, mVar2.r ? 1 : 0, (int) (j12 - j14), i16, null);
                    }
                }
            }
            mVar2.f14149p = mVar2.f14144j;
            mVar2.f14150q = mVar2.l;
            mVar2.r = false;
            mVar2.f14148o = true;
        } else if (mVar2.f14137c) {
            l lVar = mVar2.f14147n;
            l lVar2 = mVar2.f14146m;
            if (lVar.f14120a) {
                if (lVar2.f14120a) {
                    v1.n nVar = lVar.f14122c;
                    nVar.getClass();
                    v1.n nVar2 = lVar2.f14122c;
                    nVar2.getClass();
                    if (lVar.f14125f == lVar2.f14125f && lVar.f14126g == lVar2.f14126g && lVar.f14127h == lVar2.f14127h && ((!lVar.f14128i || !lVar2.f14128i || lVar.f14129j == lVar2.f14129j) && ((i13 = lVar.f14123d) == (i14 = lVar2.f14123d) || (i13 != 0 && i14 != 0)))) {
                        int i17 = nVar2.f16380m;
                        int i18 = nVar.f16380m;
                        if ((i18 == 0 && i17 == 0 && (lVar.f14131m != lVar2.f14131m || lVar.f14132n != lVar2.f14132n)) || ((i18 == 1 && i17 == 1 && (lVar.f14133o != lVar2.f14133o || lVar.f14134p != lVar2.f14134p)) || (z4 = lVar.f14130k) != lVar2.f14130k || (z4 && lVar.l != lVar2.l))) {
                        }
                    }
                }
            }
        }
        if (mVar2.f14136b) {
            l lVar3 = mVar2.f14147n;
            z = lVar3.f14121b && ((i12 = lVar3.f14124e) == 7 || i12 == 2);
        } else {
            z = mVar2.f14151s;
        }
        boolean z13 = mVar2.r;
        int i19 = mVar2.f14143i;
        if (i19 != 5 && (!z || i19 != 1)) {
            z11 = false;
        }
        boolean z14 = z13 | z11;
        mVar2.r = z14;
        mVar2.f14143i = 24;
        if (z14) {
            this.f14164n = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(int i10, int i11, byte[] bArr) {
        boolean zE;
        boolean zE2;
        boolean z;
        boolean z4;
        int iG;
        int i12;
        int iF;
        int i13;
        int iH;
        int iH2;
        if (!this.l || this.f14162k.f14137c) {
            this.f14155d.a(i10, i11, bArr);
            this.f14156e.a(i10, i11, bArr);
        }
        this.f14157f.a(i10, i11, bArr);
        m mVar = this.f14162k;
        if (mVar.f14145k) {
            int i14 = i11 - i10;
            byte[] bArr2 = mVar.f14141g;
            int length = bArr2.length;
            int i15 = mVar.f14142h + i14;
            if (length < i15) {
                mVar.f14141g = Arrays.copyOf(bArr2, i15 * 2);
            }
            System.arraycopy(bArr, i10, mVar.f14141g, mVar.f14142h, i14);
            int i16 = mVar.f14142h + i14;
            mVar.f14142h = i16;
            byte[] bArr3 = mVar.f14141g;
            t3.e eVar = mVar.f14140f;
            eVar.f14744a = bArr3;
            eVar.f14746c = 0;
            eVar.f14747d = 0;
            eVar.f14745b = i16;
            eVar.f14748e = 0;
            eVar.a();
            if (eVar.c(8)) {
                eVar.k();
                int iF2 = eVar.f(2);
                eVar.l(5);
                if (eVar.d()) {
                    eVar.g();
                    if (eVar.d()) {
                        int iG2 = eVar.g();
                        if (!mVar.f14137c) {
                            mVar.f14145k = false;
                            l lVar = mVar.f14147n;
                            lVar.f14124e = iG2;
                            lVar.f14121b = true;
                            return;
                        }
                        if (eVar.d()) {
                            int iG3 = eVar.g();
                            SparseArray sparseArray = mVar.f14139e;
                            if (sparseArray.indexOfKey(iG3) < 0) {
                                mVar.f14145k = false;
                                return;
                            }
                            v1.m mVar2 = (v1.m) sparseArray.get(iG3);
                            v1.n nVar = (v1.n) mVar.f14138d.get(mVar2.f16367a);
                            if (nVar.f16378j) {
                                if (!eVar.c(2)) {
                                    return;
                                } else {
                                    eVar.l(2);
                                }
                            }
                            int i17 = nVar.l;
                            if (eVar.c(i17)) {
                                int iF3 = eVar.f(i17);
                                if (!nVar.f16379k) {
                                    if (eVar.c(1)) {
                                        zE = eVar.e();
                                        if (zE) {
                                            if (!eVar.c(1)) {
                                                return;
                                            }
                                            zE2 = eVar.e();
                                            z = true;
                                        }
                                        z4 = mVar.f14143i != 5;
                                        if (z4) {
                                            iG = 0;
                                        } else if (!eVar.d()) {
                                            return;
                                        } else {
                                            iG = eVar.g();
                                        }
                                        boolean z10 = mVar2.f16368b;
                                        i12 = nVar.f16380m;
                                        if (i12 != 0) {
                                            int i18 = nVar.f16381n;
                                            if (!eVar.c(i18)) {
                                                return;
                                            }
                                            iF = eVar.f(i18);
                                            if (z10 && !zE) {
                                                if (eVar.d()) {
                                                    iH2 = eVar.h();
                                                    i13 = 0;
                                                    iH = 0;
                                                    l lVar2 = mVar.f14147n;
                                                    lVar2.f14122c = nVar;
                                                    lVar2.f14123d = iF2;
                                                    lVar2.f14124e = iG2;
                                                    lVar2.f14125f = iF3;
                                                    lVar2.f14126g = iG3;
                                                    lVar2.f14127h = zE;
                                                    lVar2.f14128i = z;
                                                    lVar2.f14129j = zE2;
                                                    lVar2.f14130k = z4;
                                                    lVar2.l = iG;
                                                    lVar2.f14131m = iF;
                                                    lVar2.f14132n = iH2;
                                                    lVar2.f14133o = i13;
                                                    lVar2.f14134p = iH;
                                                    lVar2.f14120a = true;
                                                    lVar2.f14121b = true;
                                                    mVar.f14145k = false;
                                                }
                                                return;
                                            }
                                            i13 = 0;
                                        } else if (i12 != 1 || nVar.f16382o) {
                                            iF = 0;
                                            i13 = 0;
                                        } else {
                                            if (!eVar.d()) {
                                                return;
                                            }
                                            int iH3 = eVar.h();
                                            if (z10 && !zE) {
                                                if (eVar.d()) {
                                                    iH = eVar.h();
                                                    iH2 = 0;
                                                    i13 = iH3;
                                                    iF = 0;
                                                    l lVar22 = mVar.f14147n;
                                                    lVar22.f14122c = nVar;
                                                    lVar22.f14123d = iF2;
                                                    lVar22.f14124e = iG2;
                                                    lVar22.f14125f = iF3;
                                                    lVar22.f14126g = iG3;
                                                    lVar22.f14127h = zE;
                                                    lVar22.f14128i = z;
                                                    lVar22.f14129j = zE2;
                                                    lVar22.f14130k = z4;
                                                    lVar22.l = iG;
                                                    lVar22.f14131m = iF;
                                                    lVar22.f14132n = iH2;
                                                    lVar22.f14133o = i13;
                                                    lVar22.f14134p = iH;
                                                    lVar22.f14120a = true;
                                                    lVar22.f14121b = true;
                                                    mVar.f14145k = false;
                                                }
                                                return;
                                            }
                                            i13 = iH3;
                                            iF = 0;
                                        }
                                        iH = 0;
                                        iH2 = 0;
                                        l lVar222 = mVar.f14147n;
                                        lVar222.f14122c = nVar;
                                        lVar222.f14123d = iF2;
                                        lVar222.f14124e = iG2;
                                        lVar222.f14125f = iF3;
                                        lVar222.f14126g = iG3;
                                        lVar222.f14127h = zE;
                                        lVar222.f14128i = z;
                                        lVar222.f14129j = zE2;
                                        lVar222.f14130k = z4;
                                        lVar222.l = iG;
                                        lVar222.f14131m = iF;
                                        lVar222.f14132n = iH2;
                                        lVar222.f14133o = i13;
                                        lVar222.f14134p = iH;
                                        lVar222.f14120a = true;
                                        lVar222.f14121b = true;
                                        mVar.f14145k = false;
                                    }
                                    return;
                                }
                                zE = false;
                                zE2 = false;
                                z = false;
                                if (mVar.f14143i != 5) {
                                }
                                if (z4) {
                                }
                                boolean z102 = mVar2.f16368b;
                                i12 = nVar.f16380m;
                                if (i12 != 0) {
                                }
                                iH = 0;
                                iH2 = 0;
                                l lVar2222 = mVar.f14147n;
                                lVar2222.f14122c = nVar;
                                lVar2222.f14123d = iF2;
                                lVar2222.f14124e = iG2;
                                lVar2222.f14125f = iF3;
                                lVar2222.f14126g = iG3;
                                lVar2222.f14127h = zE;
                                lVar2222.f14128i = z;
                                lVar2222.f14129j = zE2;
                                lVar2222.f14130k = z4;
                                lVar2222.l = iG;
                                lVar2222.f14131m = iF;
                                lVar2222.f14132n = iH2;
                                lVar2222.f14133o = i13;
                                lVar2222.f14134p = iH;
                                lVar2222.f14120a = true;
                                lVar2222.f14121b = true;
                                mVar.f14145k = false;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void h(int i10, long j10, long j11) {
        if (!this.l || this.f14162k.f14137c) {
            this.f14155d.e(i10);
            this.f14156e.e(i10);
        }
        this.f14157f.e(i10);
        m mVar = this.f14162k;
        boolean z = this.f14164n;
        mVar.f14143i = i10;
        mVar.l = j11;
        mVar.f14144j = j10;
        mVar.f14151s = z;
        if (!mVar.f14136b || i10 != 1) {
            if (!mVar.f14137c) {
                return;
            }
            if (i10 != 5 && i10 != 1 && i10 != 2) {
                return;
            }
        }
        l lVar = mVar.f14146m;
        mVar.f14146m = mVar.f14147n;
        mVar.f14147n = lVar;
        lVar.f14121b = false;
        lVar.f14120a = false;
        mVar.f14142h = 0;
        mVar.f14145k = true;
    }
}
