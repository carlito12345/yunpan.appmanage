package ei;

import androidx.room.s;
import com.hsae.autosdk.source.SourceConst;
import ta.q;

/* loaded from: classes3.dex */
public final class j extends h {
    public final k[] B;
    public int C;
    public int D;
    public s E;
    public final int[] F;
    public final androidx.leanback.widget.i G;

    public j(fi.d dVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, yh.b bVar) {
        di.a aVar;
        int iMax = Math.max(i14, 4096);
        if (i16 == 4) {
            aVar = new di.a(i13, iMax, 4096, i15, i17, bVar, 1);
        } else {
            if (i16 != 20) {
                throw new IllegalArgumentException();
            }
            aVar = new di.a(i13, iMax, 4096, i15, i17, bVar, 0);
        }
        super(dVar, aVar, i10, i11, i12, i13, i15);
        this.B = new k[4096];
        this.C = 0;
        this.D = 0;
        this.F = new int[4];
        this.G = new androidx.leanback.widget.i(1);
        for (int i18 = 0; i18 < 4096; i18++) {
            this.B[i18] = new k();
        }
    }

    @Override // ei.h, ei.b
    public final void a() {
        this.C = 0;
        this.D = 0;
        super.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x076d A[SYNTHETIC] */
    @Override // ei.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int j() {
        int[] iArr;
        byte[] bArr;
        int[] iArr2;
        int i10;
        short[][] sArr;
        int i11;
        short[] sArr2;
        di.a aVar;
        short[] sArr3;
        int[][] iArr3;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z;
        boolean z4;
        byte[] bArr2;
        int i18;
        int i19;
        s sVar;
        int[] iArr4;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        androidx.leanback.widget.i iVar;
        int i25;
        int[][] iArr5;
        int[][] iArr6;
        int i26;
        int i27 = this.C;
        int i28 = this.D;
        k[] kVarArr = this.B;
        if (i27 < i28) {
            int i29 = kVarArr[i27].f5041d;
            int i30 = i29 - i27;
            this.C = i29;
            this.f5037y = kVarArr[i29].f5042e;
            return i30;
        }
        this.C = 0;
        this.D = 0;
        this.f5037y = -1;
        if (this.z == -1) {
            this.E = i();
        }
        di.a aVar2 = this.f5027n;
        int iMin = Math.min(aVar2.f4682j - aVar2.f4679g, SourceConst.IOCTL_AM_VOLUME);
        if (iMin < 2) {
            return 1;
        }
        int i31 = 0;
        int i32 = 0;
        while (true) {
            iArr = this.f5002b;
            bArr = aVar2.f4677e;
            iArr2 = this.F;
            if (i31 >= 4) {
                break;
            }
            int iA = com.bumptech.glide.d.A(bArr, aVar2.f4679g, iArr[i31] + 1, 0, iMin);
            iArr2[i31] = iA;
            if (iA < 2) {
                iArr2[i31] = 0;
            } else if (iA > iArr2[i32]) {
                i32 = i31;
            }
            i31++;
        }
        int i33 = iArr2[i32];
        int i34 = this.r;
        if (i33 >= i34) {
            this.f5037y = i32;
            k(i33 - 1);
            return iArr2[i32];
        }
        s sVar2 = this.E;
        int i35 = sVar2.f2426b;
        if (i35 > 0) {
            int i36 = i35 - 1;
            i10 = ((int[]) sVar2.f2427c)[i36];
            int i37 = ((int[]) sVar2.f2428d)[i36];
            if (i10 >= i34) {
                this.f5037y = i37 + 4;
                k(i10 - 1);
                return i10;
            }
        } else {
            i10 = 0;
        }
        int iB = aVar2.b(0);
        int iB2 = aVar2.b(iArr[0] + 1);
        if (i10 < 2 && iB != iB2 && iArr2[i32] < 2) {
            return 1;
        }
        int i38 = aVar2.f4679g;
        int i39 = this.f5001a;
        int i40 = i38 & i39;
        int iB3 = aVar2.b(1);
        e eVar = this.f5028o;
        androidx.leanback.widget.i iVar2 = this.f5003c;
        int i41 = i38;
        byte[] bArr3 = bArr;
        kVarArr[1].a(eVar.a(iB, iB2, iB3, i38, iVar2), 0, -1);
        int i42 = iVar2.f1647b;
        short[][] sArr4 = this.f5004d;
        int iQ0 = fi.d.q0(sArr4[i42][i40], 1);
        int i43 = iVar2.f1647b;
        short[] sArr5 = this.f5005e;
        int iQ02 = fi.d.q0(sArr5[i43], 1) + iQ0;
        short[][] sArr6 = this.f5009i;
        int i44 = i34;
        short[] sArr7 = this.f5006f;
        if (iB2 == iB) {
            sArr = sArr6;
            int iQ03 = fi.d.q0(sArr6[iVar2.f1647b][i40], 0) + fi.d.q0(sArr7[iVar2.f1647b], 0) + iQ02;
            k kVar = kVarArr[1];
            if (iQ03 < kVar.f5040c) {
                kVar.a(iQ03, 0, 0);
            }
        } else {
            sArr = sArr6;
        }
        int iMax = Math.max(i10, iArr2[i32]);
        this.D = iMax;
        if (iMax < 2) {
            this.f5037y = kVarArr[1].f5042e;
            return 1;
        }
        if (this.f5031s <= 0) {
            this.f5031s = 128;
            int i45 = 0;
            while (true) {
                iArr5 = this.f5035w;
                iArr6 = this.f5034v;
                if (i45 >= 4) {
                    break;
                }
                short[] sArr8 = sArr7;
                int i46 = 0;
                while (true) {
                    i26 = this.f5033u;
                    if (i46 >= i26) {
                        break;
                    }
                    iArr6[i45][i46] = fi.d.r0(this.f5010j[i45], i46);
                    i46++;
                    aVar2 = aVar2;
                }
                di.a aVar3 = aVar2;
                int i47 = 1;
                int i48 = 14;
                while (i48 < i26) {
                    int[] iArr7 = iArr6[i45];
                    int i49 = iArr7[i48];
                    int[] iArr8 = fi.d.f5899p;
                    iArr7[i48] = i49 + (((i48 >>> 1) - 5) << 4);
                    i47 = 1;
                    i48++;
                    i26 = i26;
                }
                int i50 = 0;
                for (int i51 = 4; i50 < i51; i51 = 4) {
                    iArr5[i45][i50] = iArr6[i45][i50];
                    i50 += i47;
                }
                i45 += i47;
                sArr7 = sArr8;
                aVar2 = aVar3;
            }
            aVar = aVar2;
            sArr3 = sArr7;
            int i52 = 4;
            int i53 = 4;
            while (i52 < 14) {
                int i54 = ((i52 & 1) | 2) << ((i52 >>> 1) - 1);
                int i55 = i52 - 4;
                short[][] sArr9 = this.f5011k;
                int i56 = i53;
                int length = sArr9[i55].length;
                int i57 = iQ0;
                int i58 = 0;
                while (i58 < length) {
                    int i59 = i56 - i54;
                    int i60 = i54;
                    short[] sArr10 = sArr9[i55];
                    int i61 = length;
                    int length2 = i59 | sArr10.length;
                    short[] sArr11 = sArr5;
                    short[][] sArr12 = sArr9;
                    int i62 = 1;
                    int iQ04 = 0;
                    int i63 = 1;
                    do {
                        int i64 = length2 & 1;
                        length2 >>>= i62;
                        iQ04 = fi.d.q0(sArr10[i63], i64) + iQ04;
                        i62 = 1;
                        i63 = (i63 << 1) | i64;
                    } while (length2 != 1);
                    for (int i65 = 0; i65 < 4; i65++) {
                        iArr5[i65][i56] = iArr6[i65][i52] + iQ04;
                    }
                    i56++;
                    i58++;
                    i54 = i60;
                    length = i61;
                    sArr9 = sArr12;
                    sArr5 = sArr11;
                }
                i52++;
                i53 = i56;
                iQ0 = i57;
            }
            i11 = iQ0;
            sArr2 = sArr5;
        } else {
            i11 = iQ0;
            sArr2 = sArr5;
            aVar = aVar2;
            sArr3 = sArr7;
        }
        if (this.f5032t <= 0) {
            this.f5032t = 16;
            for (int i66 = 0; i66 < 16; i66++) {
                short[] sArr13 = this.l;
                int length3 = sArr13.length | i66;
                int iQ05 = 0;
                int i67 = 1;
                while (true) {
                    int i68 = length3 & 1;
                    length3 >>>= 1;
                    iQ05 += fi.d.q0(sArr13[i67], i68);
                    int i69 = i68 | (i67 << 1);
                    if (length3 == 1) {
                        break;
                    }
                    i67 = i69;
                }
                this.f5036x[i66] = iQ05;
            }
        }
        this.f5029p.c();
        g gVar = this.f5030q;
        gVar.c();
        k kVar2 = kVarArr[0];
        kVar2.f5038a.f1647b = iVar2.f1647b;
        System.arraycopy(iArr, 0, kVar2.f5039b, 0, 4);
        for (int i70 = this.D; i70 >= 2; i70--) {
            kVarArr[i70].f5040c = 1073741824;
        }
        int i71 = 0;
        while (true) {
            iArr3 = gVar.f5024f;
            if (i71 >= 4) {
                break;
            }
            int i72 = iArr2[i71];
            if (i72 >= 2) {
                int iG = g(iQ02, i71, iVar2, i40);
                do {
                    int i73 = iArr3[i40][i72 - 2] + iG;
                    k kVar3 = kVarArr[i72];
                    if (i73 < kVar3.f5040c) {
                        kVar3.a(i73, 0, i71);
                    }
                    i72--;
                } while (i72 >= 2);
            }
            i71++;
        }
        int iMax2 = Math.max(iArr2[0] + 1, 2);
        if (iMax2 <= i10) {
            int iQ06 = fi.d.q0(sArr2[iVar2.f1647b], 0) + i11;
            int i74 = 0;
            while (iMax2 > ((int[]) this.E.f2427c)[i74]) {
                i74++;
            }
            while (true) {
                int i75 = ((int[]) this.E.f2428d)[i74];
                int iH = h(iQ06, i75, iMax2, i40);
                k kVar4 = kVarArr[iMax2];
                if (iH < kVar4.f5040c) {
                    kVar4.a(iH, 0, i75 + 4);
                }
                s sVar3 = this.E;
                if (iMax2 == ((int[]) sVar3.f2427c)[i74]) {
                    i12 = 1;
                    i74++;
                    if (i74 == sVar3.f2426b) {
                        break;
                    }
                } else {
                    i12 = 1;
                }
                iMax2 += i12;
            }
        } else {
            i12 = 1;
        }
        di.a aVar4 = aVar;
        int iMin2 = Math.min(aVar4.f4682j - aVar4.f4679g, 4095);
        while (true) {
            int i76 = this.C + i12;
            this.C = i76;
            if (i76 >= this.D) {
                break;
            }
            s sVarI = i();
            this.E = sVarI;
            int i77 = sVarI.f2426b;
            if (i77 > 0) {
                int i78 = ((int[]) sVarI.f2427c)[i77 - i12];
                i13 = i44;
                if (i78 >= i13) {
                    break;
                }
            } else {
                i13 = i44;
            }
            int i79 = iMin2 - 1;
            int i80 = i41 + 1;
            int i81 = i80 & i39;
            k kVar5 = kVarArr[this.C];
            int i82 = kVar5.f5041d;
            boolean z10 = kVar5.f5043f;
            androidx.leanback.widget.i iVar3 = kVar5.f5038a;
            if (z10) {
                i82--;
                if (kVar5.f5044g) {
                    iVar3.f1647b = kVarArr[kVar5.f5045h].f5038a.f1647b;
                    if (kVar5.f5046i < 4) {
                        iVar3.l();
                    } else {
                        iVar3.m();
                    }
                } else {
                    iVar3.f1647b = kVarArr[i82].f5038a.f1647b;
                }
                kVarArr[this.C].f5038a.k();
            } else {
                iVar3.f1647b = kVarArr[i82].f5038a.f1647b;
            }
            int i83 = this.C;
            if (i82 == i83 - 1) {
                k kVar6 = kVarArr[i83];
                int i84 = kVar6.f5042e;
                androidx.leanback.widget.i iVar4 = kVar6.f5038a;
                if (i84 == 0) {
                    iVar4.f1647b = iVar4.f1647b < 7 ? 9 : 11;
                } else {
                    iVar4.k();
                }
                System.arraycopy(kVarArr[i82].f5039b, 0, kVarArr[this.C].f5039b, 0, 4);
                i16 = 1;
            } else {
                k kVar7 = kVarArr[i83];
                boolean z11 = kVar7.f5043f;
                androidx.leanback.widget.i iVar5 = kVar7.f5038a;
                if (z11 && kVar7.f5044g) {
                    i82 = kVar7.f5045h;
                    i14 = kVar7.f5046i;
                    iVar5.l();
                    i15 = 4;
                } else {
                    i14 = kVar7.f5042e;
                    i15 = 4;
                    if (i14 < 4) {
                        iVar5.l();
                    } else {
                        iVar5.m();
                    }
                }
                if (i14 < i15) {
                    kVarArr[this.C].f5039b[0] = kVarArr[i82].f5039b[i14];
                    int i85 = 1;
                    while (i85 <= i14) {
                        kVarArr[this.C].f5039b[i85] = kVarArr[i82].f5039b[i85 - 1];
                        i85++;
                    }
                    i16 = 1;
                    while (i85 < 4) {
                        kVarArr[this.C].f5039b[i85] = kVarArr[i82].f5039b[i85];
                        i85++;
                    }
                } else {
                    i16 = 1;
                    int[] iArr9 = kVarArr[this.C].f5039b;
                    iArr9[0] = i14 - 4;
                    System.arraycopy(kVarArr[i82].f5039b, 0, iArr9, 1, 3);
                }
            }
            k kVar8 = kVarArr[this.C];
            int iQ07 = fi.d.q0(sArr4[kVar8.f5038a.f1647b][i81], i16) + kVar8.f5040c;
            int iQ08 = fi.d.q0(sArr2[kVarArr[this.C].f5038a.f1647b], i16) + iQ07;
            int iB4 = aVar4.b(0);
            int iB5 = aVar4.b(kVarArr[this.C].f5039b[0] + i16);
            int i86 = iQ08;
            int iA2 = kVarArr[this.C].f5040c + this.f5028o.a(iB4, iB5, aVar4.b(i16), i80, kVarArr[this.C].f5038a);
            int i87 = this.C;
            k kVar9 = kVarArr[i87 + 1];
            if (iA2 < kVar9.f5040c) {
                kVar9.a(iA2, i87, -1);
                i17 = iB5;
                z = true;
            } else {
                i17 = iB5;
                z = false;
            }
            if (i17 == iB4) {
                int i88 = this.C;
                k kVar10 = kVarArr[i88 + 1];
                if (kVar10.f5041d == i88 || kVar10.f5042e != 0) {
                    androidx.leanback.widget.i iVar6 = kVarArr[i88].f5038a;
                    int iQ09 = fi.d.q0(sArr[iVar6.f1647b][i81], 0) + fi.d.q0(sArr3[iVar6.f1647b], 0) + i86;
                    int i89 = this.C;
                    k kVar11 = kVarArr[i89 + 1];
                    z4 = z;
                    if (iQ09 <= kVar11.f5040c) {
                        kVar11.a(iQ09, i89, 0);
                        z4 = true;
                    }
                } else {
                    z4 = z;
                }
            }
            androidx.leanback.widget.i iVar7 = this.G;
            if (z4 || i17 == iB4 || i79 <= 2) {
                bArr2 = bArr3;
            } else {
                bArr2 = bArr3;
                int iA3 = com.bumptech.glide.d.A(bArr2, aVar4.f4679g + 1, kVarArr[this.C].f5039b[0] + 1, 0, Math.min(i13, iMin2 - 2));
                if (iA3 >= 2) {
                    androidx.leanback.widget.i iVar8 = kVarArr[this.C].f5038a;
                    iVar7.getClass();
                    iVar7.f1647b = iVar8.f1647b;
                    iVar7.k();
                    int iF = f(iA3, iVar7, (i41 + 2) & i39) + iA2;
                    int i90 = 1;
                    int i91 = this.C + 1 + iA3;
                    while (true) {
                        int i92 = this.D;
                        if (i92 >= i91) {
                            break;
                        }
                        int i93 = i92 + i90;
                        this.D = i93;
                        kVarArr[i93].f5040c = 1073741824;
                        i90 = 1;
                    }
                    k kVar12 = kVarArr[i91];
                    if (iF < kVar12.f5040c) {
                        int i94 = this.C;
                        kVar12.f5040c = iF;
                        kVar12.f5041d = i94 + 1;
                        kVar12.f5042e = 0;
                        kVar12.f5043f = true;
                        kVar12.f5044g = false;
                    }
                }
            }
            if (i79 >= 2) {
                int iMin3 = Math.min(i79, i13);
                int i95 = 2;
                int i96 = 0;
                while (i96 < 4) {
                    int iA4 = com.bumptech.glide.d.A(bArr2, aVar4.f4679g, kVarArr[this.C].f5039b[i96] + 1, 0, iMin3);
                    if (iA4 < 2) {
                        i22 = iMin3;
                        iVar = iVar7;
                        i23 = i86;
                        i25 = 1;
                    } else {
                        while (true) {
                            int i97 = this.D;
                            i21 = this.C;
                            i22 = iMin3;
                            if (i97 >= i21 + iA4) {
                                break;
                            }
                            int i98 = i97 + 1;
                            this.D = i98;
                            kVarArr[i98].f5040c = 1073741824;
                            iMin3 = i22;
                        }
                        int iG2 = g(i86, i96, kVarArr[i21].f5038a, i81);
                        int i99 = iA4;
                        while (i99 >= 2) {
                            int i100 = iArr3[i81][i99 - 2] + iG2;
                            int i101 = i86;
                            int i102 = this.C;
                            int i103 = i95;
                            k kVar13 = kVarArr[i102 + i99];
                            androidx.leanback.widget.i iVar9 = iVar7;
                            if (i100 < kVar13.f5040c) {
                                kVar13.a(i100, i102, i96);
                            }
                            i99--;
                            i86 = i101;
                            iVar7 = iVar9;
                            i95 = i103;
                        }
                        androidx.leanback.widget.i iVar10 = iVar7;
                        i23 = i86;
                        int i104 = i96 == 0 ? iA4 + 1 : i95;
                        int i105 = (i79 - iA4) - 1;
                        if (i105 < 2) {
                            i24 = i104;
                        } else {
                            if (i105 > i13) {
                                i105 = i13;
                            }
                            i24 = i104;
                            int iA5 = com.bumptech.glide.d.A(bArr2, aVar4.f4679g + iA4 + 1, kVarArr[this.C].f5039b[i96] + 1, 0, i105);
                            if (iA5 >= 2) {
                                int i106 = iArr3[i81][iA4 - 2] + iG2;
                                androidx.leanback.widget.i iVar11 = kVarArr[this.C].f5038a;
                                iVar10.getClass();
                                iVar = iVar10;
                                iVar.f1647b = iVar11.f1647b;
                                iVar.l();
                                int i107 = i80 + iA4;
                                int iA6 = i106 + this.f5028o.a(aVar4.c(iA4, 0), aVar4.b(0), aVar4.c(iA4, 1), i107, this.G);
                                iVar.k();
                                int i108 = 1;
                                int iF2 = f(iA5, iVar, (i107 + 1) & i39) + iA6;
                                int iX = q.x(this.C, iA4, 1, iA5);
                                while (true) {
                                    int i109 = this.D;
                                    if (i109 >= iX) {
                                        break;
                                    }
                                    int i110 = i109 + i108;
                                    this.D = i110;
                                    kVarArr[i110].f5040c = 1073741824;
                                    i108 = 1;
                                }
                                k kVar14 = kVarArr[iX];
                                if (iF2 < kVar14.f5040c) {
                                    int i111 = this.C;
                                    kVar14.f5040c = iF2;
                                    i25 = 1;
                                    kVar14.f5041d = iA4 + i111 + 1;
                                    kVar14.f5042e = 0;
                                    kVar14.f5043f = true;
                                    kVar14.f5044g = true;
                                    kVar14.f5045h = i111;
                                    kVar14.f5046i = i96;
                                }
                                i95 = i24;
                            }
                            i25 = 1;
                            i95 = i24;
                        }
                        iVar = iVar10;
                        i25 = 1;
                        i95 = i24;
                    }
                    i96 += i25;
                    iVar7 = iVar;
                    iMin3 = i22;
                    i86 = i23;
                }
                int i112 = i95;
                androidx.leanback.widget.i iVar12 = iVar7;
                int i113 = 1;
                s sVar4 = this.E;
                int i114 = sVar4.f2426b;
                if (i114 > 0) {
                    if (((int[]) sVar4.f2427c)[i114 - 1] > i79) {
                        sVar4.f2426b = 0;
                        while (true) {
                            sVar = this.E;
                            iArr4 = (int[]) sVar.f2427c;
                            i20 = sVar.f2426b;
                            if (iArr4[i20] >= i79) {
                                break;
                            }
                            sVar.f2426b = i20 + 1;
                        }
                        sVar.f2426b = i20 + 1;
                        iArr4[i20] = i79;
                    }
                    s sVar5 = this.E;
                    int i115 = i112;
                    if (((int[]) sVar5.f2427c)[sVar5.f2426b - 1] >= i115) {
                        while (true) {
                            int i116 = this.D;
                            i18 = this.C;
                            s sVar6 = this.E;
                            if (i116 >= ((int[]) sVar6.f2427c)[sVar6.f2426b - i113] + i18) {
                                break;
                            }
                            int i117 = i116 + i113;
                            this.D = i117;
                            kVarArr[i117].f5040c = 1073741824;
                            i113 = 1;
                        }
                        int iQ010 = fi.d.q0(sArr2[kVarArr[i18].f5038a.f1647b], 0) + iQ07;
                        int i118 = 0;
                        while (i115 > ((int[]) this.E.f2427c)[i118]) {
                            i118++;
                        }
                        while (true) {
                            int i119 = ((int[]) this.E.f2428d)[i118];
                            int iH2 = h(iQ010, i119, i115, i81);
                            int i120 = this.C;
                            k kVar15 = kVarArr[i120 + i115];
                            int i121 = iQ010;
                            int i122 = i81;
                            if (iH2 < kVar15.f5040c) {
                                kVar15.a(iH2, i120, i119 + 4);
                            }
                            if (i115 != ((int[]) this.E.f2427c)[i118]) {
                                i19 = 1;
                            } else {
                                int i123 = (i79 - i115) - 1;
                                if (i123 >= 2) {
                                    if (i123 > i13) {
                                        i123 = i13;
                                    }
                                    int iA7 = com.bumptech.glide.d.A(bArr2, aVar4.f4679g + i115 + 1, i119 + 1, 0, i123);
                                    if (iA7 >= 2) {
                                        androidx.leanback.widget.i iVar13 = kVarArr[this.C].f5038a;
                                        iVar12.getClass();
                                        iVar12.f1647b = iVar13.f1647b;
                                        iVar12.m();
                                        int i124 = i80 + i115;
                                        int iA8 = iH2 + this.f5028o.a(aVar4.c(i115, 0), aVar4.b(0), aVar4.c(i115, 1), i124, this.G);
                                        iVar12.k();
                                        int i125 = 1;
                                        int iF3 = f(iA7, iVar12, (i124 + 1) & i39) + iA8;
                                        int iX2 = q.x(this.C, i115, 1, iA7);
                                        while (true) {
                                            int i126 = this.D;
                                            if (i126 >= iX2) {
                                                break;
                                            }
                                            int i127 = i126 + i125;
                                            this.D = i127;
                                            kVarArr[i127].f5040c = 1073741824;
                                            i125 = 1;
                                        }
                                        k kVar16 = kVarArr[iX2];
                                        if (iF3 < kVar16.f5040c) {
                                            int i128 = this.C;
                                            kVar16.f5040c = iF3;
                                            i19 = 1;
                                            kVar16.f5041d = i128 + i115 + 1;
                                            kVar16.f5042e = 0;
                                            kVar16.f5043f = true;
                                            kVar16.f5044g = true;
                                            kVar16.f5045h = i128;
                                            kVar16.f5046i = i119 + 4;
                                        }
                                        i118 += i19;
                                        if (i118 != this.E.f2426b) {
                                            break;
                                        }
                                    }
                                }
                                i19 = 1;
                                i118 += i19;
                                if (i118 != this.E.f2426b) {
                                }
                            }
                            i115 += i19;
                            iQ010 = i121;
                            i81 = i122;
                        }
                    }
                }
            }
            i44 = i13;
            iMin2 = i79;
            bArr3 = bArr2;
            i41 = i80;
            i12 = 1;
        }
        int i129 = this.C;
        this.D = i129;
        int i130 = kVarArr[i129].f5041d;
        while (true) {
            int i131 = this.C;
            k kVar17 = kVarArr[i131];
            if (kVar17.f5043f) {
                k kVar18 = kVarArr[i130];
                kVar18.f5041d = i131;
                kVar18.f5042e = -1;
                int i132 = i130 - 1;
                this.C = i130;
                if (kVar17.f5044g) {
                    k kVar19 = kVarArr[i132];
                    kVar19.f5041d = i130;
                    kVar19.f5042e = kVar17.f5046i;
                    this.C = i132;
                    i130 = kVar17.f5045h;
                } else {
                    i130 = i132;
                }
            }
            k kVar20 = kVarArr[i130];
            int i133 = kVar20.f5041d;
            kVar20.f5041d = this.C;
            this.C = i130;
            if (i130 <= 0) {
                int i134 = kVarArr[0].f5041d;
                this.C = i134;
                this.f5037y = kVarArr[i134].f5042e;
                return i134;
            }
            i130 = i133;
        }
    }
}
