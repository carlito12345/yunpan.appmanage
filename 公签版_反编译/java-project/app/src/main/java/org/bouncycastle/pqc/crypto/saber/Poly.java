package org.bouncycastle.pqc.crypto.saber;

/* loaded from: classes3.dex */
class Poly {
    private static final int KARATSUBA_N = 64;
    private static int SCHB_N = 16;
    private final int N_RES;
    private final int N_SB;
    private final int N_SB_RES;
    private final int SABER_L;
    private final int SABER_N;
    private final SABEREngine engine;
    private final Utils utils;

    public Poly(SABEREngine sABEREngine) {
        this.engine = sABEREngine;
        this.SABER_L = sABEREngine.getSABER_L();
        int saber_n = sABEREngine.getSABER_N();
        this.SABER_N = saber_n;
        this.N_RES = saber_n << 1;
        this.N_SB = saber_n >> 2;
        this.N_SB_RES = (r0 * 2) - 1;
        this.utils = sABEREngine.getUtils();
    }

    private short OVERFLOWING_MUL(int i10, int i11) {
        return (short) (i10 * i11);
    }

    private void cbd(short[] sArr, byte[] bArr, int i10) {
        int[] iArr = new int[4];
        if (this.engine.getSABER_MU() == 6) {
            for (int i11 = 0; i11 < this.SABER_N / 4; i11++) {
                int iLoad_littleendian = (int) load_littleendian(bArr, (i11 * 3) + i10, 3);
                int i12 = 0;
                for (int i13 = 0; i13 < 3; i13++) {
                    i12 += (iLoad_littleendian >> i13) & 2396745;
                }
                iArr[0] = i12 & 7;
                iArr[1] = (i12 >>> 6) & 7;
                iArr[2] = (i12 >>> 12) & 7;
                iArr[3] = (i12 >>> 18) & 7;
                int i14 = i11 * 4;
                sArr[i14] = (short) (iArr[0] - ((i12 >>> 3) & 7));
                sArr[i14 + 1] = (short) (iArr[1] - ((i12 >>> 9) & 7));
                sArr[i14 + 2] = (short) (iArr[2] - ((i12 >>> 15) & 7));
                sArr[i14 + 3] = (short) (iArr[3] - (i12 >>> 21));
            }
            return;
        }
        char c7 = 15;
        if (this.engine.getSABER_MU() == 8) {
            for (int i15 = 0; i15 < this.SABER_N / 4; i15++) {
                int i16 = i15 * 4;
                int iLoad_littleendian2 = (int) load_littleendian(bArr, i10 + i16, 4);
                int i17 = 0;
                for (int i18 = 0; i18 < 4; i18++) {
                    i17 += (iLoad_littleendian2 >>> i18) & 286331153;
                }
                iArr[0] = i17 & 15;
                iArr[1] = (i17 >>> 8) & 15;
                iArr[2] = (i17 >>> 16) & 15;
                iArr[3] = (i17 >>> 24) & 15;
                sArr[i16] = (short) (iArr[0] - ((i17 >>> 4) & 15));
                sArr[i16 + 1] = (short) (iArr[1] - ((i17 >>> 12) & 15));
                sArr[i16 + 2] = (short) (iArr[2] - ((i17 >>> 20) & 15));
                sArr[i16 + 3] = (short) (iArr[3] - (i17 >>> 28));
            }
            return;
        }
        char c10 = '\n';
        if (this.engine.getSABER_MU() == 10) {
            int i19 = 0;
            while (i19 < this.SABER_N / 4) {
                long jLoad_littleendian = load_littleendian(bArr, (i19 * 5) + i10, 5);
                long j10 = 0;
                for (int i20 = 0; i20 < 5; i20++) {
                    j10 += (jLoad_littleendian >>> i20) & 35468117025L;
                }
                iArr[0] = (int) (j10 & 31);
                iArr[1] = (int) ((j10 >>> c10) & 31);
                iArr[2] = (int) ((j10 >>> 20) & 31);
                iArr[3] = (int) ((j10 >>> 30) & 31);
                int i21 = i19 * 4;
                sArr[i21] = (short) (iArr[0] - ((int) ((j10 >>> 5) & 31)));
                sArr[i21 + 1] = (short) (iArr[1] - ((int) ((j10 >>> c7) & 31)));
                sArr[i21 + 2] = (short) (iArr[2] - ((int) ((j10 >>> 25) & 31)));
                sArr[i21 + 3] = (short) (iArr[3] - ((int) (j10 >>> 35)));
                i19++;
                c10 = '\n';
                c7 = 15;
            }
        }
    }

