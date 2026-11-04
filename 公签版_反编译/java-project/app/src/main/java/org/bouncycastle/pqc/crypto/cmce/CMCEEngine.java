package org.bouncycastle.pqc.crypto.cmce;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class CMCEEngine {
    private int COND_BYTES;
    private int GFBITS;
    private int GFMASK;
    private int IRR_BYTES;
    private int PK_NCOLS;
    private int PK_NROWS;
    private int PK_ROW_BYTES;
    private int SYND_BYTES;
    private int SYS_N;
    private int SYS_T;
    private BENES benes;
    private boolean countErrorIndices;
    private final int defaultKeySize;

    /* renamed from: gf, reason: collision with root package name */
    private GF f12286gf;
    private int[] poly;
    private boolean usePadding;
    private boolean usePivots;

    public CMCEEngine(int i10, int i11, int i12, int[] iArr, boolean z, int i13) {
        BENES benes13;
        this.usePivots = z;
        this.SYS_N = i11;
        this.SYS_T = i12;
        this.GFBITS = i10;
        this.poly = iArr;
        this.defaultKeySize = i13;
        this.IRR_BYTES = i12 * 2;
        this.COND_BYTES = ((i10 * 2) - 1) * (1 << (i10 - 4));
        int i14 = i12 * i10;
        this.PK_NROWS = i14;
        int i15 = i11 - i14;
        this.PK_NCOLS = i15;
        this.PK_ROW_BYTES = (i15 + 7) / 8;
        this.SYND_BYTES = (i14 + 7) / 8;
        this.GFMASK = (1 << i10) - 1;
        if (i10 == 12) {
            this.f12286gf = new GF12();
            benes13 = new BENES12(this.SYS_N, this.SYS_T, this.GFBITS);
        } else {
            this.f12286gf = new GF13();
            benes13 = new BENES13(this.SYS_N, this.SYS_T, this.GFBITS);
        }
        this.benes = benes13;
        this.usePadding = this.SYS_T % 8 != 0;
        this.countErrorIndices = (1 << this.GFBITS) > this.SYS_N;
    }

    private void bm(short[] sArr, short[] sArr2) {
        int i10;
        int i11 = this.SYS_T;
        short[] sArr3 = new short[i11 + 1];
        short[] sArr4 = new short[i11 + 1];
        short s8 = 1;
        short[] sArr5 = new short[i11 + 1];
        int i12 = 0;
        for (int i13 = 0; i13 < this.SYS_T + 1; i13++) {
            sArr5[i13] = 0;
            sArr4[i13] = 0;
        }
        sArr4[0] = 1;
        sArr5[1] = 1;
        short s10 = 0;
        short s11 = 0;
        short s12 = 1;
        while (s10 < this.SYS_T * 2) {
            int iGf_mul_ext = 0;
            for (int i14 = 0; i14 <= min(s10, this.SYS_T); i14++) {
                iGf_mul_ext ^= this.f12286gf.gf_mul_ext(sArr4[i14], sArr2[s10 - i14]);
            }
            short sGf_reduce = this.f12286gf.gf_reduce(iGf_mul_ext);
            short s13 = (short) (((short) (((short) (((short) (sGf_reduce - 1)) >> 15)) & s8)) - s8);
            short s14 = (short) (((short) (((short) (((short) (((short) (s10 - (s11 * 2))) >> 15)) & s8)) - s8)) & s13);
            for (int i15 = 0; i15 <= this.SYS_T; i15++) {
                sArr3[i15] = sArr4[i15];
            }
            short sGf_frac = this.f12286gf.gf_frac(s12, sGf_reduce);
            int i16 = 0;
            while (true) {
                i10 = this.SYS_T;
                if (i16 > i10) {
                    break;
                }
                sArr4[i16] = (short) ((this.f12286gf.gf_mul(sGf_frac, sArr5[i16]) & s13) ^ sArr4[i16]);
                i16++;
            }
            int i17 = s14 ^ (-1);
            int i18 = s10 + 1;
            s11 = (short) (((i18 - s11) & s14) | (s11 & i17));
            for (int i19 = i10 - 1; i19 >= 0; i19--) {
                sArr5[i19 + 1] = (short) ((sArr5[i19] & i17) | (sArr3[i19] & s14));
            }
            sArr5[0] = 0;
            s12 = (short) ((i17 & s12) | (sGf_reduce & s14));
            s10 = (short) i18;
            s8 = 1;
        }
        while (true) {
            int i20 = this.SYS_T;
            if (i12 > i20) {
                return;
            }
            sArr[i12] = sArr4[i20 - i12];
            i12++;
        }
    }

    public static void cbrecursion(byte[] bArr, long j10, long j11, short[] sArr, int i10, long j12, long j13, int[] iArr) {
        long j14;
        long j15 = j13;
        long j16 = 1;
        if (j12 == 1) {
            int i11 = (int) (j10 >> 3);
            bArr[i11] = (byte) ((get_q_short(iArr, i10) << ((int) (j10 & 7))) ^ bArr[i11]);
            return;
        }
        if (sArr != null) {
            for (long j17 = 0; j17 < j15; j17++) {
                int i12 = (int) j17;
                iArr[i12] = sArr[(int) (j17 ^ 1)] | ((sArr[i12] ^ 1) << 16);
            }
        } else {
            for (long j18 = 0; j18 < j15; j18++) {
                long j19 = i10;
                iArr[(int) j18] = ((get_q_short(iArr, (int) (j19 + j18)) ^ 1) << 16) | get_q_short(iArr, (int) (j19 + (j18 ^ 1)));
            }
        }
        int i13 = (int) j15;
        int i14 = 0;
        sort32(iArr, 0, i13);
        for (long j20 = 0; j20 < j15; j20++) {
            int i15 = (int) j20;
            int i16 = 65535 & iArr[i15];
            if (j20 >= i16) {
                i15 = i16;
            }
            iArr[(int) (j15 + j20)] = (i16 << 16) | i15;
        }
        for (long j21 = 0; j21 < j15; j21++) {
            iArr[(int) j21] = (int) ((iArr[r11] << 16) | j21);
        }
        sort32(iArr, 0, i13);
        long j22 = 0;
        while (j22 < j15) {
            int i17 = (int) j22;
            iArr[i17] = (iArr[i17] << 16) + (iArr[(int) (j15 + j22)] >> 16);
            j22++;
            i14 = 0;
        }
        sort32(iArr, i14, i13);
        long j23 = 0;
        if (j12 <= 10) {
            while (j23 < j15) {
                int i18 = (int) (j15 + j23);
                iArr[i18] = ((iArr[(int) j23] & 65535) << 10) | (iArr[i18] & 1023);
                j23++;
            }
            long j24 = 1;
            while (j24 < j12 - j16) {
                for (long j25 = 0; j25 < j15; j25 += j16) {
                    iArr[(int) j25] = (int) (((iArr[(int) (j15 + j25)] & (-1024)) << 6) | j25);
                }
                sort32(iArr, 0, i13);
                for (long j26 = 0; j26 < j15; j26++) {
                    int i19 = (int) j26;
                    iArr[i19] = iArr[(int) (j15 + j26)] | (iArr[i19] << 20);
                }
                sort32(iArr, 0, i13);
                for (long j27 = 0; j27 < j15; j27++) {
                    int i20 = iArr[(int) j27];
                    int i21 = 1048575 & i20;
                    int i22 = (int) (j15 + j27);
                    int i23 = (i20 & 1047552) | (iArr[i22] & 1023);
                    if (i21 >= i23) {
                        i21 = i23;
                    }
                    iArr[i22] = i21;
                }
                j24++;
                j16 = 1;
            }
            long j28 = j16;
            for (long j29 = 0; j29 < j15; j29 += j28) {
                int i24 = (int) (j15 + j29);
                iArr[i24] = iArr[i24] & 1023;
            }
        } else {
            while (j23 < j15) {
                int i25 = (int) (j15 + j23);
                iArr[i25] = (iArr[(int) j23] << 16) | (iArr[i25] & 65535);
                j23++;
            }
            long j30 = 1;
            for (long j31 = 1; j30 < j12 - j31; j31 = 1) {
                for (long j32 = 0; j32 < j15; j32++) {
                    iArr[(int) j32] = (int) ((iArr[(int) (j15 + j32)] & (-65536)) | j32);
                }
                sort32(iArr, 0, i13);
                for (long j33 = 0; j33 < j15; j33++) {
                    int i26 = (int) j33;
                    iArr[i26] = (iArr[i26] << 16) | (iArr[(int) (j15 + j33)] & 65535);
                }
                if (j30 < j12 - 2) {
                    for (long j34 = 0; j34 < j15; j34++) {
                        int i27 = (int) (j15 + j34);
                        iArr[i27] = (iArr[(int) j34] & (-65536)) | (iArr[i27] >> 16);
                    }
                    sort32(iArr, i13, (int) (j15 * 2));
                    for (long j35 = 0; j35 < j15; j35++) {
                        int i28 = (int) (j15 + j35);
                        iArr[i28] = (iArr[i28] << 16) | (iArr[(int) j35] & 65535);
                    }
                }
                sort32(iArr, 0, i13);
                for (long j36 = 0; j36 < j15; j36++) {
                    int i29 = (int) (j15 + j36);
                    int i30 = iArr[i29];
                    int i31 = (iArr[(int) j36] & 65535) | (i30 & (-65536));
                    if (i31 < i30) {
                        iArr[i29] = i31;
                    }
                }
                j30++;
            }
            for (long j37 = 0; j37 < j15; j37++) {
                int i32 = (int) (j15 + j37);
                iArr[i32] = iArr[i32] & 65535;
            }
        }
        long j38 = 0;
        if (sArr != null) {
            while (j38 < j15) {
                iArr[(int) j38] = (int) ((sArr[r0] << 16) + j38);
                j38++;
            }
        } else {
            while (j38 < j15) {
                iArr[(int) j38] = (int) ((get_q_short(iArr, (int) (i10 + j38)) << 16) + j38);
                j38++;
            }
        }
        sort32(iArr, 0, i13);
        long j39 = j10;
        long j40 = 0;
        while (true) {
            j14 = j15 / 2;
            if (j40 >= j14) {
                break;
            }
            long j41 = j40 * 2;
            long j42 = j15 + j41;
            int i33 = (int) j42;
            int i34 = iArr[i33] & 1;
            int i35 = (int) (i34 + j41);
            int i36 = (int) (j39 >> 3);
            bArr[i36] = (byte) (bArr[i36] ^ (i34 << ((int) (j39 & 7))));
            j39 += j11;
            iArr[i33] = (iArr[(int) j41] << 16) | i35;
            iArr[(int) (j42 + 1)] = (iArr[(int) (j41 + 1)] << 16) | (i35 ^ 1);
            j40++;
        }
        long j43 = j15 * 2;
        sort32(iArr, i13, (int) j43);
        long j44 = j12 * 2;
        long j45 = ((j44 - 3) * j11 * j14) + j39;
        long j46 = 0;
        while (j46 < j14) {
            long j47 = j46 * 2;
            long j48 = j43;
            long j49 = j15 + j47;
            int i37 = iArr[(int) j49];
            int i38 = i37 & 1;
            int i39 = (int) (i38 + j47);
            int i40 = (int) (j45 >> 3);
            bArr[i40] = (byte) ((i38 << ((int) (j45 & 7))) ^ bArr[i40]);
            j45 += j11;
            iArr[(int) j47] = (i37 & 65535) | (i39 << 16);
            iArr[(int) (j47 + 1)] = ((i39 ^ 1) << 16) | (iArr[(int) (j49 + 1)] & 65535);
            j46++;
            j44 = j44;
            j43 = j48;
            j15 = j13;
            i13 = i13;
        }
        int i41 = i13;
        long j50 = j43;
        sort32(iArr, 0, i41);
        long j51 = j45 - (((j44 - 2) * j11) * j14);
        short[] sArr2 = new short[i41 * 4];
        for (long j52 = 0; j52 < j50; j52++) {
            long j53 = j52 * 2;
            int i42 = iArr[(int) j52];
            sArr2[(int) j53] = (short) i42;
            sArr2[(int) (j53 + 1)] = (short) ((i42 & (-65536)) >> 16);
        }
        for (long j54 = 0; j54 < j14; j54++) {
            long j55 = j54 * 2;
            sArr2[(int) j54] = (short) ((iArr[(int) j55] & 65535) >>> 1);
            sArr2[(int) (j54 + j14)] = (short) ((iArr[(int) (j55 + 1)] & 65535) >>> 1);
        }
        for (long j56 = 0; j56 < j14; j56++) {
            long j57 = j56 * 2;
            iArr[(int) ((j13 / 4) + j13 + j56)] = (sArr2[(int) (j57 + 1)] << 16) | sArr2[(int) j57];
        }
        long j58 = j11 * 2;
        long j59 = (j13 / 4) + j13;
        long j60 = j12 - 1;
        cbrecursion(bArr, j51, j58, null, ((int) j59) * 2, j60, j14, iArr);
        cbrecursion(bArr, j51 + j11, j58, null, (int) ((j59 * 2) + j14), j60, j14, iArr);
    }

    private static void controlbitsfrompermutation(byte[] bArr, short[] sArr, long j10, long j11) {
        long j12 = 2;
        int[] iArr = new int[(int) (j11 * 2)];
        int i10 = (int) j11;
        short[] sArr2 = new short[i10];
        while (true) {
            short s8 = 0;
            for (int i11 = 0; i11 < (((((j10 * j12) - 1) * j11) / j12) + 7) / 8; i11++) {
                bArr[i11] = 0;
            }
            int i12 = i10;
            short[] sArr3 = sArr2;
            int[] iArr2 = iArr;
            cbrecursion(bArr, 0L, 1L, sArr, 0, j10, j11, iArr);
            for (int i13 = 0; i13 < j11; i13++) {
                sArr3[i13] = (short) i13;
            }
            int i14 = 0;
            for (int i15 = 0; i15 < j10; i15++) {
                layer(sArr3, bArr, i14, i15, i12);
                i14 = (int) (i14 + (j11 >> 4));
            }
            for (int i16 = (int) (j10 - 2); i16 >= 0; i16--) {
                layer(sArr3, bArr, i14, i16, i12);
                i14 = (int) (i14 + (j11 >> 4));
            }
            int i17 = 0;
            while (i17 < j11) {
                short s10 = (short) (s8 | (sArr[i17] ^ sArr3[i17]));
                i17++;
                s8 = s10;
            }
            if (s8 == 0) {
                return;
            }
            sArr2 = sArr3;
            i10 = i12;
            iArr = iArr2;
            j12 = 2;
        }
    }

    private static int ctz(long j10) {
        long j11 = j10 ^ (-1);
        long j12 = 72340172838076673L;
        long j13 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            j12 &= j11 >>> i10;
            j13 += j12;
        }
        long j14 = 578721382704613384L & j13;
        long j15 = j14 | (j14 >>> 1);
        long j16 = j15 | (j15 >>> 2);
        long j17 = j13 >>> 8;
        long j18 = j13 + (j17 & j16);
        for (int i11 = 2; i11 < 8; i11++) {
            j16 &= j16 >>> 8;
            j17 >>>= 8;
            j18 += j17 & j16;
        }
        return ((int) j18) & 255;
    }

    private int decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10;
        int i11;
        int i12 = this.SYS_T;
        short[] sArr = new short[i12 + 1];
        int i13 = this.SYS_N;
        short[] sArr2 = new short[i13];
        short[] sArr3 = new short[i12 * 2];
        short[] sArr4 = new short[i12 * 2];
        short[] sArr5 = new short[i12 + 1];
        short[] sArr6 = new short[i13];
        byte[] bArr4 = new byte[i13 / 8];
        int i14 = 0;
        while (true) {
            i10 = this.SYND_BYTES;
            if (i14 >= i10) {
                break;
            }
            bArr4[i14] = bArr3[i14];
            i14++;
        }
        while (i10 < this.SYS_N / 8) {
            bArr4[i10] = 0;
            i10++;
        }
        int i15 = 0;
        while (true) {
            i11 = this.SYS_T;
            if (i15 >= i11) {
                break;
            }
            sArr[i15] = Utils.load_gf(bArr2, (i15 * 2) + 40, this.GFMASK);
            i15++;
        }
        sArr[i11] = 1;
        this.benes.support_gen(sArr2, bArr2);
        synd(sArr3, sArr, sArr2, bArr4);
        bm(sArr5, sArr3);
        root(sArr6, sArr5, sArr2);
        for (int i16 = 0; i16 < this.SYS_N / 8; i16++) {
            bArr[i16] = 0;
        }
        int i17 = 0;
        for (int i18 = 0; i18 < this.SYS_N; i18++) {
            short sGf_iszero = (short) (this.f12286gf.gf_iszero(sArr6[i18]) & 1);
            int i19 = i18 / 8;
            bArr[i19] = (byte) (bArr[i19] | (sGf_iszero << (i18 % 8)));
            i17 += sGf_iszero;
        }
        synd(sArr4, sArr, sArr2, bArr);
        int i20 = this.SYS_T ^ i17;
        for (int i21 = 0; i21 < this.SYS_T * 2; i21++) {
            i20 |= sArr3[i21] ^ sArr4[i21];
        }
        return (((i20 - 1) >> 15) & 1) ^ 1;
    }

    private void encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        generate_error_vector(bArr3, secureRandom);
        syndrome(bArr, bArr2, bArr3);
    }

    private short eval(short[] sArr, short s8) {
        int i10 = this.SYS_T;
        short sGf_mul = sArr[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            sGf_mul = (short) (this.f12286gf.gf_mul(sGf_mul, s8) ^ sArr[i11]);
        }
        return sGf_mul;
    }

    private void generate_error_vector(byte[] bArr, SecureRandom secureRandom) {
        int i10;
        int i11 = this.SYS_T;
        short[] sArr = new short[i11 * 2];
        short[] sArr2 = new short[i11];
        byte[] bArr2 = new byte[i11];
        while (true) {
            if (this.countErrorIndices) {
                byte[] bArr3 = new byte[this.SYS_T * 4];
                secureRandom.nextBytes(bArr3);
                for (int i12 = 0; i12 < this.SYS_T * 2; i12++) {
                    sArr[i12] = Utils.load_gf(bArr3, i12 * 2, this.GFMASK);
                }
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    i10 = this.SYS_T;
                    if (i13 >= i10 * 2 || i14 >= i10) {
                        break;
                    }
                    short s8 = sArr[i13];
                    if (s8 < this.SYS_N) {
                        sArr2[i14] = s8;
                        i14++;
                    }
                    i13++;
                }
                if (i14 < i10) {
                    continue;
                }
            } else {
                byte[] bArr4 = new byte[this.SYS_T * 2];
                secureRandom.nextBytes(bArr4);
                for (int i15 = 0; i15 < this.SYS_T; i15++) {
                    sArr2[i15] = Utils.load_gf(bArr4, i15 * 2, this.GFMASK);
                }
            }
            boolean z = false;
            for (int i16 = 1; i16 < this.SYS_T && !z; i16++) {
                int i17 = 0;
                while (true) {
                    if (i17 >= i16) {
                        break;
                    }
                    if (sArr2[i16] == sArr2[i17]) {
                        z = true;
                        break;
                    }
                    i17++;
                }
            }
            if (!z) {
                break;
            }
        }
        for (int i18 = 0; i18 < this.SYS_T; i18++) {
            bArr2[i18] = (byte) (1 << (sArr2[i18] & 7));
        }
        for (short s10 = 0; s10 < this.SYS_N / 8; s10 = (short) (s10 + 1)) {
            bArr[s10] = 0;
            for (int i19 = 0; i19 < this.SYS_T; i19++) {
                bArr[s10] = (byte) ((((short) (same_mask32(s10, (short) (sArr2[i19] >> 3)) & 255)) & bArr2[i19]) | bArr[s10]);
            }
        }
    }

    private int generate_irr_poly(short[] sArr) {
        int i10;
        int i11 = this.SYS_T;
        int i12 = 2;
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, i11 + 1, i11);
        sArr2[0][0] = 1;
        System.arraycopy(sArr, 0, sArr2[1], 0, this.SYS_T);
        int[] iArr = new int[(this.SYS_T * 2) - 1];
        while (true) {
            i10 = this.SYS_T;
            if (i12 >= i10) {
                break;
            }
            this.f12286gf.gf_sqr_poly(i10, this.poly, sArr2[i12], sArr2[i12 >>> 1], iArr);
            this.f12286gf.gf_mul_poly(this.SYS_T, this.poly, sArr2[i12 + 1], sArr2[i12], sArr, iArr);
            i12 += 2;
        }
        if (i12 == i10) {
            this.f12286gf.gf_sqr_poly(i10, this.poly, sArr2[i12], sArr2[i12 >>> 1], iArr);
        }
        int i13 = 0;
        while (true) {
            int i14 = this.SYS_T;
            if (i13 >= i14) {
                System.arraycopy(sArr2[i14], 0, sArr, 0, i14);
                return 0;
            }
            int i15 = i13 + 1;
            for (int i16 = i15; i16 < this.SYS_T; i16++) {
                short sGf_iszero = this.f12286gf.gf_iszero(sArr2[i13][i13]);
                for (int i17 = i13; i17 < this.SYS_T + 1; i17++) {
                    short[] sArr3 = sArr2[i17];
                    sArr3[i13] = (short) (sArr3[i13] ^ ((short) (sArr3[i16] & sGf_iszero)));
                }
            }
            short s8 = sArr2[i13][i13];
            if (s8 == 0) {
                return -1;
            }
            short sGf_inv = this.f12286gf.gf_inv(s8);
            for (int i18 = i13; i18 < this.SYS_T + 1; i18++) {
                short[] sArr4 = sArr2[i18];
                sArr4[i13] = this.f12286gf.gf_mul(sArr4[i13], sGf_inv);
            }
            for (int i19 = 0; i19 < this.SYS_T; i19++) {
                if (i19 != i13) {
                    short s10 = sArr2[i13][i19];
                    for (int i20 = i13; i20 <= this.SYS_T; i20++) {
                        short[] sArr5 = sArr2[i20];
                        sArr5[i19] = (short) (sArr5[i19] ^ this.f12286gf.gf_mul(sArr5[i13], s10));
                    }
                }
            }
            i13 = i15;
        }
    }

    public static short get_q_short(int[] iArr, int i10) {
        int i11 = i10 / 2;
        return (short) (i10 % 2 == 0 ? iArr[i11] : (iArr[i11] & (-65536)) >> 16);
    }

    private static void layer(short[] sArr, byte[] bArr, int i10, int i11, int i12) {
        int i13 = 1 << i11;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15 += i13 * 2) {
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = i15 + i16;
                short s8 = sArr[i17];
                int i18 = i17 + i13;
                int i19 = (sArr[i18] ^ s8) & (-((bArr[(i14 >> 3) + i10] >> (i14 & 7)) & 1));
                sArr[i17] = (short) (s8 ^ i19);
                sArr[i18] = (short) (sArr[i18] ^ i19);
                i14++;
            }
        }
    }

    private static int min(short s8, int i10) {
        return s8 < i10 ? s8 : i10;
    }

    private int mov_columns(byte[][] bArr, short[] sArr, long[] jArr) {
        byte[] bArr2;
        long jLoad8;
        long[] jArr2 = new long[64];
        int i10 = 32;
        long[] jArr3 = new long[32];
        byte[] bArr3 = new byte[9];
        int i11 = this.PK_NROWS - 32;
        int i12 = i11 / 8;
        int i13 = i11 % 8;
        char c7 = 0;
        if (this.usePadding) {
            for (int i14 = 0; i14 < 32; i14++) {
                for (int i15 = 0; i15 < 9; i15++) {
                    bArr3[i15] = bArr[i11 + i14][i12 + i15];
                }
                int i16 = 0;
                while (i16 < 8) {
                    int i17 = i16 + 1;
                    bArr3[i16] = (byte) (((bArr3[i16] & 255) >> i13) | (bArr3[i17] << (8 - i13)));
                    i16 = i17;
                }
                jArr2[i14] = Utils.load8(bArr3, 0);
            }
        } else {
            for (int i18 = 0; i18 < 32; i18++) {
                jArr2[i18] = Utils.load8(bArr[i11 + i18], i12);
            }
        }
        long j10 = 0;
        jArr[0] = 0;
        int i19 = 0;
        while (i19 < 32) {
            long j11 = jArr2[i19];
            int i20 = i19 + 1;
            for (int i21 = i20; i21 < 32; i21++) {
                j11 |= jArr2[i21];
            }
            if (j11 == j10) {
                return -1;
            }
            int iCtz = ctz(j11);
            long j12 = iCtz;
            jArr3[i19] = j12;
            jArr[c7] = jArr[c7] | (1 << ((int) j12));
            for (int i22 = i20; i22 < 32; i22++) {
                long j13 = jArr2[i19];
                jArr2[i19] = j13 ^ (jArr2[i22] & (((j13 >> iCtz) & 1) - 1));
            }
            int i23 = i20;
            while (i23 < 32) {
                long j14 = jArr2[i23];
                jArr2[i23] = j14 ^ (jArr2[i19] & (-((j14 >> iCtz) & 1)));
                i23++;
                iCtz = iCtz;
                c7 = 0;
            }
            i19 = i20;
            j10 = 0;
        }
        int i24 = 0;
        while (i24 < 32) {
            int i25 = i24 + 1;
            int i26 = i25;
            while (i26 < 64) {
                long jSame_mask64 = same_mask64((short) i26, (short) jArr3[i24]) & (sArr[r12] ^ sArr[r17]);
                sArr[i11 + i24] = (short) (sArr[r12] ^ jSame_mask64);
                sArr[i11 + i26] = (short) (jSame_mask64 ^ sArr[r17]);
                i26++;
                bArr3 = bArr3;
            }
            i24 = i25;
        }
        byte[] bArr4 = bArr3;
        int i27 = 0;
        while (i27 < this.PK_NROWS) {
            if (this.usePadding) {
                for (int i28 = 0; i28 < 9; i28++) {
                    bArr4[i28] = bArr[i27][i12 + i28];
                }
                int i29 = 0;
                while (i29 < 8) {
                    int i30 = i29 + 1;
                    bArr4[i29] = (byte) (((bArr4[i29] & 255) >> i13) | (bArr4[i30] << (8 - i13)));
                    i29 = i30;
                }
                bArr2 = bArr4;
                jLoad8 = Utils.load8(bArr2, 0);
            } else {
                bArr2 = bArr4;
                jLoad8 = Utils.load8(bArr[i27], i12);
            }
            int i31 = 0;
            while (i31 < i10) {
                long j15 = jArr3[i31];
                long j16 = ((jLoad8 >> i31) ^ (jLoad8 >> ((int) j15))) & 1;
                jLoad8 = (j16 << i31) ^ ((j16 << ((int) j15)) ^ jLoad8);
                i31++;
                i10 = 32;
            }
            if (this.usePadding) {
                Utils.store8(bArr2, 0, jLoad8);
                byte[] bArr5 = bArr[i27];
                int i32 = i12 + 8;
                int i33 = 8 - i13;
                bArr5[i32] = (byte) ((((bArr5[i32] & 255) >>> i13) << i13) | ((bArr2[7] & 255) >>> i33));
                bArr5[i12] = (byte) (((bArr2[0] & 255) << i13) | (((bArr5[i12] & 255) << i33) >>> i33));
                for (int i34 = 7; i34 >= 1; i34--) {
                    bArr[i27][i12 + i34] = (byte) (((bArr2[i34] & 255) << i13) | ((bArr2[i34 - 1] & 255) >>> i33));
                }
            } else {
                Utils.store8(bArr[i27], i12, jLoad8);
            }
            i27++;
            bArr4 = bArr2;
            i10 = 32;
        }
        return 0;
    }

    private int pk_gen(byte[] bArr, byte[] bArr2, int[] iArr, short[] sArr, long[] jArr) {
        int i10;
        int i11;
        int i12 = this.SYS_T;
        short[] sArr2 = new short[i12 + 1];
        sArr2[i12] = 1;
        for (int i13 = 0; i13 < this.SYS_T; i13++) {
            sArr2[i13] = Utils.load_gf(bArr2, (i13 * 2) + 40, this.GFMASK);
        }
        int i14 = 1 << this.GFBITS;
        long[] jArr2 = new long[i14];
        for (int i15 = 0; i15 < (1 << this.GFBITS); i15++) {
            long j10 = iArr[i15];
            jArr2[i15] = j10;
            long j11 = j10 << 31;
            jArr2[i15] = j11;
            long j12 = j11 | i15;
            jArr2[i15] = j12;
            jArr2[i15] = j12 & Long.MAX_VALUE;
        }
        sort64(jArr2, 0, i14);
        for (int i16 = 1; i16 < (1 << this.GFBITS); i16++) {
            if ((jArr2[i16 - 1] >> 31) == (jArr2[i16] >> 31)) {
                return -1;
            }
        }
        short[] sArr3 = new short[this.SYS_N];
        for (int i17 = 0; i17 < (1 << this.GFBITS); i17++) {
            sArr[i17] = (short) (jArr2[i17] & this.GFMASK);
        }
        int i18 = 0;
        while (true) {
            i10 = this.SYS_N;
            if (i18 >= i10) {
                break;
            }
            sArr3[i18] = Utils.bitrev(sArr[i18], this.GFBITS);
            i18++;
        }
        short[] sArr4 = new short[i10];
        root(sArr4, sArr2, sArr3);
        int i19 = 0;
        while (true) {
            i11 = this.SYS_N;
            if (i19 >= i11) {
                break;
            }
            sArr4[i19] = this.f12286gf.gf_inv(sArr4[i19]);
            i19++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.PK_NROWS, i11 / 8);
        for (int i20 = 0; i20 < this.PK_NROWS; i20++) {
            for (int i21 = 0; i21 < this.SYS_N / 8; i21++) {
                bArr3[i20][i21] = 0;
            }
        }
        int i22 = 0;
        while (i22 < this.SYS_T) {
            for (int i23 = 0; i23 < this.SYS_N; i23 += 8) {
                int i24 = 0;
                while (true) {
                    int i25 = this.GFBITS;
                    if (i24 < i25) {
                        bArr3[(i25 * i22) + i24][i23 / 8] = (byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) ((sArr4[i23 + 7] >>> i24) & 1)) << 1)) | ((sArr4[i23 + 6] >>> i24) & 1))) << 1)) | ((sArr4[i23 + 5] >>> i24) & 1))) << 1)) | ((sArr4[i23 + 4] >>> i24) & 1))) << 1)) | ((sArr4[i23 + 3] >>> i24) & 1))) << 1)) | ((sArr4[i23 + 2] >>> i24) & 1))) << 1)) | ((sArr4[i23 + 1] >>> i24) & 1))) << 1)) | ((sArr4[i23] >>> i24) & 1));
                        i24++;
                    }
                }
            }
            for (int i26 = 0; i26 < this.SYS_N; i26++) {
                sArr4[i26] = this.f12286gf.gf_mul(sArr4[i26], sArr3[i26]);
            }
            i22++;
        }
        int i27 = 0;
        while (true) {
            int i28 = this.PK_NROWS;
            if (i27 < i28) {
                i22 = i27 >>> 3;
                int i29 = i27 & 7;
                if (this.usePivots && i27 == i28 - 32) {
                    if (mov_columns(bArr3, sArr, jArr) != 0) {
                        return -1;
                    }
                }
                int i30 = i27 + 1;
                for (int i31 = i30; i31 < this.PK_NROWS; i31++) {
                    byte b10 = (byte) (-((byte) (((byte) (((byte) (bArr3[i27][i22] ^ bArr3[i31][i22])) >> i29)) & 1)));
                    for (int i32 = 0; i32 < this.SYS_N / 8; i32++) {
                        byte[] bArr4 = bArr3[i27];
                        bArr4[i32] = (byte) (bArr4[i32] ^ (bArr3[i31][i32] & b10));
                    }
                }
                if (((bArr3[i27][i22] >> i29) & 1) == 0) {
                    return -1;
                }
                for (int i33 = 0; i33 < this.PK_NROWS; i33++) {
                    if (i33 != i27) {
                        byte b11 = (byte) (-((byte) (((byte) (bArr3[i33][i22] >> i29)) & 1)));
                        for (int i34 = 0; i34 < this.SYS_N / 8; i34++) {
                            byte[] bArr5 = bArr3[i33];
                            bArr5[i34] = (byte) (bArr5[i34] ^ (bArr3[i27][i34] & b11));
                        }
                    }
                }
                i27 = i30;
            } else {
                if (bArr == null) {
                    return 0;
                }
                if (this.usePadding) {
                    int i35 = i28 % 8;
                    if (i35 == 0) {
                        System.arraycopy(bArr3[i22], (i28 - 1) / 8, bArr, 0, this.SYS_N / 8);
                        return 0;
                    }
                    int i36 = 0;
                    int i37 = 0;
                    while (true) {
                        int i38 = this.PK_NROWS;
                        if (i36 >= i38) {
                            return 0;
                        }
                        int i39 = (i38 - 1) / 8;
                        while (i39 < (this.SYS_N / 8) - 1) {
                            byte[] bArr6 = bArr3[i36];
                            int i40 = (bArr6[i39] & 255) >>> i35;
                            i39++;
                            bArr[i37] = (byte) ((bArr6[i39] << (8 - i35)) | i40);
                            i37++;
                        }
                        bArr[i37] = (byte) ((bArr3[i36][i39] & 255) >>> i35);
                        i36++;
                        i37++;
                    }
                } else {
                    int i41 = ((this.SYS_N - i28) + 7) / 8;
                    int i42 = 0;
                    while (true) {
                        int i43 = this.PK_NROWS;
                        if (i42 >= i43) {
                            return 0;
                        }
                        System.arraycopy(bArr3[i42], i43 / 8, bArr, i41 * i42, i41);
                        i42++;
                    }
                }
            }
        }
    }

    private void root(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i10 = 0; i10 < this.SYS_N; i10++) {
            sArr[i10] = eval(sArr2, sArr3[i10]);
        }
    }

    private static byte same_mask32(short s8, short s10) {
        return (byte) ((-(((s8 ^ s10) - 1) >>> 31)) & 255);
    }

    private static long same_mask64(short s8, short s10) {
        return -(((s8 ^ s10) - 1) >>> 63);
    }

    private static void sort32(int[] iArr, int i10, int i11) {
        int i12 = i11 - i10;
        if (i12 < 2) {
            return;
        }
        int i13 = 1;
        while (i13 < i12 - i13) {
            i13 += i13;
        }
        for (int i14 = i13; i14 > 0; i14 >>>= 1) {
            int i15 = 0;
            for (int i16 = 0; i16 < i12 - i14; i16++) {
                if ((i16 & i14) == 0) {
                    int i17 = i10 + i16;
                    int i18 = i17 + i14;
                    int i19 = iArr[i18];
                    int i20 = iArr[i17];
                    int i21 = i19 ^ i20;
                    int i22 = i19 - i20;
                    int i23 = ((((i19 ^ i22) & i21) ^ i22) >> 31) & i21;
                    iArr[i17] = i20 ^ i23;
                    iArr[i18] = iArr[i18] ^ i23;
                }
            }
            for (int i24 = i13; i24 > i14; i24 >>>= 1) {
                while (i15 < i12 - i24) {
                    if ((i15 & i14) == 0) {
                        int i25 = i10 + i15;
                        int i26 = i25 + i14;
                        int i27 = iArr[i26];
                        for (int i28 = i24; i28 > i14; i28 >>>= 1) {
                            int i29 = i25 + i28;
                            int i30 = iArr[i29];
                            int i31 = i30 ^ i27;
                            int i32 = i30 - i27;
                            int i33 = i31 & ((i32 ^ ((i32 ^ i30) & i31)) >> 31);
                            i27 ^= i33;
                            iArr[i29] = i30 ^ i33;
                        }
                        iArr[i26] = i27;
                    }
                    i15++;
                }
            }
        }
    }

    private static void sort64(long[] jArr, int i10, int i11) {
        int i12 = i11 - i10;
        if (i12 < 2) {
            return;
        }
        int i13 = 1;
        while (i13 < i12 - i13) {
            i13 += i13;
        }
        for (int i14 = i13; i14 > 0; i14 >>>= 1) {
            int i15 = 0;
            for (int i16 = 0; i16 < i12 - i14; i16++) {
                if ((i16 & i14) == 0) {
                    int i17 = i10 + i16;
                    int i18 = i17 + i14;
                    long j10 = jArr[i18];
                    long j11 = jArr[i17];
                    long j12 = (j10 ^ j11) & (-((j10 - j11) >>> 63));
                    jArr[i17] = j11 ^ j12;
                    jArr[i18] = jArr[i18] ^ j12;
                }
            }
            for (int i19 = i13; i19 > i14; i19 >>>= 1) {
                while (i15 < i12 - i19) {
                    if ((i15 & i14) == 0) {
                        int i20 = i10 + i15;
                        int i21 = i20 + i14;
                        long j13 = jArr[i21];
                        for (int i22 = i19; i22 > i14; i22 >>>= 1) {
                            int i23 = i20 + i22;
                            long j14 = jArr[i23];
                            long j15 = (-((j14 - j13) >>> 63)) & (j13 ^ j14);
                            j13 ^= j15;
                            jArr[i23] = j14 ^ j15;
                        }
                        jArr[i21] = j13;
                    }
                    i15++;
                }
            }
        }
    }

    private void synd(short[] sArr, short[] sArr2, short[] sArr3, byte[] bArr) {
        short s8 = (short) (bArr[0] & 1);
        short s10 = sArr3[0];
        short sEval = eval(sArr2, s10);
        GF gf2 = this.f12286gf;
        short sGf_inv = (short) ((-s8) & gf2.gf_inv(gf2.gf_sq(sEval)));
        sArr[0] = sGf_inv;
        for (int i10 = 1; i10 < this.SYS_T * 2; i10++) {
            sGf_inv = this.f12286gf.gf_mul(sGf_inv, s10);
            sArr[i10] = sGf_inv;
        }
        for (int i11 = 1; i11 < this.SYS_N; i11++) {
            short s11 = (short) ((bArr[i11 / 8] >> (i11 % 8)) & 1);
            short s12 = sArr3[i11];
            short sEval2 = eval(sArr2, s12);
            GF gf3 = this.f12286gf;
            short sGf_mul = this.f12286gf.gf_mul(gf3.gf_inv(gf3.gf_sq(sEval2)), s11);
            sArr[0] = (short) (sArr[0] ^ sGf_mul);
            for (int i12 = 1; i12 < this.SYS_T * 2; i12++) {
                sGf_mul = this.f12286gf.gf_mul(sGf_mul, s12);
                sArr[i12] = (short) (sArr[i12] ^ sGf_mul);
            }
        }
    }

    private void syndrome(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        short[] sArr = new short[this.SYS_N / 8];
        int i10 = this.PK_NROWS % 8;
        for (int i11 = 0; i11 < this.SYND_BYTES; i11++) {
            bArr[i11] = 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.PK_NROWS; i13++) {
            for (int i14 = 0; i14 < this.SYS_N / 8; i14++) {
                sArr[i14] = 0;
            }
            int i15 = 0;
            while (true) {
                int i16 = this.PK_ROW_BYTES;
                if (i15 >= i16) {
                    break;
                }
                sArr[((this.SYS_N / 8) - i16) + i15] = bArr2[i12 + i15];
                i15++;
            }
            if (this.usePadding) {
                for (int i17 = (this.SYS_N / 8) - 1; i17 >= (this.SYS_N / 8) - this.PK_ROW_BYTES; i17--) {
                    sArr[i17] = (short) ((((sArr[i17] & 255) << i10) | ((sArr[i17 - 1] & 255) >>> (8 - i10))) & 255);
                }
            }
            int i18 = i13 / 8;
            int i19 = i13 % 8;
            sArr[i18] = (short) (sArr[i18] | (1 << i19));
            byte b10 = 0;
            for (int i20 = 0; i20 < this.SYS_N / 8; i20++) {
                b10 = (byte) (b10 ^ (sArr[i20] & bArr3[i20]));
            }
            byte b11 = (byte) ((b10 >>> 4) ^ b10);
            byte b12 = (byte) (b11 ^ (b11 >>> 2));
            bArr[i18] = (byte) ((((byte) (1 & ((byte) (b12 ^ (b12 >>> 1))))) << i19) | bArr[i18]);
            i12 += this.PK_ROW_BYTES;
        }
    }

    public int check_c_padding(byte[] bArr) {
        return ((byte) ((((byte) (((byte) ((bArr[this.SYND_BYTES - 1] & 255) >>> (this.PK_NROWS % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public int check_pk_padding(byte[] bArr) {
        byte b10 = 0;
        for (int i10 = 0; i10 < this.PK_NROWS; i10++) {
            int i11 = this.PK_ROW_BYTES;
            b10 = (byte) (b10 | bArr[((i10 * i11) + i11) - 1]);
        }
        return ((byte) ((((byte) (((byte) ((b10 & 255) >>> (this.PK_NCOLS % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public byte[] decompress_private_key(byte[] bArr) {
        int i10;
        byte[] bArr2 = new byte[getPrivateKeySize()];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int i11 = ((1 << this.GFBITS) * 4) + (this.SYS_N / 8) + this.IRR_BYTES;
        int i12 = i11 + 32;
        byte[] bArr3 = new byte[i12];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 64);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doFinal(bArr3, 0, i12);
        if (bArr.length <= 40) {
            short[] sArr = new short[this.SYS_T];
            int i13 = this.IRR_BYTES;
            byte[] bArr4 = new byte[i13];
            int i14 = i11 - i13;
            for (int i15 = 0; i15 < this.SYS_T; i15++) {
                sArr[i15] = Utils.load_gf(bArr3, (i15 * 2) + i14, this.GFMASK);
            }
            generate_irr_poly(sArr);
            for (int i16 = 0; i16 < this.SYS_T; i16++) {
                Utils.store_gf(bArr4, i16 * 2, sArr[i16]);
            }
            System.arraycopy(bArr4, 0, bArr2, 40, this.IRR_BYTES);
        }
        int length = bArr.length;
        int i17 = this.IRR_BYTES;
        if (length <= i17 + 40) {
            int i18 = this.GFBITS;
            int[] iArr = new int[1 << i18];
            short[] sArr2 = new short[1 << i18];
            int i19 = (i11 - i17) - ((1 << i18) * 4);
            int i20 = 0;
            while (true) {
                i10 = this.GFBITS;
                if (i20 >= (1 << i10)) {
                    break;
                }
                iArr[i20] = Utils.load4(bArr3, (i20 * 4) + i19);
                i20++;
            }
            if (this.usePivots) {
                pk_gen(null, bArr2, iArr, sArr2, new long[]{0});
            } else {
                int i21 = 1 << i10;
                long[] jArr = new long[i21];
                for (int i22 = 0; i22 < (1 << this.GFBITS); i22++) {
                    long j10 = iArr[i22];
                    jArr[i22] = j10;
                    long j11 = j10 << 31;
                    jArr[i22] = j11;
                    long j12 = j11 | i22;
                    jArr[i22] = j12;
                    jArr[i22] = j12 & Long.MAX_VALUE;
                }
                sort64(jArr, 0, i21);
                for (int i23 = 0; i23 < (1 << this.GFBITS); i23++) {
                    sArr2[i23] = (short) (jArr[i23] & this.GFMASK);
                }
            }
            int i24 = this.COND_BYTES;
            byte[] bArr5 = new byte[i24];
            controlbitsfrompermutation(bArr5, sArr2, this.GFBITS, 1 << r2);
            System.arraycopy(bArr5, 0, bArr2, this.IRR_BYTES + 40, i24);
        }
        int privateKeySize = getPrivateKeySize();
        int i25 = this.SYS_N;
        System.arraycopy(bArr3, 0, bArr2, privateKeySize - (i25 / 8), i25 / 8);
        return bArr2;
    }

    public byte[] generate_public_key_from_private_key(byte[] bArr) {
        byte[] bArr2 = new byte[getPublicKeySize()];
        int i10 = this.GFBITS;
        short[] sArr = new short[1 << i10];
        long[] jArr = {0};
        int[] iArr = new int[1 << i10];
        int i11 = ((1 << i10) * 4) + (this.SYS_N / 8);
        byte[] bArr3 = new byte[i11];
        int i12 = ((i11 - 32) - this.IRR_BYTES) - ((1 << i10) * 4);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 64);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doFinal(bArr3, 0, i11);
        for (int i13 = 0; i13 < (1 << this.GFBITS); i13++) {
            iArr[i13] = Utils.load4(bArr3, (i13 * 4) + i12);
        }
        pk_gen(bArr2, bArr, iArr, sArr, jArr);
        return bArr2;
    }

    public int getCipherTextSize() {
        return this.SYND_BYTES;
    }

    public int getCondBytes() {
        return this.COND_BYTES;
    }

    public int getDefaultSessionKeySize() {
        return this.defaultKeySize;
    }

    public int getIrrBytes() {
        return this.IRR_BYTES;
    }

    public int getPrivateKeySize() {
        return (this.SYS_N / 8) + this.COND_BYTES + this.IRR_BYTES + 40;
    }

    public int getPublicKeySize() {
        if (!this.usePadding) {
            return (this.PK_NROWS * this.PK_NCOLS) / 8;
        }
        int i10 = this.PK_NROWS;
        return ((this.SYS_N / 8) - ((i10 - 1) / 8)) * i10;
    }

    public int kem_dec(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10 = this.SYS_N;
        byte[] bArr4 = new byte[i10 / 8];
        int i11 = (i10 / 8) + 1 + this.SYND_BYTES;
        byte[] bArr5 = new byte[i11];
        int iCheck_c_padding = this.usePadding ? check_c_padding(bArr2) : 0;
        short sDecrypt = (short) (((short) (((short) (((byte) decrypt(bArr4, bArr3, bArr2)) - 1)) >> 8)) & 255);
        bArr5[0] = (byte) (sDecrypt & 1);
        int i12 = 0;
        while (i12 < this.SYS_N / 8) {
            int i13 = i12 + 1;
            bArr5[i13] = (byte) ((bArr4[i12] & sDecrypt) | ((sDecrypt ^ (-1)) & bArr3[i12 + 40 + this.IRR_BYTES + this.COND_BYTES]));
            i12 = i13;
        }
        for (int i14 = 0; i14 < this.SYND_BYTES; i14++) {
            bArr5[(this.SYS_N / 8) + 1 + i14] = bArr2[i14];
        }
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr5, 0, i11);
        sHAKEDigest.doFinal(bArr, 0, bArr.length);
        if (!this.usePadding) {
            return 0;
        }
        byte b10 = (byte) iCheck_c_padding;
        for (int i15 = 0; i15 < bArr.length; i15++) {
            bArr[i15] = (byte) (bArr[i15] | b10);
        }
        return iCheck_c_padding;
    }

    public int kem_enc(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        int i10 = this.SYS_N / 8;
        byte[] bArr4 = new byte[i10];
        int iCheck_pk_padding = this.usePadding ? check_pk_padding(bArr3) : 0;
        encrypt(bArr, bArr3, bArr4, secureRandom);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 1);
        sHAKEDigest.update(bArr4, 0, i10);
        sHAKEDigest.update(bArr, 0, bArr.length);
        sHAKEDigest.doFinal(bArr2, 0, bArr2.length);
        if (!this.usePadding) {
            return 0;
        }
        byte b10 = (byte) (((byte) iCheck_pk_padding) ^ 255);
        for (int i11 = 0; i11 < this.SYND_BYTES; i11++) {
            bArr[i11] = (byte) (bArr[i11] & b10);
        }
        for (int i12 = 0; i12 < 32; i12++) {
            bArr2[i12] = (byte) (bArr2[i12] & b10);
        }
        return iCheck_pk_padding;
    }

    public void kem_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int i10;
        int i11;
        short[] sArr;
        byte[] bArr3;
        SHAKEDigest sHAKEDigest;
        int i12;
        long j10;
        int i13 = 32;
        byte[] bArr4 = new byte[32];
        int i14 = 0;
        byte[] bArr5 = {64};
        secureRandom.nextBytes(bArr4);
        int i15 = (this.SYS_T * 2) + ((1 << this.GFBITS) * 4) + (this.SYS_N / 8);
        int i16 = i15 + 32;
        byte[] bArr6 = new byte[i16];
        long[] jArr = {0};
        SHAKEDigest sHAKEDigest2 = new SHAKEDigest(256);
        byte[] bArr7 = bArr4;
        while (true) {
            sHAKEDigest2.update(bArr5, i14, 1);
            sHAKEDigest2.update(bArr4, i14, bArr4.length);
            sHAKEDigest2.doFinal(bArr6, i14, i16);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr6, i15, i15 + 32);
            System.arraycopy(bArr7, i14, bArr2, i14, i13);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArrCopyOfRange, i14, i13);
            int i17 = this.SYS_T;
            short[] sArr2 = new short[i17];
            int i18 = i15 - (i17 * 2);
            for (int i19 = 0; i19 < this.SYS_T; i19++) {
                sArr2[i19] = Utils.load_gf(bArr6, (i19 * 2) + i18, this.GFMASK);
            }
            if (generate_irr_poly(sArr2) != -1) {
                for (int i20 = 0; i20 < this.SYS_T; i20++) {
                    Utils.store_gf(bArr2, (i20 * 2) + 40, sArr2[i20]);
                }
                int i21 = this.GFBITS;
                int[] iArr = new int[1 << i21];
                i10 = i18 - ((1 << i21) * 4);
                int i22 = 0;
                while (true) {
                    i11 = this.GFBITS;
                    if (i22 >= (1 << i11)) {
                        break;
                    }
                    iArr[i22] = Utils.load4(bArr6, (i22 * 4) + i10);
                    i22++;
                }
                sArr = new short[1 << i11];
                bArr3 = bArrCopyOfRange;
                sHAKEDigest = sHAKEDigest2;
                if (pk_gen(bArr, bArr2, iArr, sArr, jArr) != -1) {
                    break;
                }
            } else {
                bArr3 = bArrCopyOfRange;
                sHAKEDigest = sHAKEDigest2;
            }
            bArr7 = bArrCopyOfRange2;
            bArr4 = bArr3;
            sHAKEDigest2 = sHAKEDigest;
            i13 = 32;
            i14 = 0;
        }
        int i23 = this.COND_BYTES;
        byte[] bArr8 = new byte[i23];
        controlbitsfrompermutation(bArr8, sArr, this.GFBITS, 1 << r2);
        System.arraycopy(bArr8, 0, bArr2, this.IRR_BYTES + 40, i23);
        int i24 = this.SYS_N;
        System.arraycopy(bArr6, i10 - (i24 / 8), bArr2, bArr2.length - (i24 / 8), i24 / 8);
        if (this.usePivots) {
            i12 = 32;
            j10 = jArr[0];
        } else {
            j10 = 4294967295L;
            i12 = 32;
        }
        Utils.store8(bArr2, i12, j10);
    }
}
