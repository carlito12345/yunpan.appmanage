package ng;

import java.util.BitSet;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: m, reason: collision with root package name */
    public static final int f11423m = Math.max(1000, 100);

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f11424n = {1, 4, 13, 40, 121, 364, 1093, 3280, 9841, 29524, 88573, 265720, 797161, 2391484};

    /* renamed from: a, reason: collision with root package name */
    public int f11425a;

    /* renamed from: b, reason: collision with root package name */
    public int f11426b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11427c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f11428d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f11429e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f11430f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f11431g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f11432h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean[] f11433i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f11434j;

    /* renamed from: k, reason: collision with root package name */
    public final char[] f11435k;
    public int[] l;

    public e(c cVar) {
        int i10 = f11423m;
        this.f11428d = new int[i10];
        this.f11429e = new int[i10];
        this.f11430f = new int[1000];
        this.f11431g = new int[256];
        this.f11432h = new int[256];
        this.f11433i = new boolean[256];
        this.f11434j = new int[65537];
        this.f11435k = cVar.f11409s;
    }

    public final void a(c cVar, int i10) {
        int i11;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        e eVar = this;
        byte[] bArr = cVar.f11408q;
        int i20 = i10 + 1;
        int i21 = 0;
        bArr[0] = bArr[i20];
        int[] iArr2 = new int[257];
        if (eVar.l == null) {
            eVar.l = new int[eVar.f11435k.length / 2];
        }
        int[] iArr3 = eVar.l;
        for (int i22 = 0; i22 < i20; i22++) {
            iArr3[i22] = 0;
        }
        int i23 = 0;
        while (true) {
            i11 = 1;
            if (i23 >= i20) {
                break;
            }
            int i24 = bArr[i23] & 255;
            iArr2[i24] = iArr2[i24] + 1;
            i23++;
        }
        for (int i25 = 1; i25 < 257; i25++) {
            iArr2[i25] = iArr2[i25] + iArr2[i25 - 1];
        }
        int i26 = 0;
        while (true) {
            iArr = cVar.r;
            if (i26 >= i20) {
                break;
            }
            int i27 = bArr[i26] & 255;
            int i28 = iArr2[i27] - 1;
            iArr2[i27] = i28;
            iArr[i28] = i26;
            i26++;
        }
        BitSet bitSet = new BitSet(i10 + 65);
        for (int i29 = 0; i29 < 256; i29++) {
            bitSet.set(iArr2[i29]);
        }
        for (int i30 = 0; i30 < 32; i30++) {
            int i31 = (i30 * 2) + i20;
            bitSet.set(i31);
            bitSet.clear(i31 + 1);
        }
        int i32 = 1;
        do {
            int i33 = 0;
            for (int i34 = 0; i34 < i20; i34++) {
                if (bitSet.get(i34)) {
                    i33 = i34;
                }
                int i35 = iArr[i34] - i32;
                if (i35 < 0) {
                    i35 += i20;
                }
                iArr3[i35] = i33;
            }
            i12 = -1;
            int iNextSetBit = -1;
            i13 = 0;
            while (true) {
                int iNextClearBit = bitSet.nextClearBit(iNextSetBit + i11);
                int i36 = iNextClearBit - 1;
                if (i36 >= i20 || (iNextSetBit = bitSet.nextSetBit(iNextClearBit + 1) - i11) >= i20) {
                    break;
                }
                if (iNextSetBit > i36) {
                    int i37 = i13 + (iNextSetBit - i36) + i11;
                    int[] iArr4 = eVar.f11428d;
                    iArr4[i21] = i36;
                    int[] iArr5 = eVar.f11429e;
                    iArr5[i21] = iNextSetBit;
                    int i38 = 1;
                    long j10 = 0;
                    while (i38 > 0) {
                        int i39 = i38 - 1;
                        int[] iArr6 = {iArr4[i39], iArr5[i39]};
                        int i40 = iArr6[i21];
                        int i41 = iArr6[i11];
                        int i42 = i41 - i40;
                        if (i42 < 10) {
                            if (i40 == i41) {
                                i17 = i32;
                            } else {
                                if (i42 > 3) {
                                    int i43 = i41 - 4;
                                    while (i43 >= i40) {
                                        int i44 = iArr[i43];
                                        int i45 = iArr3[i44];
                                        int i46 = i43 + 4;
                                        while (true) {
                                            if (i46 > i41) {
                                                i19 = i32;
                                                break;
                                            }
                                            int i47 = iArr[i46];
                                            i19 = i32;
                                            if (i45 > iArr3[i47]) {
                                                iArr[i46 - 4] = i47;
                                                i46 += 4;
                                                i32 = i19;
                                            }
                                        }
                                        iArr[i46 - 4] = i44;
                                        i43--;
                                        i32 = i19;
                                    }
                                }
                                i17 = i32;
                                int i48 = i41 - 1;
                                while (i48 >= i40) {
                                    int i49 = iArr[i48];
                                    int i50 = iArr3[i49];
                                    int i51 = i48 + 1;
                                    while (true) {
                                        if (i51 > i41) {
                                            i18 = i20;
                                            break;
                                        }
                                        int i52 = iArr[i51];
                                        i18 = i20;
                                        if (i50 > iArr3[i52]) {
                                            iArr[i51 - 1] = i52;
                                            i51++;
                                            i20 = i18;
                                        }
                                    }
                                    iArr[i51 - 1] = i49;
                                    i48--;
                                    i20 = i18;
                                }
                            }
                            i38 = i39;
                            i32 = i17;
                            i20 = i20;
                        } else {
                            int i53 = i32;
                            int i54 = i20;
                            j10 = ((j10 * 7621) + 1) % 32768;
                            long j11 = j10 % 3;
                            long j12 = j11 == 0 ? iArr3[iArr[i40]] : j11 == 1 ? iArr3[iArr[(i40 + i41) >>> 1]] : iArr3[iArr[i41]];
                            int i55 = i41;
                            int i56 = i55;
                            int i57 = i40;
                            int i58 = i57;
                            while (true) {
                                if (i57 > i55) {
                                    i14 = i55;
                                } else {
                                    int i59 = iArr[i57];
                                    i14 = i55;
                                    int i60 = iArr3[i59] - ((int) j12);
                                    if (i60 == 0) {
                                        iArr[i57] = iArr[i58];
                                        iArr[i58] = i59;
                                        i58++;
                                    } else if (i60 > 0) {
                                    }
                                    i57++;
                                    i55 = i14;
                                }
                                i15 = i14;
                                while (true) {
                                    if (i57 > i15) {
                                        i16 = i37;
                                        break;
                                    }
                                    int i61 = iArr[i15];
                                    i16 = i37;
                                    int i62 = iArr3[i61] - ((int) j12);
                                    if (i62 != 0) {
                                        if (i62 < 0) {
                                            break;
                                        }
                                    } else {
                                        iArr[i15] = iArr[i56];
                                        iArr[i56] = i61;
                                        i56--;
                                    }
                                    i15--;
                                    i37 = i16;
                                }
                                if (i57 > i15) {
                                    break;
                                }
                                int i63 = iArr[i57];
                                iArr[i57] = iArr[i15];
                                iArr[i15] = i63;
                                i57++;
                                i55 = i15 - 1;
                                i37 = i16;
                            }
                            if (i56 < i58) {
                                i38 = i39;
                            } else {
                                int iMin = Math.min(i58 - i40, i57 - i58);
                                int i64 = i57 - iMin;
                                int i65 = i40;
                                while (iMin > 0) {
                                    int i66 = iArr[i65];
                                    iArr[i65] = iArr[i64];
                                    iArr[i64] = i66;
                                    i65++;
                                    i64++;
                                    iMin--;
                                }
                                int i67 = i41 - i56;
                                int i68 = i56 - i15;
                                int iMin2 = Math.min(i67, i68);
                                int i69 = i15 + 1;
                                int i70 = (i41 - iMin2) + 1;
                                while (iMin2 > 0) {
                                    int i71 = iArr[i69];
                                    iArr[i69] = iArr[i70];
                                    iArr[i70] = i71;
                                    i69++;
                                    i70++;
                                    iMin2--;
                                }
                                int i72 = ((i57 + i40) - i58) - 1;
                                int i73 = (i41 - i68) + 1;
                                if (i72 - i40 > i41 - i73) {
                                    iArr4[i39] = i40;
                                    iArr5[i39] = i72;
                                    iArr4[i38] = i73;
                                    iArr5[i38] = i41;
                                    i38++;
                                } else {
                                    iArr4[i39] = i73;
                                    iArr5[i39] = i41;
                                    iArr4[i38] = i40;
                                    iArr5[i38] = i72;
                                    i38++;
                                }
                            }
                            i32 = i53;
                            i20 = i54;
                            i37 = i16;
                        }
                        i21 = 0;
                        i11 = 1;
                    }
                    int i74 = i32;
                    int i75 = i20;
                    int i76 = i37;
                    int i77 = -1;
                    while (i36 <= iNextSetBit) {
                        int i78 = iArr3[iArr[i36]];
                        if (i77 != i78) {
                            bitSet.set(i36);
                            i77 = i78;
                        }
                        i36++;
                    }
                    eVar = this;
                    i32 = i74;
                    i20 = i75;
                    i13 = i76;
                    i12 = -1;
                    i21 = 0;
                    i11 = 1;
                } else {
                    eVar = this;
                }
            }
            i32 *= 2;
            if (i32 > i20) {
                break;
            }
        } while (i13 != 0);
        for (int i79 = 0; i79 < i20; i79++) {
            iArr[i79] = iArr[i79] - i11;
        }
        while (i21 < i20) {
            if (iArr[i21] == i12) {
                iArr[i21] = i10;
                return;
            }
            i21++;
        }
    }
}