    private void karatsuba_simple(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = 31;
        int[] iArr4 = new int[31];
        int[] iArr5 = new int[31];
        int[] iArr6 = new int[31];
        int[] iArr7 = new int[63];
        int i11 = 0;
        while (true) {
            if (i11 >= 16) {
                break;
            }
            int i12 = iArr[i11];
            int i13 = iArr[i11 + 16];
            int i14 = iArr[i11 + 32];
            int i15 = iArr[i11 + 48];
            int i16 = 0;
            for (int i17 = 16; i16 < i17; i17 = 16) {
                int i18 = iArr2[i16];
                int i19 = iArr2[i16 + 16];
                int i20 = i11 + i16;
                iArr3[i20] = iArr3[i20] + OVERFLOWING_MUL(i12, i18);
                int i21 = i20 + 32;
                iArr3[i21] = iArr3[i21] + OVERFLOWING_MUL(i13, i19);
                int i22 = i12;
                int[] iArr8 = iArr7;
                iArr4[i20] = (int) (((i18 + i19) * (i12 + i13)) + iArr4[i20]);
                int i23 = iArr2[i16 + 32];
                int i24 = iArr2[i16 + 48];
                int i25 = i20 + 64;
                iArr3[i25] = iArr3[i25] + OVERFLOWING_MUL(i23, i14);
                int i26 = i20 + 96;
                iArr3[i26] = iArr3[i26] + OVERFLOWING_MUL(i24, i15);
                iArr6[i20] = iArr6[i20] + OVERFLOWING_MUL(i14 + i15, i23 + i24);
                int i27 = i18 + i23;
                int i28 = i22 + i14;
                iArr8[i20] = iArr8[i20] + OVERFLOWING_MUL(i27, i28);
                int i29 = i19 + i24;
                int i30 = i13 + i15;
                iArr8[i21] = iArr8[i21] + OVERFLOWING_MUL(i29, i30);
                iArr5[i20] = iArr5[i20] + OVERFLOWING_MUL(i27 + i29, i28 + i30);
                i16++;
                i12 = i22;
                i11 = i11;
                iArr7 = iArr8;
            }
            i11++;
            i10 = 31;
        }
        int[] iArr9 = iArr7;
        int i31 = 0;
        while (i31 < i10) {
            int i32 = i31 + 32;
            iArr5[i31] = (iArr5[i31] - iArr9[i31]) - iArr9[i32];
            iArr4[i31] = (iArr4[i31] - iArr3[i31]) - iArr3[i32];
            iArr6[i31] = (iArr6[i31] - iArr3[i31 + 64]) - iArr3[i31 + 96];
            i31++;
            i10 = 31;
        }
        for (int i33 = 0; i33 < i10; i33++) {
            int i34 = i33 + 16;
            iArr9[i34] = iArr9[i34] + iArr5[i33];
            iArr3[i34] = iArr3[i34] + iArr4[i33];
            int i35 = i33 + 80;
            iArr3[i35] = iArr3[i35] + iArr6[i33];
        }
        int i36 = 63;
        int i37 = 0;
        while (i37 < i36) {
            iArr9[i37] = (iArr9[i37] - iArr3[i37]) - iArr3[i37 + 64];
            i37++;
            i36 = 63;
        }
        for (int i38 = 0; i38 < i36; i38++) {
            int i39 = i38 + 32;
            iArr3[i39] = iArr3[i39] + iArr9[i38];
        }
    }

    private long load_littleendian(byte[] bArr, int i10, int i11) {
        long j10 = bArr[i10] & 255;
        for (int i12 = 1; i12 < i11; i12++) {
            j10 |= (bArr[i10 + i12] & 255) << (i12 * 8);
        }
        return j10;
    }

