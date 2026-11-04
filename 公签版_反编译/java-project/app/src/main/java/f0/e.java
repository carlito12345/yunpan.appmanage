package f0;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import g0.n;
import g0.o;
import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: t0, reason: collision with root package name */
    public int f5116t0;

    /* renamed from: x0, reason: collision with root package name */
    public int f5120x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f5121y0;

    /* renamed from: q0, reason: collision with root package name */
    public ArrayList f5114q0 = new ArrayList();

    /* renamed from: r0, reason: collision with root package name */
    public final v3.f f5115r0 = new v3.f(this);
    public final g0.e s0 = new g0.e(this);

    /* renamed from: u0, reason: collision with root package name */
    public i0.f f5117u0 = null;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f5118v0 = false;

    /* renamed from: w0, reason: collision with root package name */
    public final d0.c f5119w0 = new d0.c();

    /* renamed from: z0, reason: collision with root package name */
    public int f5122z0 = 0;
    public int A0 = 0;
    public b[] B0 = new b[4];
    public b[] C0 = new b[4];
    public int D0 = 257;
    public boolean E0 = false;
    public boolean F0 = false;
    public WeakReference G0 = null;
    public WeakReference H0 = null;
    public WeakReference I0 = null;
    public WeakReference J0 = null;
    public final HashSet K0 = new HashSet();
    public final g0.b L0 = new g0.b();

    public static void V(d dVar, i0.f fVar, g0.b bVar) {
        int i10;
        int i11;
        if (fVar == null) {
            return;
        }
        if (dVar.f5088g0 == 8 || (dVar instanceof h) || (dVar instanceof a)) {
            bVar.f5932e = 0;
            bVar.f5933f = 0;
            return;
        }
        int[] iArr = dVar.f5105p0;
        bVar.f5928a = iArr[0];
        bVar.f5929b = iArr[1];
        bVar.f5930c = dVar.q();
        bVar.f5931d = dVar.k();
        bVar.f5936i = false;
        bVar.f5937j = 0;
        boolean z = bVar.f5928a == 3;
        boolean z4 = bVar.f5929b == 3;
        boolean z10 = z && dVar.W > 0.0f;
        boolean z11 = z4 && dVar.W > 0.0f;
        if (z && dVar.t(0) && dVar.r == 0 && !z10) {
            bVar.f5928a = 2;
            if (z4 && dVar.f5107s == 0) {
                bVar.f5928a = 1;
            }
            z = false;
        }
        if (z4 && dVar.t(1) && dVar.f5107s == 0 && !z11) {
            bVar.f5929b = 2;
            if (z && dVar.r == 0) {
                bVar.f5929b = 1;
            }
            z4 = false;
        }
        if (dVar.A()) {
            bVar.f5928a = 1;
            z = false;
        }
        if (dVar.B()) {
            bVar.f5929b = 1;
            z4 = false;
        }
        int[] iArr2 = dVar.f5108t;
        if (z10) {
            if (iArr2[0] == 4) {
                bVar.f5928a = 1;
            } else if (!z4) {
                if (bVar.f5929b == 1) {
                    i11 = bVar.f5931d;
                } else {
                    bVar.f5928a = 2;
                    fVar.b(dVar, bVar);
                    i11 = bVar.f5933f;
                }
                bVar.f5928a = 1;
                bVar.f5930c = (int) (dVar.W * i11);
            }
        }
        if (z11) {
            if (iArr2[1] == 4) {
                bVar.f5929b = 1;
            } else if (!z) {
                if (bVar.f5928a == 1) {
                    i10 = bVar.f5930c;
                } else {
                    bVar.f5929b = 2;
                    fVar.b(dVar, bVar);
                    i10 = bVar.f5932e;
                }
                bVar.f5929b = 1;
                if (dVar.X == -1) {
                    bVar.f5931d = (int) (i10 / dVar.W);
                } else {
                    bVar.f5931d = (int) (dVar.W * i10);
                }
            }
        }
        fVar.b(dVar, bVar);
        dVar.O(bVar.f5932e);
        dVar.L(bVar.f5933f);
        dVar.E = bVar.f5935h;
        dVar.I(bVar.f5934g);
        bVar.f5937j = 0;
    }

    @Override // f0.d
    public final void C() {
        this.f5119w0.t();
        this.f5120x0 = 0;
        this.f5121y0 = 0;
        this.f5114q0.clear();
        super.C();
    }

    @Override // f0.d
    public final void F(v3.f fVar) {
        super.F(fVar);
        int size = this.f5114q0.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((d) this.f5114q0.get(i10)).F(fVar);
        }
    }

    @Override // f0.d
    public final void P(boolean z, boolean z4) {
        super.P(z, z4);
        int size = this.f5114q0.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((d) this.f5114q0.get(i10)).P(z, z4);
        }
    }

    public final void R(d dVar, int i10) {
        if (i10 == 0) {
            int i11 = this.f5122z0 + 1;
            b[] bVarArr = this.C0;
            if (i11 >= bVarArr.length) {
                this.C0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            b[] bVarArr2 = this.C0;
            int i12 = this.f5122z0;
            bVarArr2[i12] = new b(dVar, 0, this.f5118v0);
            this.f5122z0 = i12 + 1;
            return;
        }
        if (i10 == 1) {
            int i13 = this.A0 + 1;
            b[] bVarArr3 = this.B0;
            if (i13 >= bVarArr3.length) {
                this.B0 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length * 2);
            }
            b[] bVarArr4 = this.B0;
            int i14 = this.A0;
            bVarArr4[i14] = new b(dVar, 1, this.f5118v0);
            this.A0 = i14 + 1;
        }
    }

    public final void S(d0.c cVar) {
        boolean zW = W(64);
        b(cVar, zW);
        int size = this.f5114q0.size();
        boolean z = false;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) this.f5114q0.get(i10);
            boolean[] zArr = dVar.S;
            zArr[0] = false;
            zArr[1] = false;
            if (dVar instanceof a) {
                z = true;
            }
        }
        if (z) {
            for (int i11 = 0; i11 < size; i11++) {
                d dVar2 = (d) this.f5114q0.get(i11);
                if (dVar2 instanceof a) {
                    a aVar = (a) dVar2;
                    for (int i12 = 0; i12 < aVar.f5154r0; i12++) {
                        d dVar3 = aVar.f5153q0[i12];
                        if (aVar.f5047t0 || dVar3.c()) {
                            int i13 = aVar.s0;
                            if (i13 == 0 || i13 == 1) {
                                dVar3.S[0] = true;
                            } else if (i13 == 2 || i13 == 3) {
                                dVar3.S[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.K0;
        hashSet.clear();
        for (int i14 = 0; i14 < size; i14++) {
            d dVar4 = (d) this.f5114q0.get(i14);
            dVar4.getClass();
            boolean z4 = dVar4 instanceof g;
            if (z4 || (dVar4 instanceof h)) {
                if (z4) {
                    hashSet.add(dVar4);
                } else {
                    dVar4.b(cVar, zW);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                g gVar = (g) ((d) it.next());
                for (int i15 = 0; i15 < gVar.f5154r0; i15++) {
                    if (hashSet.contains(gVar.f5153q0[i15])) {
                        gVar.b(cVar, zW);
                        hashSet.remove(gVar);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((d) it2.next()).b(cVar, zW);
                }
                hashSet.clear();
            }
        }
        if (d0.c.f4211p) {
            HashSet hashSet2 = new HashSet();
            for (int i16 = 0; i16 < size; i16++) {
                d dVar5 = (d) this.f5114q0.get(i16);
                dVar5.getClass();
                if (!(dVar5 instanceof g) && !(dVar5 instanceof h)) {
                    hashSet2.add(dVar5);
                }
            }
            a(this, cVar, hashSet2, this.f5105p0[0] == 2 ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                d dVar6 = (d) it3.next();
                j.b(this, cVar, dVar6);
                dVar6.b(cVar, zW);
            }
        } else {
            for (int i17 = 0; i17 < size; i17++) {
                d dVar7 = (d) this.f5114q0.get(i17);
                if (dVar7 instanceof e) {
                    int[] iArr = dVar7.f5105p0;
                    int i18 = iArr[0];
                    int i19 = iArr[1];
                    if (i18 == 2) {
                        dVar7.M(1);
                    }
                    if (i19 == 2) {
                        dVar7.N(1);
                    }
                    dVar7.b(cVar, zW);
                    if (i18 == 2) {
                        dVar7.M(i18);
                    }
                    if (i19 == 2) {
                        dVar7.N(i19);
                    }
                } else {
                    j.b(this, cVar, dVar7);
                    if (!(dVar7 instanceof g) && !(dVar7 instanceof h)) {
                        dVar7.b(cVar, zW);
                    }
                }
            }
        }
        if (this.f5122z0 > 0) {
            j.a(this, cVar, null, 0);
        }
        if (this.A0 > 0) {
            j.a(this, cVar, null, 1);
        }
    }

    public final boolean T(int i10, boolean z) {
        boolean z4;
        g0.e eVar = this.s0;
        e eVar2 = (e) eVar.f5941c;
        boolean z10 = false;
        int iJ = eVar2.j(0);
        int iJ2 = eVar2.j(1);
        int iR = eVar2.r();
        int iS = eVar2.s();
        ArrayList arrayList = (ArrayList) eVar.f5943e;
        if (z && (iJ == 2 || iJ2 == 2)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                o oVar = (o) it.next();
                if (oVar.f5975f == i10 && !oVar.k()) {
                    z = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z && iJ == 2) {
                    eVar2.M(1);
                    eVar2.O(eVar.e(eVar2, 0));
                    eVar2.f5081d.f5974e.d(eVar2.q());
                }
            } else if (z && iJ2 == 2) {
                eVar2.N(1);
                eVar2.L(eVar.e(eVar2, 1));
                eVar2.f5083e.f5974e.d(eVar2.k());
            }
        }
        int[] iArr = eVar2.f5105p0;
        if (i10 == 0) {
            int i11 = iArr[0];
            if (i11 == 1 || i11 == 4) {
                int iQ = eVar2.q() + iR;
                eVar2.f5081d.f5978i.d(iQ);
                eVar2.f5081d.f5974e.d(iQ - iR);
                z4 = true;
            }
            z4 = false;
        } else {
            int i12 = iArr[1];
            if (i12 == 1 || i12 == 4) {
                int iK = eVar2.k() + iS;
                eVar2.f5083e.f5978i.d(iK);
                eVar2.f5083e.f5974e.d(iK - iS);
                z4 = true;
            }
            z4 = false;
        }
        eVar.j();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            o oVar2 = (o) it2.next();
            if (oVar2.f5975f == i10 && (oVar2.f5971b != eVar2 || oVar2.f5976g)) {
                oVar2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z10 = true;
                break;
            }
            o oVar3 = (o) it3.next();
            if (oVar3.f5975f == i10 && (z4 || oVar3.f5971b != eVar2)) {
                if (!oVar3.f5977h.f5956j || !oVar3.f5978i.f5956j || (!(oVar3 instanceof g0.c) && !oVar3.f5974e.f5956j)) {
                    break;
                }
            }
        }
        eVar2.M(iJ);
        eVar2.N(iJ2);
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:349:0x05dd  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0677 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0696  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x07b7  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x07f3  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x080e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:500:0x081a A[LOOP:14: B:499:0x0818->B:500:0x081a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x088c  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x089f  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x08a8  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x08ac  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x08e3  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x08e7  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:611:0x08e8 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void U() {
        int i10;
        Object[] objArr;
        c cVar;
        int i11;
        int i12;
        c cVar2;
        int i13;
        int i14;
        d0.c cVar3;
        int i15;
        boolean z;
        char c7;
        int i16;
        int i17;
        boolean z4;
        boolean z10;
        boolean z11;
        boolean z12;
        int iMax;
        ?? r62;
        boolean z13;
        int iMax2;
        boolean z14;
        boolean z15;
        int i18;
        int i19;
        int iMax3;
        int iMax4;
        d0.g gVarK;
        d0.c cVar4;
        d0.c cVar5;
        int i20;
        int i21;
        int i22;
        char c10;
        n nVar;
        int i23;
        int iQ;
        int i24;
        int iK;
        int iB;
        n nVar2;
        n nVar3;
        int[] iArr;
        this.Y = 0;
        this.Z = 0;
        this.E0 = false;
        this.F0 = false;
        int size = this.f5114q0.size();
        int iMax5 = Math.max(0, q());
        int iMax6 = Math.max(0, k());
        int[] iArr2 = this.f5105p0;
        int i25 = iArr2[1];
        int i26 = iArr2[0];
        int i27 = this.f5116t0;
        c cVar6 = this.J;
        c cVar7 = this.I;
        if (i27 == 0 && j.c(this.D0, 1)) {
            i0.f fVar = this.f5117u0;
            int i28 = iArr2[0];
            int i29 = iArr2[1];
            E();
            ArrayList arrayList = this.f5114q0;
            int size2 = arrayList.size();
            for (int i30 = 0; i30 < size2; i30++) {
                ((d) arrayList.get(i30)).E();
            }
            boolean z16 = this.f5118v0;
            if (i28 == 1) {
                J(0, q());
            } else {
                cVar7.l(0);
                this.Y = 0;
            }
            int i31 = 0;
            boolean z17 = false;
            boolean z18 = false;
            while (i31 < size2) {
                c cVar8 = cVar7;
                d dVar = (d) arrayList.get(i31);
                int i32 = iMax6;
                if (dVar instanceof h) {
                    h hVar = (h) dVar;
                    iArr = iArr2;
                    if (hVar.f5151u0 == 1) {
                        int i33 = hVar.f5149r0;
                        if (i33 != -1) {
                            hVar.R(i33);
                        } else if (hVar.s0 != -1 && A()) {
                            hVar.R(q() - hVar.s0);
                        } else if (A()) {
                            hVar.R((int) ((hVar.f5148q0 * q()) + 0.5f));
                        }
                        z17 = true;
                    }
                } else {
                    iArr = iArr2;
                    if ((dVar instanceof a) && ((a) dVar).U() == 0) {
                        z18 = true;
                    }
                }
                i31++;
                iMax6 = i32;
                cVar7 = cVar8;
                iArr2 = iArr;
            }
            i10 = iMax6;
            objArr = iArr2;
            cVar = cVar7;
            if (z17) {
                for (int i34 = 0; i34 < size2; i34++) {
                    d dVar2 = (d) arrayList.get(i34);
                    if (dVar2 instanceof h) {
                        h hVar2 = (h) dVar2;
                        if (hVar2.f5151u0 == 1) {
                            g0.h.c(0, hVar2, fVar, z16);
                        }
                    }
                }
            }
            g0.h.c(0, this, fVar, z16);
            if (z18) {
                for (int i35 = 0; i35 < size2; i35++) {
                    d dVar3 = (d) arrayList.get(i35);
                    if (dVar3 instanceof a) {
                        a aVar = (a) dVar3;
                        if (aVar.U() == 0 && aVar.T()) {
                            g0.h.c(1, aVar, fVar, z16);
                        }
                    }
                }
            }
            if (i29 == 1) {
                K(0, k());
            } else {
                cVar6.l(0);
                this.Z = 0;
            }
            boolean z19 = false;
            boolean z20 = false;
            for (int i36 = 0; i36 < size2; i36++) {
                d dVar4 = (d) arrayList.get(i36);
                if (dVar4 instanceof h) {
                    h hVar3 = (h) dVar4;
                    if (hVar3.f5151u0 == 0) {
                        int i37 = hVar3.f5149r0;
                        if (i37 != -1) {
                            hVar3.R(i37);
                        } else if (hVar3.s0 != -1 && B()) {
                            hVar3.R(k() - hVar3.s0);
                        } else if (B()) {
                            hVar3.R((int) ((hVar3.f5148q0 * k()) + 0.5f));
                        }
                        z19 = true;
                    }
                } else if ((dVar4 instanceof a) && ((a) dVar4).U() == 1) {
                    z20 = true;
                }
            }
            if (z19) {
                for (int i38 = 0; i38 < size2; i38++) {
                    d dVar5 = (d) arrayList.get(i38);
                    if (dVar5 instanceof h) {
                        h hVar4 = (h) dVar5;
                        if (hVar4.f5151u0 == 0) {
                            g0.h.i(1, hVar4, fVar);
                        }
                    }
                }
            }
            g0.h.i(0, this, fVar);
            if (z20) {
                for (int i39 = 0; i39 < size2; i39++) {
                    d dVar6 = (d) arrayList.get(i39);
                    if (dVar6 instanceof a) {
                        a aVar2 = (a) dVar6;
                        if (aVar2.U() == 1 && aVar2.T()) {
                            g0.h.i(1, aVar2, fVar);
                        }
                    }
                }
            }
            for (int i40 = 0; i40 < size2; i40++) {
                d dVar7 = (d) arrayList.get(i40);
                if (dVar7.z() && g0.h.a(dVar7)) {
                    V(dVar7, fVar, g0.h.f5959a);
                    if (!(dVar7 instanceof h)) {
                        g0.h.c(0, dVar7, fVar, z16);
                        g0.h.i(0, dVar7, fVar);
                    } else if (((h) dVar7).f5151u0 == 0) {
                        g0.h.i(0, dVar7, fVar);
                    } else {
                        g0.h.c(0, dVar7, fVar, z16);
                    }
                }
            }
            for (int i41 = 0; i41 < size; i41++) {
                d dVar8 = (d) this.f5114q0.get(i41);
                if (dVar8.z() && !(dVar8 instanceof h) && !(dVar8 instanceof a) && !(dVar8 instanceof g) && !dVar8.F) {
                    int iJ = dVar8.j(0);
                    int iJ2 = dVar8.j(1);
                    if (iJ != 3 || dVar8.r == 1 || iJ2 != 3 || dVar8.f5107s == 1) {
                        V(dVar8, this.f5117u0, new g0.b());
                    }
                }
            }
        } else {
            i10 = iMax6;
            objArr = iArr2;
            cVar = cVar7;
        }
        d0.c cVar9 = this.f5119w0;
        if (size <= 2 || !((i26 == 2 || i25 == 2) && j.c(this.D0, 1024))) {
            i11 = size;
            i12 = i25;
            cVar2 = cVar6;
            i13 = i10;
            i14 = iMax5;
            cVar3 = cVar9;
            i15 = i26;
        } else {
            i0.f fVar2 = this.f5117u0;
            ArrayList arrayList2 = this.f5114q0;
            int size3 = arrayList2.size();
            int i42 = 0;
            while (i42 < size3) {
                d dVar9 = (d) arrayList2.get(i42);
                char c11 = objArr[0];
                char c12 = objArr[1];
                int[] iArr3 = dVar9.f5105p0;
                cVar2 = cVar6;
                if (!g0.h.h(c11, c12, iArr3[0], iArr3[1]) || (dVar9 instanceof g)) {
                    i20 = iMax5;
                    i11 = size;
                    i21 = i25;
                    i22 = i26;
                    cVar3 = cVar9;
                    break;
                }
                i42++;
                cVar6 = cVar2;
            }
            cVar2 = cVar6;
            int i43 = 0;
            ArrayList arrayList3 = null;
            ArrayList arrayList4 = null;
            ArrayList arrayList5 = null;
            ArrayList arrayList6 = null;
            ArrayList arrayList7 = null;
            ArrayList arrayList8 = null;
            while (i43 < size3) {
                int i44 = size;
                d dVar10 = (d) arrayList2.get(i43);
                int i45 = i25;
                char c13 = objArr[0];
                int i46 = iMax5;
                char c14 = objArr[1];
                int i47 = i26;
                int[] iArr4 = dVar10.f5105p0;
                d0.c cVar10 = cVar9;
                if (!g0.h.h(c13, c14, iArr4[0], iArr4[1])) {
                    V(dVar10, fVar2, this.L0);
                }
                boolean z21 = dVar10 instanceof h;
                if (z21) {
                    h hVar5 = (h) dVar10;
                    if (hVar5.f5151u0 == 0) {
                        if (arrayList5 == null) {
                            arrayList5 = new ArrayList();
                        }
                        arrayList5.add(hVar5);
                    }
                    if (hVar5.f5151u0 == 1) {
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                        }
                        arrayList3.add(hVar5);
                    }
                }
                if (dVar10 instanceof i) {
                    if (dVar10 instanceof a) {
                        a aVar3 = (a) dVar10;
                        if (aVar3.U() == 0) {
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList();
                            }
                            arrayList4.add(aVar3);
                        }
                        if (aVar3.U() == 1) {
                            if (arrayList6 == null) {
                                arrayList6 = new ArrayList();
                            }
                            arrayList6.add(aVar3);
                        }
                    } else {
                        i iVar = (i) dVar10;
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(iVar);
                        if (arrayList6 == null) {
                            arrayList6 = new ArrayList();
                        }
                        arrayList6.add(iVar);
                    }
                }
                if (dVar10.I.f5071f == null && dVar10.K.f5071f == null && !z21 && !(dVar10 instanceof a)) {
                    if (arrayList7 == null) {
                        arrayList7 = new ArrayList();
                    }
                    arrayList7.add(dVar10);
                }
                if (dVar10.J.f5071f == null && dVar10.L.f5071f == null && dVar10.M.f5071f == null && !z21 && !(dVar10 instanceof a)) {
                    if (arrayList8 == null) {
                        arrayList8 = new ArrayList();
                    }
                    arrayList8.add(dVar10);
                }
                i43++;
                i25 = i45;
                size = i44;
                iMax5 = i46;
                i26 = i47;
                cVar9 = cVar10;
            }
            i20 = iMax5;
            d0.c cVar11 = cVar9;
            i11 = size;
            i21 = i25;
            i22 = i26;
            ArrayList arrayList9 = new ArrayList();
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    g0.h.b((h) it.next(), 0, arrayList9, null);
                }
            }
            int i48 = 0;
            n nVar4 = null;
            if (arrayList4 != null) {
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    i iVar2 = (i) it2.next();
                    n nVarB = g0.h.b(iVar2, i48, arrayList9, nVar4);
                    iVar2.R(i48, nVarB, arrayList9);
                    nVarB.a(arrayList9);
                    i48 = 0;
                    nVar4 = null;
                }
            }
            HashSet hashSet = i(2).f5066a;
            if (hashSet != null) {
                Iterator it3 = hashSet.iterator();
                while (it3.hasNext()) {
                    g0.h.b(((c) it3.next()).f5069d, 0, arrayList9, null);
                }
            }
            HashSet hashSet2 = i(4).f5066a;
            if (hashSet2 != null) {
                Iterator it4 = hashSet2.iterator();
                while (it4.hasNext()) {
                    g0.h.b(((c) it4.next()).f5069d, 0, arrayList9, null);
                }
            }
            HashSet hashSet3 = i(7).f5066a;
            if (hashSet3 != null) {
                Iterator it5 = hashSet3.iterator();
                while (it5.hasNext()) {
                    g0.h.b(((c) it5.next()).f5069d, 0, arrayList9, null);
                }
            }
            n nVar5 = null;
            if (arrayList7 != null) {
                Iterator it6 = arrayList7.iterator();
                while (it6.hasNext()) {
                    g0.h.b((d) it6.next(), 0, arrayList9, null);
                }
            }
            if (arrayList5 != null) {
                Iterator it7 = arrayList5.iterator();
                while (it7.hasNext()) {
                    g0.h.b((h) it7.next(), 1, arrayList9, null);
                }
            }
            int i49 = 1;
            if (arrayList6 != null) {
                Iterator it8 = arrayList6.iterator();
                while (it8.hasNext()) {
                    i iVar3 = (i) it8.next();
                    n nVarB2 = g0.h.b(iVar3, i49, arrayList9, nVar5);
                    iVar3.R(i49, nVarB2, arrayList9);
                    nVarB2.a(arrayList9);
                    i49 = 1;
                    nVar5 = null;
                }
            }
            HashSet hashSet4 = i(3).f5066a;
            if (hashSet4 != null) {
                Iterator it9 = hashSet4.iterator();
                while (it9.hasNext()) {
                    g0.h.b(((c) it9.next()).f5069d, 1, arrayList9, null);
                }
            }
            HashSet hashSet5 = i(6).f5066a;
            if (hashSet5 != null) {
                Iterator it10 = hashSet5.iterator();
                while (it10.hasNext()) {
                    g0.h.b(((c) it10.next()).f5069d, 1, arrayList9, null);
                }
            }
            HashSet hashSet6 = i(5).f5066a;
            if (hashSet6 != null) {
                Iterator it11 = hashSet6.iterator();
                while (it11.hasNext()) {
                    g0.h.b(((c) it11.next()).f5069d, 1, arrayList9, null);
                }
            }
            HashSet hashSet7 = i(7).f5066a;
            if (hashSet7 != null) {
                Iterator it12 = hashSet7.iterator();
                while (it12.hasNext()) {
                    g0.h.b(((c) it12.next()).f5069d, 1, arrayList9, null);
                }
            }
            if (arrayList8 != null) {
                Iterator it13 = arrayList8.iterator();
                while (it13.hasNext()) {
                    g0.h.b((d) it13.next(), 1, arrayList9, null);
                }
            }
            for (int i50 = 0; i50 < size3; i50++) {
                d dVar11 = (d) arrayList2.get(i50);
                int[] iArr5 = dVar11.f5105p0;
                if (iArr5[0] == 3 && iArr5[1] == 3) {
                    int i51 = dVar11.f5101n0;
                    int size4 = arrayList9.size();
                    int i52 = 0;
                    while (true) {
                        if (i52 >= size4) {
                            nVar2 = null;
                            break;
                        }
                        nVar2 = (n) arrayList9.get(i52);
                        if (i51 == nVar2.f5966b) {
                            break;
                        } else {
                            i52++;
                        }
                    }
                    int i53 = dVar11.f5103o0;
                    int size5 = arrayList9.size();
                    int i54 = 0;
                    while (true) {
                        if (i54 >= size5) {
                            nVar3 = null;
                            break;
                        }
                        nVar3 = (n) arrayList9.get(i54);
                        if (i53 == nVar3.f5966b) {
                            break;
                        } else {
                            i54++;
                        }
                    }
                    if (nVar2 != null && nVar3 != null) {
                        nVar2.c(0, nVar3);
                        nVar3.f5967c = 2;
                        arrayList9.remove(nVar2);
                    }
                }
            }
            if (arrayList9.size() > 1) {
                if (objArr[0] == 2) {
                    Iterator it14 = arrayList9.iterator();
                    int i55 = 0;
                    nVar = null;
                    while (it14.hasNext()) {
                        n nVar6 = (n) it14.next();
                        if (nVar6.f5967c != 1) {
                            d0.c cVar12 = cVar11;
                            int iB2 = nVar6.b(cVar12, 0);
                            if (iB2 > i55) {
                                nVar = nVar6;
                                i55 = iB2;
                            }
                            cVar11 = cVar12;
                        }
                    }
                    cVar3 = cVar11;
                    c10 = 1;
                    if (nVar != null) {
                        M(1);
                        O(i55);
                    }
                    if (objArr[c10] != 2) {
                        Iterator it15 = arrayList9.iterator();
                        int i56 = 0;
                        n nVar7 = null;
                        while (it15.hasNext()) {
                            n nVar8 = (n) it15.next();
                            if (nVar8.f5967c != 0 && (iB = nVar8.b(cVar3, 1)) > i56) {
                                nVar7 = nVar8;
                                i56 = iB;
                            }
                        }
                        if (nVar7 != null) {
                            N(1);
                            L(i56);
                        } else {
                            nVar7 = null;
                        }
                        if (nVar != null || nVar7 != null) {
                            i15 = i22;
                            if (i15 == 2) {
                                i23 = i20;
                                if (i23 >= q() || i23 <= 0) {
                                    iQ = q();
                                    i12 = i21;
                                    if (i12 != 2) {
                                        i24 = i10;
                                        if (i24 >= k() || i24 <= 0) {
                                            iK = k();
                                            i13 = iK;
                                            i14 = iQ;
                                            z = true;
                                        } else {
                                            L(i24);
                                            this.F0 = true;
                                        }
                                    } else {
                                        i24 = i10;
                                    }
                                    iK = i24;
                                    i13 = iK;
                                    i14 = iQ;
                                    z = true;
                                } else {
                                    O(i23);
                                    this.E0 = true;
                                }
                            } else {
                                i23 = i20;
                            }
                            iQ = i23;
                            i12 = i21;
                            if (i12 != 2) {
                            }
                            iK = i24;
                            i13 = iK;
                            i14 = iQ;
                            z = true;
                        }
                    }
                    boolean z22 = W(64) || W(128);
                    cVar3.getClass();
                    cVar3.f4219g = false;
                    if (this.D0 == 0 || !z22) {
                        c7 = 1;
                    } else {
                        c7 = 1;
                        cVar3.f4219g = true;
                    }
                    ArrayList arrayList10 = this.f5114q0;
                    boolean z23 = objArr[0] == 2 || objArr[c7] == 2;
                    this.f5122z0 = 0;
                    this.A0 = 0;
                    i16 = i11;
                    for (i17 = 0; i17 < i16; i17++) {
                        d dVar12 = (d) this.f5114q0.get(i17);
                        if (dVar12 instanceof e) {
                            ((e) dVar12).U();
                        }
                    }
                    boolean zW = W(64);
                    boolean z24 = z;
                    int i57 = 0;
                    z4 = true;
                    while (z4) {
                        int i58 = i57 + 1;
                        try {
                            cVar3.t();
                            this.f5122z0 = 0;
                            this.A0 = 0;
                            g(cVar3);
                            for (int i59 = 0; i59 < i16; i59++) {
                                ((d) this.f5114q0.get(i59)).g(cVar3);
                            }
                            S(cVar3);
                            try {
                                WeakReference weakReference = this.G0;
                                if (weakReference != null) {
                                    try {
                                        if (weakReference.get() != null) {
                                            c cVar13 = (c) this.G0.get();
                                            c cVar14 = cVar2;
                                            try {
                                                gVarK = cVar3.k(cVar14);
                                                cVar4 = this.f5119w0;
                                                z11 = z24;
                                                cVar2 = cVar14;
                                            } catch (Exception e7) {
                                                e = e7;
                                                z11 = z24;
                                                cVar2 = cVar14;
                                            }
                                            try {
                                                cVar4.f(cVar4.k(cVar13), gVarK, 0, 5);
                                                this.G0 = null;
                                            } catch (Exception e10) {
                                                e = e10;
                                                z4 = true;
                                                e.printStackTrace();
                                                PrintStream printStream = System.out;
                                                e.toString();
                                                printStream.getClass();
                                                boolean[] zArr = j.f5155a;
                                                if (z4) {
                                                }
                                                if (z23) {
                                                }
                                                iMax = Math.max(this.f5078b0, q());
                                                if (iMax <= q()) {
                                                }
                                                iMax2 = Math.max(this.f5080c0, k());
                                                if (iMax2 <= k()) {
                                                }
                                                if (!z14) {
                                                }
                                                z24 = z14;
                                                z15 = z12;
                                                i18 = 8;
                                                if (i58 > i18) {
                                                }
                                                z4 = z15;
                                                i57 = i58;
                                            }
                                        } else {
                                            z11 = z24;
                                        }
                                        try {
                                            WeakReference weakReference2 = this.I0;
                                            if (weakReference2 != null && weakReference2.get() != null) {
                                                c cVar15 = (c) this.I0.get();
                                                d0.g gVarK2 = cVar3.k(this.L);
                                                d0.c cVar16 = this.f5119w0;
                                                cVar16.f(gVarK2, cVar16.k(cVar15), 0, 5);
                                                this.I0 = null;
                                            }
                                            WeakReference weakReference3 = this.H0;
                                            if (weakReference3 != null && weakReference3.get() != null) {
                                                c cVar17 = (c) this.H0.get();
                                                c cVar18 = cVar;
                                                try {
                                                    d0.g gVarK3 = cVar3.k(cVar18);
                                                    d0.c cVar19 = this.f5119w0;
                                                    cVar = cVar18;
                                                    cVar19.f(cVar19.k(cVar17), gVarK3, 0, 5);
                                                    this.H0 = null;
                                                } catch (Exception e11) {
                                                    e = e11;
                                                    cVar = cVar18;
                                                    z4 = true;
                                                    e.printStackTrace();
                                                    PrintStream printStream2 = System.out;
                                                    e.toString();
                                                    printStream2.getClass();
                                                    boolean[] zArr2 = j.f5155a;
                                                    if (z4) {
                                                    }
                                                    if (z23) {
                                                    }
                                                    iMax = Math.max(this.f5078b0, q());
                                                    if (iMax <= q()) {
                                                    }
                                                    iMax2 = Math.max(this.f5080c0, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z14) {
                                                    }
                                                    z24 = z14;
                                                    z15 = z12;
                                                    i18 = 8;
                                                    if (i58 > i18) {
                                                    }
                                                    z4 = z15;
                                                    i57 = i58;
                                                }
                                            }
                                            WeakReference weakReference4 = this.J0;
                                            if (weakReference4 != null && weakReference4.get() != null) {
                                                c cVar20 = (c) this.J0.get();
                                                d0.g gVarK4 = cVar3.k(this.K);
                                                try {
                                                    cVar5 = this.f5119w0;
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    z4 = true;
                                                    e.printStackTrace();
                                                    PrintStream printStream22 = System.out;
                                                    e.toString();
                                                    printStream22.getClass();
                                                    boolean[] zArr22 = j.f5155a;
                                                    if (z4) {
                                                    }
                                                    if (z23) {
                                                        int iMax7 = 0;
                                                        int iMax8 = 0;
                                                        while (i19 < i16) {
                                                        }
                                                        iMax3 = Math.max(this.f5078b0, iMax7);
                                                        iMax4 = Math.max(this.f5080c0, iMax8);
                                                        if (i15 == 2) {
                                                            O(iMax3);
                                                            objArr[0] = 2;
                                                            z12 = true;
                                                            z11 = true;
                                                        }
                                                        if (i12 == 2) {
                                                            L(iMax4);
                                                            objArr[1] = 2;
                                                            z12 = true;
                                                            z11 = true;
                                                        }
                                                    }
                                                    iMax = Math.max(this.f5078b0, q());
                                                    if (iMax <= q()) {
                                                    }
                                                    iMax2 = Math.max(this.f5080c0, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z14) {
                                                    }
                                                    z24 = z14;
                                                    z15 = z12;
                                                    i18 = 8;
                                                    if (i58 > i18) {
                                                    }
                                                    z4 = z15;
                                                    i57 = i58;
                                                }
                                                try {
                                                    cVar5.f(gVarK4, cVar5.k(cVar20), 0, 5);
                                                } catch (Exception e13) {
                                                    e = e13;
                                                    z4 = true;
                                                    e.printStackTrace();
                                                    PrintStream printStream222 = System.out;
                                                    e.toString();
                                                    printStream222.getClass();
                                                    boolean[] zArr222 = j.f5155a;
                                                    if (z4) {
                                                    }
                                                    if (z23) {
                                                    }
                                                    iMax = Math.max(this.f5078b0, q());
                                                    if (iMax <= q()) {
                                                    }
                                                    iMax2 = Math.max(this.f5080c0, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z14) {
                                                    }
                                                    z24 = z14;
                                                    z15 = z12;
                                                    i18 = 8;
                                                    if (i58 > i18) {
                                                    }
                                                    z4 = z15;
                                                    i57 = i58;
                                                }
                                                try {
                                                    this.J0 = null;
                                                } catch (Exception e14) {
                                                    e = e14;
                                                    z4 = true;
                                                    e.printStackTrace();
                                                    PrintStream printStream2222 = System.out;
                                                    e.toString();
                                                    printStream2222.getClass();
                                                    boolean[] zArr2222 = j.f5155a;
                                                    if (z4) {
                                                    }
                                                    if (z23) {
                                                    }
                                                    iMax = Math.max(this.f5078b0, q());
                                                    if (iMax <= q()) {
                                                    }
                                                    iMax2 = Math.max(this.f5080c0, k());
                                                    if (iMax2 <= k()) {
                                                    }
                                                    if (!z14) {
                                                    }
                                                    z24 = z14;
                                                    z15 = z12;
                                                    i18 = 8;
                                                    if (i58 > i18) {
                                                    }
                                                    z4 = z15;
                                                    i57 = i58;
                                                }
                                            }
                                            cVar3.p();
                                            z4 = true;
                                        } catch (Exception e15) {
                                            e = e15;
                                        }
                                    } catch (Exception e16) {
                                        e = e16;
                                        z11 = z24;
                                    }
                                }
                            } catch (Exception e17) {
                                e = e17;
                                z11 = z24;
                            }
                        } catch (Exception e18) {
                            e = e18;
                            z11 = z24;
                        }
                        boolean[] zArr22222 = j.f5155a;
                        if (z4) {
                            Q(cVar3, zW);
                            for (int i60 = 0; i60 < i16; i60++) {
                                ((d) this.f5114q0.get(i60)).Q(cVar3, zW);
                            }
                            z12 = false;
                        } else {
                            zArr22222[2] = false;
                            boolean zW2 = W(64);
                            Q(cVar3, zW2);
                            int size6 = this.f5114q0.size();
                            int i61 = 0;
                            z12 = false;
                            while (i61 < size6) {
                                d dVar13 = (d) this.f5114q0.get(i61);
                                dVar13.Q(cVar3, zW2);
                                int i62 = size6;
                                boolean z25 = zW2;
                                if (dVar13.f5089h != -1 || dVar13.f5091i != -1) {
                                    z12 = true;
                                }
                                i61++;
                                size6 = i62;
                                zW2 = z25;
                            }
                        }
                        if (z23 && i58 < 8 && zArr22222[2]) {
                            int iMax72 = 0;
                            int iMax82 = 0;
                            for (i19 = 0; i19 < i16; i19++) {
                                d dVar14 = (d) this.f5114q0.get(i19);
                                iMax72 = Math.max(iMax72, dVar14.q() + dVar14.Y);
                                iMax82 = Math.max(iMax82, dVar14.k() + dVar14.Z);
                            }
                            iMax3 = Math.max(this.f5078b0, iMax72);
                            iMax4 = Math.max(this.f5080c0, iMax82);
                            if (i15 == 2 && q() < iMax3) {
                                O(iMax3);
                                objArr[0] = 2;
                                z12 = true;
                                z11 = true;
                            }
                            if (i12 == 2 && k() < iMax4) {
                                L(iMax4);
                                objArr[1] = 2;
                                z12 = true;
                                z11 = true;
                            }
                        }
                        iMax = Math.max(this.f5078b0, q());
                        if (iMax <= q()) {
                            O(iMax);
                            r62 = 1;
                            objArr[0] = 1;
                            z13 = true;
                            z12 = true;
                        } else {
                            r62 = 1;
                            z13 = z11;
                        }
                        iMax2 = Math.max(this.f5080c0, k());
                        if (iMax2 <= k()) {
                            L(iMax2);
                            objArr[r62] = r62;
                            z14 = true;
                            z12 = true;
                        } else {
                            z14 = z13;
                        }
                        if (!z14) {
                            if (objArr[0] == 2 && i14 > 0 && q() > i14) {
                                this.E0 = r62;
                                objArr[0] = r62;
                                O(i14);
                                z14 = true;
                                z12 = true;
                            }
                            if (objArr[r62] == 2 && i13 > 0 && k() > i13) {
                                this.F0 = r62;
                                objArr[r62] = r62;
                                L(i13);
                                i18 = 8;
                                z15 = true;
                                z24 = true;
                            }
                            if (i58 > i18) {
                                z15 = false;
                            }
                            z4 = z15;
                            i57 = i58;
                        }
                        z24 = z14;
                        z15 = z12;
                        i18 = 8;
                        if (i58 > i18) {
                        }
                        z4 = z15;
                        i57 = i58;
                    }
                    z10 = z24;
                    this.f5114q0 = arrayList10;
                    if (z10) {
                        objArr[0] = i15;
                        objArr[1] = i12;
                    }
                    F(cVar3.l);
                }
                cVar3 = cVar11;
                c10 = 1;
                nVar = null;
                if (objArr[c10] != 2) {
                }
                if (W(64)) {
                }
                cVar3.getClass();
                cVar3.f4219g = false;
                if (this.D0 == 0) {
                    c7 = 1;
                }
                ArrayList arrayList102 = this.f5114q0;
                if (objArr[0] == 2) {
                }
                this.f5122z0 = 0;
                this.A0 = 0;
                i16 = i11;
                while (i17 < i16) {
                }
                boolean zW3 = W(64);
                boolean z242 = z;
                int i572 = 0;
                z4 = true;
                while (z4) {
                }
                z10 = z242;
                this.f5114q0 = arrayList102;
                if (z10) {
                }
                F(cVar3.l);
            }
            cVar3 = cVar11;
            i13 = i10;
            i12 = i21;
            i14 = i20;
            i15 = i22;
        }
        z = false;
        if (W(64)) {
        }
        cVar3.getClass();
        cVar3.f4219g = false;
        if (this.D0 == 0) {
        }
        ArrayList arrayList1022 = this.f5114q0;
        if (objArr[0] == 2) {
        }
        this.f5122z0 = 0;
        this.A0 = 0;
        i16 = i11;
        while (i17 < i16) {
        }
        boolean zW32 = W(64);
        boolean z2422 = z;
        int i5722 = 0;
        z4 = true;
        while (z4) {
        }
        z10 = z2422;
        this.f5114q0 = arrayList1022;
        if (z10) {
        }
        F(cVar3.l);
    }

    public final boolean W(int i10) {
        return (this.D0 & i10) == i10;
    }

    @Override // f0.d
    public final void n(StringBuilder sb2) {
        sb2.append(this.f5093j + ":{\n");
        StringBuilder sb3 = new StringBuilder("  actualWidth:");
        sb3.append(this.U);
        sb2.append(sb3.toString());
        sb2.append(SignParameters.NEW_LINE);
        sb2.append("  actualHeight:" + this.V);
        sb2.append(SignParameters.NEW_LINE);
        Iterator it = this.f5114q0.iterator();
        while (it.hasNext()) {
            ((d) it.next()).n(sb2);
            sb2.append(",\n");
        }
        sb2.append("}");
    }
}
