package g3;

import a2.g1;
import java.util.ArrayList;
import java.util.Arrays;
import l2.a0;
import l2.l0;
import r1.d0;
import r1.e0;
import r1.f0;
import r1.o;
import r1.p;
import u1.q;
import u7.g0;

/* loaded from: classes.dex */
public final class k extends i {

    /* renamed from: n, reason: collision with root package name */
    public j f6039n;

    /* renamed from: o, reason: collision with root package name */
    public int f6040o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f6041p;

    /* renamed from: q, reason: collision with root package name */
    public a0 f6042q;
    public l0 r;

    @Override // g3.i
    public final void a(long j10) {
        this.f6028g = j10;
        this.f6041p = j10 != 0;
        a0 a0Var = this.f6042q;
        this.f6040o = a0Var != null ? a0Var.f10395e : 0;
    }

    @Override // g3.i
    public final long b(q qVar) {
        byte b10 = qVar.f15266a[0];
        if ((b10 & 1) == 1) {
            return -1L;
        }
        j jVar = this.f6039n;
        jVar.getClass();
        boolean z = ((ag.h[]) jVar.f6038e)[(b10 >> 1) & (255 >>> (8 - jVar.f6034a))].f680a;
        a0 a0Var = (a0) jVar.f6035b;
        int i10 = !z ? a0Var.f10395e : a0Var.f10396f;
        long j10 = this.f6041p ? (this.f6040o + i10) / 4 : 0;
        byte[] bArr = qVar.f15266a;
        int length = bArr.length;
        int i11 = qVar.f15268c + 4;
        if (length < i11) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i11);
            qVar.M(bArrCopyOf.length, bArrCopyOf);
        } else {
            qVar.N(i11);
        }
        byte[] bArr2 = qVar.f15266a;
        int i12 = qVar.f15268c;
        bArr2[i12 - 4] = (byte) (j10 & 255);
        bArr2[i12 - 3] = (byte) ((j10 >>> 8) & 255);
        bArr2[i12 - 2] = (byte) ((j10 >>> 16) & 255);
        bArr2[i12 - 1] = (byte) (255 & (j10 >>> 24));
        this.f6041p = true;
        this.f6040o = i10;
        return j10;
    }

    @Override // g3.i
    public final boolean c(q qVar, long j10, g1 g1Var) throws f0 {
        j jVar;
        long jFloor;
        if (this.f6039n != null) {
            ((p) g1Var.f175b).getClass();
            return false;
        }
        a0 a0Var = this.f6042q;
        int i10 = 4;
        if (a0Var == null) {
            l2.b.x(1, qVar, false);
            qVar.t();
            int iB = qVar.B();
            int iT = qVar.t();
            int iQ = qVar.q();
            int i11 = iQ <= 0 ? -1 : iQ;
            int iQ2 = qVar.q();
            int i12 = iQ2 <= 0 ? -1 : iQ2;
            qVar.q();
            int iB2 = qVar.B();
            int iPow = (int) Math.pow(2.0d, iB2 & 15);
            int iPow2 = (int) Math.pow(2.0d, (iB2 & 240) >> 4);
            qVar.B();
            this.f6042q = new a0(iB, iT, i11, i12, iPow, iPow2, Arrays.copyOf(qVar.f15266a, qVar.f15268c));
        } else {
            l0 l0Var = this.r;
            if (l0Var == null) {
                this.r = l2.b.v(qVar, true, true);
            } else {
                int i13 = qVar.f15268c;
                byte[] bArr = new byte[i13];
                System.arraycopy(qVar.f15266a, 0, bArr, 0, i13);
                int i14 = 5;
                l2.b.x(5, qVar, false);
                int iB3 = qVar.B() + 1;
                j3.f fVar = new j3.f(qVar.f15266a);
                fVar.o(qVar.f15267b * 8);
                int i15 = 0;
                while (true) {
                    int i16 = 16;
                    if (i15 >= iB3) {
                        int i17 = 6;
                        int iG = fVar.g(6) + 1;
                        for (int i18 = 0; i18 < iG; i18++) {
                            if (fVar.g(16) != 0) {
                                throw f0.a(null, "placeholder of time domain transforms not zeroed out");
                            }
                        }
                        int iG2 = fVar.g(6) + 1;
                        int i19 = 0;
                        while (true) {
                            int i20 = 3;
                            if (i19 < iG2) {
                                int iG3 = fVar.g(i16);
                                if (iG3 == 0) {
                                    int i21 = 8;
                                    fVar.o(8);
                                    fVar.o(16);
                                    fVar.o(16);
                                    fVar.o(6);
                                    fVar.o(8);
                                    int iG4 = fVar.g(4) + 1;
                                    int i22 = 0;
                                    while (i22 < iG4) {
                                        fVar.o(i21);
                                        i22++;
                                        i21 = 8;
                                    }
                                } else {
                                    if (iG3 != 1) {
                                        throw f0.a(null, "floor type greater than 1 not decodable: " + iG3);
                                    }
                                    int iG5 = fVar.g(i14);
                                    int[] iArr = new int[iG5];
                                    int i23 = -1;
                                    for (int i24 = 0; i24 < iG5; i24++) {
                                        int iG6 = fVar.g(i10);
                                        iArr[i24] = iG6;
                                        if (iG6 > i23) {
                                            i23 = iG6;
                                        }
                                    }
                                    int i25 = i23 + 1;
                                    int[] iArr2 = new int[i25];
                                    int i26 = 0;
                                    while (i26 < i25) {
                                        iArr2[i26] = fVar.g(i20) + 1;
                                        int iG7 = fVar.g(2);
                                        int i27 = 8;
                                        if (iG7 > 0) {
                                            fVar.o(8);
                                        }
                                        int i28 = i25;
                                        int i29 = 0;
                                        while (i29 < (1 << iG7)) {
                                            fVar.o(i27);
                                            i29++;
                                            i27 = 8;
                                        }
                                        i26++;
                                        i25 = i28;
                                        i20 = 3;
                                    }
                                    fVar.o(2);
                                    int iG8 = fVar.g(4);
                                    int i30 = 0;
                                    int i31 = 0;
                                    for (int i32 = 0; i32 < iG5; i32++) {
                                        i30 += iArr2[iArr[i32]];
                                        while (i31 < i30) {
                                            fVar.o(iG8);
                                            i31++;
                                        }
                                    }
                                }
                                i19++;
                                i17 = 6;
                                i10 = 4;
                                i16 = 16;
                                i14 = 5;
                            } else {
                                int iG9 = fVar.g(i17) + 1;
                                int i33 = 0;
                                while (i33 < iG9) {
                                    if (fVar.g(16) > 2) {
                                        throw f0.a(null, "residueType greater than 2 is not decodable");
                                    }
                                    fVar.o(24);
                                    fVar.o(24);
                                    fVar.o(24);
                                    int iG10 = fVar.g(i17) + 1;
                                    int i34 = 8;
                                    fVar.o(8);
                                    int[] iArr3 = new int[iG10];
                                    for (int i35 = 0; i35 < iG10; i35++) {
                                        iArr3[i35] = ((fVar.f() ? fVar.g(5) : 0) * 8) + fVar.g(3);
                                    }
                                    int i36 = 0;
                                    while (i36 < iG10) {
                                        int i37 = 0;
                                        while (i37 < i34) {
                                            if ((iArr3[i36] & (1 << i37)) != 0) {
                                                fVar.o(i34);
                                            }
                                            i37++;
                                            i34 = 8;
                                        }
                                        i36++;
                                        i34 = 8;
                                    }
                                    i33++;
                                    i17 = 6;
                                }
                                int iG11 = fVar.g(i17) + 1;
                                for (int i38 = 0; i38 < iG11; i38++) {
                                    int iG12 = fVar.g(16);
                                    if (iG12 != 0) {
                                        u1.a.f("mapping type other than 0 not supported: " + iG12);
                                    } else {
                                        int iG13 = fVar.f() ? fVar.g(4) + 1 : 1;
                                        boolean zF = fVar.f();
                                        int i39 = a0Var.f10391a;
                                        if (zF) {
                                            int iG14 = fVar.g(8) + 1;
                                            for (int i40 = 0; i40 < iG14; i40++) {
                                                int i41 = i39 - 1;
                                                fVar.o(l2.b.m(i41));
                                                fVar.o(l2.b.m(i41));
                                            }
                                        }
                                        if (fVar.g(2) != 0) {
                                            throw f0.a(null, "to reserved bits must be zero after mapping coupling steps");
                                        }
                                        if (iG13 > 1) {
                                            for (int i42 = 0; i42 < i39; i42++) {
                                                fVar.o(4);
                                            }
                                        }
                                        for (int i43 = 0; i43 < iG13; i43++) {
                                            fVar.o(8);
                                            fVar.o(8);
                                            fVar.o(8);
                                        }
                                    }
                                }
                                int iG15 = fVar.g(6);
                                int i44 = iG15 + 1;
                                ag.h[] hVarArr = new ag.h[i44];
                                for (int i45 = 0; i45 < i44; i45++) {
                                    boolean zF2 = fVar.f();
                                    fVar.g(16);
                                    fVar.g(16);
                                    fVar.g(8);
                                    hVarArr[i45] = new ag.h(zF2);
                                }
                                if (!fVar.f()) {
                                    throw f0.a(null, "framing bit after modes not set as expected");
                                }
                                jVar = new j(a0Var, l0Var, bArr, hVarArr, l2.b.m(iG15));
                            }
                        }
                    } else {
                        if (fVar.g(24) != 5653314) {
                            throw f0.a(null, "expected code book to start with [0x56, 0x43, 0x42] at " + ((fVar.f9722d * 8) + fVar.f9723e));
                        }
                        int iG16 = fVar.g(16);
                        int iG17 = fVar.g(24);
                        if (fVar.f()) {
                            fVar.o(5);
                            for (int iG18 = 0; iG18 < iG17; iG18 += fVar.g(l2.b.m(iG17 - iG18))) {
                            }
                        } else {
                            boolean zF3 = fVar.f();
                            for (int i46 = 0; i46 < iG17; i46++) {
                                if (!zF3) {
                                    fVar.o(5);
                                } else if (fVar.f()) {
                                    fVar.o(5);
                                }
                            }
                        }
                        int iG19 = fVar.g(4);
                        if (iG19 > 2) {
                            throw f0.a(null, "lookup type greater than 2 not decodable: " + iG19);
                        }
                        if (iG19 == 1 || iG19 == 2) {
                            fVar.o(32);
                            fVar.o(32);
                            int iG20 = fVar.g(4) + 1;
                            fVar.o(1);
                            if (iG19 != 1) {
                                jFloor = iG16 * iG17;
                            } else if (iG16 != 0) {
                                double d10 = iG16;
                                Double.isNaN(d10);
                                jFloor = (long) Math.floor(Math.pow(iG17, 1.0d / d10));
                            } else {
                                jFloor = 0;
                            }
                            fVar.o((int) (jFloor * iG20));
                        }
                        i15++;
                    }
                }
            }
        }
        jVar = null;
        this.f6039n = jVar;
        if (jVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        a0 a0Var2 = (a0) jVar.f6035b;
        arrayList.add((byte[]) a0Var2.f10397g);
        arrayList.add((byte[]) jVar.f6037d);
        d0 d0VarS = l2.b.s(g0.n(((l0) jVar.f6036c).f10503a));
        o oVar = new o();
        oVar.f13491m = e0.l("audio/ogg");
        oVar.f13492n = e0.l("audio/vorbis");
        oVar.f13487h = a0Var2.f10394d;
        oVar.f13488i = a0Var2.f10393c;
        oVar.F = a0Var2.f10391a;
        oVar.G = a0Var2.f10392b;
        oVar.f13495q = arrayList;
        oVar.f13490k = d0VarS;
        g1Var.f175b = new p(oVar);
        return true;
    }

    @Override // g3.i
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.f6039n = null;
            this.f6042q = null;
            this.r = null;
        }
        this.f6040o = 0;
        this.f6041p = false;
    }
}