    private void poly_mul_acc(short[] sArr, short[] sArr2, short[] sArr3) {
        short[] sArr4 = new short[this.SABER_N * 2];
        toom_cook_4way(sArr, sArr2, sArr4);
        int i10 = this.SABER_N;
        while (true) {
            int i11 = this.SABER_N;
            if (i10 >= i11 * 2) {
                return;
            }
            int i12 = i10 - i11;
            sArr3[i12] = (short) ((sArr4[i10 - i11] - sArr4[i10]) + sArr3[i12]);
            i10++;
        }
    }

    private void toom_cook_4way(short[] sArr, short[] sArr2, short[] sArr3) {
        int i10 = this.N_SB;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i10];
        int[] iArr4 = new int[i10];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        int[] iArr10 = new int[i10];
        int[] iArr11 = new int[i10];
        int[] iArr12 = new int[i10];
        int[] iArr13 = new int[i10];
        int[] iArr14 = new int[i10];
        int i11 = this.N_SB_RES;
        int[] iArr15 = new int[i11];
        int[] iArr16 = new int[i11];
        int[] iArr17 = new int[i11];
        int[] iArr18 = new int[i11];
        int[] iArr19 = new int[i11];
        int[] iArr20 = new int[i11];
        int[] iArr21 = new int[i11];
        int i12 = 0;
        while (true) {
            int i13 = this.N_SB;
            if (i12 >= i13) {
                break;
            }
            short s8 = sArr[i12];
            short s10 = sArr[i12 + i13];
            short s11 = sArr[(i13 * 2) + i12];
            short s12 = sArr[(i13 * 3) + i12];
            int[] iArr22 = iArr14;
            short s13 = (short) (s8 + s11);
            int[] iArr23 = iArr9;
            short s14 = (short) (s10 + s12);
            int[] iArr24 = iArr13;
            iArr3[i12] = (short) (s13 + s14);
            iArr4[i12] = (short) (s13 - s14);
            short s15 = (short) (((s8 << 2) + s11) << 1);
            short s16 = (short) ((s10 << 2) + s12);
            iArr5[i12] = (short) (s15 + s16);
            iArr6[i12] = (short) (s15 - s16);
            iArr2[i12] = (short) ((s12 << 3) + (s11 << 2) + (s10 << 1) + s8);
            iArr7[i12] = s8;
            iArr[i12] = s12;
            i12++;
            iArr14 = iArr22;
            iArr9 = iArr23;
            iArr13 = iArr24;
        }
        int[] iArr25 = iArr14;
        int[] iArr26 = iArr9;
        int[] iArr27 = iArr13;
        int i14 = 0;
        while (true) {
            int i15 = this.N_SB;
            if (i14 >= i15) {
                break;
            }
            short s17 = sArr2[i14];
            short s18 = sArr2[i14 + i15];
            short s19 = sArr2[(i15 * 2) + i14];
            short s20 = sArr2[(i15 * 3) + i14];
            int i16 = s17 + s19;
            int i17 = s18 + s20;
            iArr10[i14] = i16 + i17;
            iArr11[i14] = i16 - i17;
            int i18 = ((s17 << 2) + s19) << 1;
            int i19 = (s18 << 2) + s20;
            iArr12[i14] = i18 + i19;
            iArr27[i14] = i18 - i19;
            iArr26[i14] = (s20 << 3) + (s19 << 2) + (s18 << 1) + s17;
            iArr25[i14] = s17;
            iArr8[i14] = s20;
            i14++;
        }
        karatsuba_simple(iArr, iArr8, iArr15);
        karatsuba_simple(iArr2, iArr26, iArr16);
        karatsuba_simple(iArr3, iArr10, iArr17);
        karatsuba_simple(iArr4, iArr11, iArr18);
        karatsuba_simple(iArr5, iArr12, iArr19);
        karatsuba_simple(iArr6, iArr27, iArr20);
        karatsuba_simple(iArr7, iArr25, iArr21);
        for (int i20 = 0; i20 < this.N_SB_RES; i20++) {
            int i21 = iArr15[i20];
            int i22 = iArr16[i20];
            int i23 = iArr17[i20];
            int i24 = iArr18[i20];
            int i25 = iArr19[i20];
            int i26 = iArr20[i20];
            int i27 = iArr21[i20];
            int i28 = i22 + i25;
            int i29 = i26 - i25;
            int i30 = ((i24 & 65535) - (i23 & 65535)) >>> 1;
            int i31 = i23 + i30;
            int i32 = (i28 - (i31 << 6)) - i31;
            int i33 = (i31 - i27) - i21;
            int i34 = (i33 * 45) + i32;
            int i35 = (((((((i25 - i21) - (i27 << 6)) << 1) + i29) & 65535) - (i33 << 3)) * 43691) >> 3;
            int i36 = (((i34 & 65535) + ((i30 & 65535) << 4)) * 36409) >> 1;
            int i37 = -(i30 + i36);
            int i38 = ((((i36 & 65535) * 30) - ((i29 + i34) & 65535)) * 61167) >> 2;
            int i39 = i33 - i35;
            int i40 = i36 - i38;
            sArr3[i20] = (short) (sArr3[i20] + (i27 & 65535));
            int i41 = i20 + 64;
            sArr3[i41] = (short) (sArr3[i41] + (i38 & 65535));
            int i42 = i20 + 128;
            sArr3[i42] = (short) (sArr3[i42] + (i35 & 65535));
            int i43 = i20 + 192;
            sArr3[i43] = (short) (sArr3[i43] + (i37 & 65535));
            int i44 = i20 + 256;
            sArr3[i44] = (short) (sArr3[i44] + (i39 & 65535));
            int i45 = i20 + 320;
            sArr3[i45] = (short) (sArr3[i45] + (i40 & 65535));
            int i46 = i20 + 384;
            sArr3[i46] = (short) (sArr3[i46] + (i21 & 65535));
        }
    }

    public void GenMatrix(short[][][] sArr, byte[] bArr) {
        int saber_polyvecbytes = this.SABER_L * this.engine.getSABER_POLYVECBYTES();
        byte[] bArr2 = new byte[saber_polyvecbytes];
        SABEREngine sABEREngine = this.engine;
        sABEREngine.symmetric.prf(bArr2, bArr, sABEREngine.getSABER_SEEDBYTES(), saber_polyvecbytes);
        for (int i10 = 0; i10 < this.SABER_L; i10++) {
            this.utils.BS2POLVECq(bArr2, this.engine.getSABER_POLYVECBYTES() * i10, sArr[i10]);
        }
    }

    public void GenSecret(short[][] sArr, byte[] bArr) {
        int saber_polycoinbytes = this.SABER_L * this.engine.getSABER_POLYCOINBYTES();
        byte[] bArr2 = new byte[saber_polycoinbytes];
        SABEREngine sABEREngine = this.engine;
        sABEREngine.symmetric.prf(bArr2, bArr, sABEREngine.getSABER_NOISE_SEEDBYTES(), saber_polycoinbytes);
        for (int i10 = 0; i10 < this.SABER_L; i10++) {
            SABEREngine sABEREngine2 = this.engine;
            if (sABEREngine2.usingEffectiveMasking) {
                for (int i11 = 0; i11 < this.SABER_N / 4; i11++) {
                    int i12 = i11 * 4;
                    sArr[i10][i12] = (short) (((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i10) + i11] & 3) ^ 2) - 2);
                    sArr[i10][i12 + 1] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i10) + i11] >>> 2) & 3) ^ 2) - 2);
                    sArr[i10][i12 + 2] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i10) + i11] >>> 4) & 3) ^ 2) - 2);
                    sArr[i10][i12 + 3] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * i10) + i11] >>> 6) & 3) ^ 2) - 2);
                }
            } else {
                cbd(sArr[i10], bArr2, sABEREngine2.getSABER_POLYCOINBYTES() * i10);
            }
        }
    }

    public void InnerProd(short[][] sArr, short[][] sArr2, short[] sArr3) {
        for (int i10 = 0; i10 < this.SABER_L; i10++) {
            poly_mul_acc(sArr[i10], sArr2[i10], sArr3);
        }
    }

    public void MatrixVectorMul(short[][][] sArr, short[][] sArr2, short[][] sArr3, int i10) {
        for (int i11 = 0; i11 < this.SABER_L; i11++) {
            for (int i12 = 0; i12 < this.SABER_L; i12++) {
                if (i10 == 1) {
                    poly_mul_acc(sArr[i12][i11], sArr2[i12], sArr3[i11]);
                } else {
                    poly_mul_acc(sArr[i11][i12], sArr2[i12], sArr3[i11]);
                }
            }
        }
    }
}
