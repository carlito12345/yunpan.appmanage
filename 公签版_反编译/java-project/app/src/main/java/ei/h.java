package ei;

import androidx.room.s;
import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public abstract class h extends b {
    public int A;

    /* renamed from: m, reason: collision with root package name */
    public final fi.d f5026m;

    /* renamed from: n, reason: collision with root package name */
    public final di.a f5027n;

    /* renamed from: o, reason: collision with root package name */
    public final e f5028o;

    /* renamed from: p, reason: collision with root package name */
    public final g f5029p;

    /* renamed from: q, reason: collision with root package name */
    public final g f5030q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public int f5031s;

    /* renamed from: t, reason: collision with root package name */
    public int f5032t;

    /* renamed from: u, reason: collision with root package name */
    public final int f5033u;

    /* renamed from: v, reason: collision with root package name */
    public final int[][] f5034v;

    /* renamed from: w, reason: collision with root package name */
    public final int[][] f5035w;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f5036x;

    /* renamed from: y, reason: collision with root package name */
    public int f5037y;
    public int z;

    public h(fi.d dVar, di.a aVar, int i10, int i11, int i12, int i13, int i14) {
        super(i12);
        this.f5031s = 0;
        this.f5032t = 0;
        Class cls = Integer.TYPE;
        this.f5035w = (int[][]) Array.newInstance((Class<?>) cls, 4, 128);
        this.f5036x = new int[16];
        this.f5037y = 0;
        this.z = -1;
        this.A = 0;
        this.f5026m = dVar;
        this.f5027n = aVar;
        this.r = i14;
        this.f5028o = new e(this, i10, i11);
        this.f5029p = new g(this, i12, i14);
        this.f5030q = new g(this, i12, i14);
        int iE = e(i13 - 1) + 1;
        this.f5033u = iE;
        this.f5034v = (int[][]) Array.newInstance((Class<?>) cls, 4, iE);
        a();
    }

    public static int e(int i10) {
        if (i10 <= 4 && i10 >= 0) {
            return i10;
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
        return ((31 - iNumberOfLeadingZeros) << 1) + ((i10 >>> (30 - iNumberOfLeadingZeros)) & 1);
    }

    @Override // ei.b
    public void a() {
        super.a();
        int i10 = 0;
        while (true) {
            d[] dVarArr = (d[]) this.f5028o.f5016c;
            if (i10 >= dVarArr.length) {
                this.f5029p.a();
                this.f5030q.a();
                this.f5031s = 0;
                this.f5032t = 0;
                this.A = this.z + 1 + this.A;
                this.z = -1;
                return;
            }
            com.bumptech.glide.c.H((short[]) dVarArr[i10].f1a);
            i10++;
        }
    }

    public final boolean b() {
        try {
            if (!(this.f5027n.f4679g != -1) && !c()) {
                return false;
            }
            while (this.A <= 2096879 && this.f5026m.s0() <= 65510) {
                if (!d()) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            throw new Error();
        }
    }

    public final boolean c() {
        di.a aVar = this.f5027n;
        if (aVar.f4679g >= aVar.f4680h) {
            return false;
        }
        k(1);
        this.f5026m.o0(this.f5004d[this.f5003c.f1647b], 0, 0);
        ((d[]) this.f5028o.f5016c)[0].t();
        this.z--;
        this.A++;
        return true;
    }

    public final boolean d() {
        int i10 = this.z + 1;
        di.a aVar = this.f5027n;
        if (!(aVar.f4679g - i10 < aVar.f4680h)) {
            return false;
        }
        int iJ = j();
        int i11 = (aVar.f4679g - this.z) & this.f5001a;
        int i12 = this.f5037y;
        androidx.leanback.widget.i iVar = this.f5003c;
        short[][] sArr = this.f5004d;
        fi.d dVar = this.f5026m;
        if (i12 == -1) {
            dVar.o0(sArr[iVar.f1647b], i11, 0);
            e eVar = this.f5028o;
            h hVar = (h) eVar.f5017d;
            int i13 = hVar.z + 1;
            di.a aVar2 = hVar.f5027n;
            ((d[]) eVar.f5016c)[eVar.b(aVar2.b(i13), aVar2.f4679g - hVar.z)].t();
        } else {
            dVar.o0(sArr[iVar.f1647b], i11, 1);
            int i14 = this.f5037y;
            short[] sArr2 = this.f5005e;
            if (i14 < 4) {
                dVar.o0(sArr2, iVar.f1647b, 1);
                int i15 = this.f5037y;
                short[] sArr3 = this.f5006f;
                if (i15 == 0) {
                    dVar.o0(sArr3, iVar.f1647b, 0);
                    dVar.o0(this.f5009i[iVar.f1647b], i11, iJ != 1 ? 1 : 0);
                } else {
                    int[] iArr = this.f5002b;
                    int i16 = iArr[i15];
                    dVar.o0(sArr3, iVar.f1647b, 1);
                    short[] sArr4 = this.f5007g;
                    if (i15 == 1) {
                        dVar.o0(sArr4, iVar.f1647b, 0);
                    } else {
                        dVar.o0(sArr4, iVar.f1647b, 1);
                        dVar.o0(this.f5008h, iVar.f1647b, i15 - 2);
                        if (i15 == 3) {
                            iArr[3] = iArr[2];
                        }
                        iArr[2] = iArr[1];
                    }
                    iArr[1] = iArr[0];
                    iArr[0] = i16;
                }
                if (iJ == 1) {
                    iVar.f1647b = iVar.f1647b < 7 ? 9 : 11;
                } else {
                    this.f5030q.b(iJ, i11);
                    iVar.l();
                }
            } else {
                dVar.o0(sArr2, iVar.f1647b, 0);
                int i17 = this.f5037y - 4;
                this.f5003c.m();
                this.f5029p.b(iJ, i11);
                int iE = e(i17);
                short[] sArr5 = this.f5010j[iJ < 6 ? iJ - 2 : 3];
                fi.d dVar2 = this.f5026m;
                dVar2.p0(sArr5, iE);
                if (iE >= 4) {
                    int i18 = iE >>> 1;
                    int i19 = i17 - (((iE & 1) | 2) << (i18 - 1));
                    if (iE < 14) {
                        short[] sArr6 = this.f5011k[iE - 4];
                        int length = sArr6.length | i19;
                        int i20 = 1;
                        do {
                            int i21 = length & 1;
                            length >>>= 1;
                            dVar2.o0(sArr6, i20, i21);
                            i20 = (i20 << 1) | i21;
                        } while (length != 1);
                    } else {
                        int i22 = i19 >>> 4;
                        int i23 = i18 - 5;
                        while (true) {
                            int i24 = dVar2.f5900m >>> 1;
                            dVar2.f5900m = i24;
                            i23--;
                            int i25 = i22;
                            dVar2.l += (0 - ((i22 >>> i23) & 1)) & i24;
                            if (((-16777216) & i24) == 0) {
                                dVar2.f5900m = i24 << 8;
                                dVar2.t0();
                            }
                            if (i23 == 0) {
                                break;
                            }
                            i22 = i25;
                        }
                        short[] sArr7 = this.l;
                        int length2 = (i19 & 15) | sArr7.length;
                        int i26 = 1;
                        do {
                            int i27 = length2 & 1;
                            length2 >>>= 1;
                            dVar2.o0(sArr7, i26, i27);
                            i26 = (i26 << 1) | i27;
                        } while (length2 != 1);
                        this.f5032t--;
                    }
                }
                int[] iArr2 = this.f5002b;
                iArr2[3] = iArr2[2];
                iArr2[2] = iArr2[1];
                iArr2[1] = iArr2[0];
                iArr2[0] = i17;
                this.f5031s--;
            }
        }
        this.z -= iJ;
        this.A += iJ;
        return true;
    }

    public final int f(int i10, androidx.leanback.widget.i iVar, int i11) {
        return this.f5030q.f5024f[i11][i10 - 2] + g(fi.d.q0(this.f5005e[iVar.f1647b], 1) + fi.d.q0(this.f5004d[iVar.f1647b][i11], 1), 0, iVar, i11);
    }

    public final int g(int i10, int i11, androidx.leanback.widget.i iVar, int i12) {
        short[] sArr = this.f5006f;
        if (i11 == 0) {
            return fi.d.q0(this.f5009i[iVar.f1647b][i12], 1) + fi.d.q0(sArr[iVar.f1647b], 0) + i10;
        }
        int iQ0 = fi.d.q0(sArr[iVar.f1647b], 1) + i10;
        short[] sArr2 = this.f5007g;
        if (i11 == 1) {
            return fi.d.q0(sArr2[iVar.f1647b], 0) + iQ0;
        }
        return fi.d.q0(this.f5008h[iVar.f1647b], i11 - 2) + fi.d.q0(sArr2[iVar.f1647b], 1) + iQ0;
    }

    public final int h(int i10, int i11, int i12, int i13) {
        int i14 = i12 - 2;
        int i15 = this.f5029p.f5024f[i13][i14] + i10;
        if (i12 >= 6) {
            i14 = 3;
        }
        if (i11 < 128) {
            return i15 + this.f5035w[i14][i11];
        }
        return i15 + this.f5034v[i14][e(i11)] + this.f5036x[i11 & 15];
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0212, code lost:
    
        r10[r8] = 0;
        r10[r0] = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1 A[PHI: r5
  0x00a1: PHI (r5v10 int) = (r5v9 int), (r5v14 int) binds: [B:23:0x008f, B:25:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0180 A[PHI: r13
  0x0180: PHI (r13v3 int) = (r13v2 int), (r13v11 int) binds: [B:72:0x016c, B:74:0x0179] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final s i() {
        s sVar;
        int iA;
        int iA2;
        this.z++;
        di.a aVar = this.f5027n;
        switch (aVar.l) {
            case 0:
                sVar = aVar.f4686o;
                sVar.f2426b = 0;
                int iD = aVar.d();
                int i10 = aVar.f4675c;
                int i11 = aVar.f4676d;
                if (iD < i10) {
                    if (iD != 0) {
                        if (i11 > iD) {
                            i11 = iD;
                        }
                    }
                    return sVar;
                }
                iD = i10;
                int i12 = aVar.f4679g;
                di.b bVar = aVar.f4684m;
                byte[] bArr = aVar.f4677e;
                bVar.a(i12, bArr);
                int i13 = aVar.f4689s;
                int i14 = i13 - bVar.f4692b[bVar.f4696f];
                int i15 = i13 - bVar.f4693c[bVar.f4697g];
                int i16 = bVar.f4694d[bVar.f4698h];
                bVar.b(i13);
                int[] iArr = (int[]) sVar.f2428d;
                int[] iArr2 = (int[]) sVar.f2427c;
                int i17 = aVar.f4688q;
                if (i14 < i17) {
                    int i18 = aVar.f4679g;
                    if (bArr[i18 - i14] == bArr[i18]) {
                        iA = 2;
                        iArr2[0] = 2;
                        iArr[0] = i14 - 1;
                        sVar.f2426b = 1;
                    } else {
                        iA = 0;
                    }
                    if (i14 != i15 && i15 < i17) {
                        int i19 = aVar.f4679g;
                        if (bArr[i19 - i15] == bArr[i19]) {
                            int i20 = sVar.f2426b;
                            sVar.f2426b = i20 + 1;
                            iArr[i20] = i15 - 1;
                            i14 = i15;
                            iA = 3;
                        }
                    }
                    if (sVar.f2426b > 0) {
                        iA = com.bumptech.glide.d.A(bArr, aVar.f4679g, i14, iA, iD);
                        iArr2[sVar.f2426b - 1] = iA;
                        if (iA >= i11) {
                            aVar.k(i11, i16);
                        } else {
                            int i21 = iA >= 3 ? iA : 3;
                            int i22 = aVar.r << 1;
                            int i23 = i22 + 1;
                            int i24 = aVar.f4687p;
                            int i25 = 0;
                            int i26 = 0;
                            while (true) {
                                int i27 = aVar.f4689s - i16;
                                int i28 = i24 - 1;
                                int i29 = i16;
                                int[] iArr3 = aVar.f4685n;
                                if (i24 == 0 || i27 >= i17) {
                                    break;
                                } else {
                                    int i30 = aVar.r;
                                    int i31 = ((i30 - i27) + (i27 > i30 ? i17 : 0)) << 1;
                                    int iMin = Math.min(i25, i26);
                                    int i32 = i17;
                                    int i33 = aVar.f4679g;
                                    int i34 = i33 + iMin;
                                    int i35 = i25;
                                    int i36 = i26;
                                    if (bArr[i34 - i27] == bArr[i34] && (iMin = com.bumptech.glide.d.A(bArr, i33, i27, iMin + 1, iD)) > i21) {
                                        int i37 = sVar.f2426b;
                                        iArr2[i37] = iMin;
                                        iArr[i37] = i27 - 1;
                                        sVar.f2426b = i37 + 1;
                                        if (iMin >= i11) {
                                            iArr3[i22] = iArr3[i31];
                                            iArr3[i23] = iArr3[i31 + 1];
                                        } else {
                                            i21 = iMin;
                                        }
                                    }
                                    int i38 = aVar.f4679g + iMin;
                                    if ((bArr[i38 - i27] & 255) < (bArr[i38] & 255)) {
                                        iArr3[i22] = i29;
                                        int i39 = i31 + 1;
                                        i16 = iArr3[i39];
                                        i26 = iMin;
                                        i22 = i39;
                                    } else {
                                        iArr3[i23] = i29;
                                        i16 = iArr3[i31];
                                        i35 = iMin;
                                        i23 = i31;
                                        i26 = i36;
                                    }
                                    i24 = i28;
                                    i17 = i32;
                                    i25 = i35;
                                }
                            }
                        }
                    }
                }
                return sVar;
            default:
                sVar = aVar.f4686o;
                sVar.f2426b = 0;
                int iF = aVar.f();
                int i40 = aVar.f4675c;
                int i41 = aVar.f4676d;
                if (iF < i40) {
                    if (iF != 0) {
                        if (i41 > iF) {
                            i41 = iF;
                        }
                    }
                    return sVar;
                }
                iF = i40;
                int i42 = aVar.f4679g;
                di.b bVar2 = aVar.f4684m;
                byte[] bArr2 = aVar.f4677e;
                bVar2.a(i42, bArr2);
                int i43 = aVar.f4689s;
                int i44 = i43 - bVar2.f4692b[bVar2.f4696f];
                int i45 = i43 - bVar2.f4693c[bVar2.f4697g];
                int i46 = bVar2.f4694d[bVar2.f4698h];
                bVar2.b(i43);
                int i47 = aVar.r;
                int[] iArr4 = aVar.f4685n;
                iArr4[i47] = i46;
                int[] iArr5 = (int[]) sVar.f2428d;
                int[] iArr6 = (int[]) sVar.f2427c;
                int i48 = aVar.f4688q;
                if (i44 < i48) {
                    int i49 = aVar.f4679g;
                    if (bArr2[i49 - i44] == bArr2[i49]) {
                        iA2 = 2;
                        iArr6[0] = 2;
                        iArr5[0] = i44 - 1;
                        sVar.f2426b = 1;
                    } else {
                        iA2 = 0;
                    }
                    if (i44 != i45 && i45 < i48) {
                        int i50 = aVar.f4679g;
                        if (bArr2[i50 - i45] == bArr2[i50]) {
                            int i51 = sVar.f2426b;
                            sVar.f2426b = i51 + 1;
                            iArr5[i51] = i45 - 1;
                            i44 = i45;
                            iA2 = 3;
                        }
                    }
                    if (sVar.f2426b > 0) {
                        iA2 = com.bumptech.glide.d.A(bArr2, aVar.f4679g, i44, iA2, iF);
                        iArr6[sVar.f2426b - 1] = iA2;
                        if (iA2 < i41) {
                            int i52 = iA2 < 3 ? 3 : iA2;
                            int i53 = aVar.f4687p;
                            while (true) {
                                int i54 = aVar.f4689s - i46;
                                int i55 = i53 - 1;
                                if (i53 != 0 && i54 < i48) {
                                    int i56 = aVar.r;
                                    i46 = iArr4[(i56 - i54) + (i54 > i56 ? i48 : 0)];
                                    int i57 = aVar.f4679g;
                                    int i58 = i57 + i52;
                                    if (bArr2[i58 - i54] == bArr2[i58] && bArr2[i57 - i54] == bArr2[i57]) {
                                        int iA3 = com.bumptech.glide.d.A(bArr2, i57, i54, 1, iF);
                                        if (iA3 > i52) {
                                            int i59 = sVar.f2426b;
                                            iArr6[i59] = iA3;
                                            iArr5[i59] = i54 - 1;
                                            sVar.f2426b = i59 + 1;
                                            if (iA3 < i41) {
                                                i52 = iA3;
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                    i53 = i55;
                                }
                            }
                        }
                    }
                }
                return sVar;
        }
    }

    public abstract int j();

    public final void k(int i10) {
        this.z += i10;
        this.f5027n.j(i10);
    }
}
