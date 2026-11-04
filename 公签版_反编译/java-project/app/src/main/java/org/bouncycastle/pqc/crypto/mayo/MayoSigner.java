package org.bouncycastle.pqc.crypto.mayo;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.GF16;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;
import ta.q;

/* loaded from: classes3.dex */
public class MayoSigner implements MessageSigner {
    private static final long EVEN_2BYTES = 281470681808895L;
    private static final long EVEN_BYTES = 71777214294589695L;
    private static final int F_TAIL_LEN = 4;
    private MayoParameters params;
    private MayoPrivateKeyParameters privKey;
    private MayoPublicKeyParameters pubKey;
    private SecureRandom random;

    private static long ctCompare64(int i10, int i11) {
        return (-(i10 ^ i11)) >> 63;
    }

    private static void mVecMultiplyBins(int i10, int i11, long[] jArr, long[] jArr2) {
        int i12 = i10 + i10;
        int i13 = i12 + i10;
        int i14 = i13 + i10;
        int i15 = i14 + i10;
        int i16 = i15 + i10;
        int i17 = i16 + i10;
        int i18 = i17 + i10;
        int i19 = i18 + i10;
        int i20 = i19 + i10;
        int i21 = i20 + i10;
        int i22 = i21 + i10;
        int i23 = i22 + i10;
        int i24 = i23 + i10;
        int i25 = i24 + i10;
        int i26 = i11;
        int i27 = 0;
        int i28 = 0;
        while (i27 < i26) {
            int i29 = i28;
            int i30 = 0;
            while (i30 < i10) {
                long j10 = jArr[i29 + i15];
                long j11 = j10 & 1229782938247303441L;
                long j12 = (jArr[i29 + i20] ^ ((j10 & (-1229782938247303442L)) >>> 1)) ^ ((j11 << 3) + j11);
                long j13 = jArr[i29 + i21];
                long j14 = (j13 & (-8608480567731124088L)) >>> 3;
                long j15 = (jArr[i29 + i22] ^ ((j13 & 8608480567731124087L) << 1)) ^ ((j14 << 1) + j14);
                long j16 = j12 & 1229782938247303441L;
                long j17 = (jArr[i29 + i17] ^ ((j12 & (-1229782938247303442L)) >>> 1)) ^ ((j16 << 3) + j16);
                long j18 = (j15 & (-8608480567731124088L)) >>> 3;
                long j19 = (jArr[i29 + i16] ^ ((j15 & 8608480567731124087L) << 1)) ^ ((j18 << 1) + j18);
                long j20 = j17 & 1229782938247303441L;
                long j21 = (jArr[i29 + i24] ^ ((j17 & (-1229782938247303442L)) >>> 1)) ^ ((j20 << 3) + j20);
                long j22 = (j19 & (-8608480567731124088L)) >>> 3;
                long j23 = (jArr[i29 + i13] ^ ((j19 & 8608480567731124087L) << 1)) ^ ((j22 << 1) + j22);
                long j24 = j21 & 1229782938247303441L;
                long j25 = (jArr[i29 + i25] ^ ((j21 & (-1229782938247303442L)) >>> 1)) ^ ((j24 << 3) + j24);
                long j26 = (j23 & (-8608480567731124088L)) >>> 3;
                long j27 = (jArr[i29 + i18] ^ ((j23 & 8608480567731124087L) << 1)) ^ ((j26 << 1) + j26);
                long j28 = j25 & 1229782938247303441L;
                long j29 = (jArr[i29 + i23] ^ ((j25 & (-1229782938247303442L)) >>> 1)) ^ ((j28 << 3) + j28);
                long j30 = (j27 & (-8608480567731124088L)) >>> 3;
                long j31 = (jArr[i29 + i14] ^ ((j27 & 8608480567731124087L) << 1)) ^ ((j30 << 1) + j30);
                long j32 = j29 & 1229782938247303441L;
                long j33 = (jArr[i29 + i19] ^ ((j29 & (-1229782938247303442L)) >>> 1)) ^ ((j32 << 3) + j32);
                long j34 = (j31 & (-8608480567731124088L)) >>> 3;
                long j35 = (jArr[i29 + i12] ^ ((j31 & 8608480567731124087L) << 1)) ^ ((j34 << 1) + j34);
                long j36 = j33 & 1229782938247303441L;
                long j37 = (jArr[i29 + i10] ^ ((j33 & (-1229782938247303442L)) >>> 1)) ^ ((j36 << 3) + j36);
                long j38 = (j35 & (-8608480567731124088L)) >>> 3;
                jArr2[(i28 >> 4) + i30] = (j37 ^ ((j35 & 8608480567731124087L) << 1)) ^ ((j38 << 1) + j38);
                i30++;
                i29++;
            }
            i27++;
            i28 += i10 << 4;
            i26 = i11;
        }
    }

    private static void mayoGenericMCalculatePS(MayoParameters mayoParameters, long[] jArr, int i10, int i11, byte[] bArr, int i12, int i13, int i14, long[] jArr2) {
        int i15 = i12;
        int i16 = i13;
        int i17 = i16 + i15;
        int mVecLimbs = mayoParameters.getMVecLimbs();
        long[] jArr3 = new long[((mayoParameters.getN() * (mayoParameters.getK() * mVecLimbs)) * mVecLimbs) << 4];
        int i18 = i16 * mVecLimbs;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i19 < i15) {
            for (int i23 = i19; i23 < i15; i23++) {
                int i24 = 0;
                int i25 = 0;
                while (i24 < i14) {
                    Longs.xorTo(mVecLimbs, jArr, i21, jArr3, (((i22 + i24) << 4) + (bArr[i25 + i23] & 255)) * mVecLimbs);
                    i24++;
                    i25 += i17;
                }
                i21 += mVecLimbs;
            }
            int i26 = i20;
            int i27 = 0;
            while (i27 < i16) {
                int i28 = 0;
                int i29 = 0;
                while (i28 < i14) {
                    Longs.xorTo(mVecLimbs, jArr, i10 + i26, jArr3, (((i22 + i28) << 4) + (bArr[i29 + i27 + i15] & 255)) * mVecLimbs);
                    i28++;
                    i29 += i17;
                    i21 = i21;
                }
                i27++;
                i26 += mVecLimbs;
                i16 = i13;
            }
            i19++;
            i22 += i14;
            i20 += i18;
            i16 = i13;
        }
        int i30 = i15 * i14;
        int i31 = 0;
        while (i15 < i17) {
            for (int i32 = i15; i32 < i17; i32++) {
                int i33 = 0;
                int i34 = 0;
                while (i33 < i14) {
                    Longs.xorTo(mVecLimbs, jArr, i11 + i31, jArr3, (((i30 + i33) << 4) + (bArr[i34 + i32] & 255)) * mVecLimbs);
                    i33++;
                    i34 += i17;
                }
                i31 += mVecLimbs;
            }
            i15++;
            i30 += i14;
        }
        mVecMultiplyBins(mVecLimbs, i17 * i14, jArr3, jArr2);
    }

    private static void mayoGenericMCalculateSPS(long[] jArr, byte[] bArr, int i10, int i11, int i12, long[] jArr2) {
        int i13 = i11;
        int i14 = i13 * i13;
        long[] jArr3 = new long[(i10 * i14) << 4];
        int i15 = i13 * i10;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < i13) {
            int i19 = 0;
            int i20 = 0;
            while (i19 < i12) {
                int i21 = ((bArr[i17 + i19] & 255) * i10) + i18;
                int i22 = 0;
                int i23 = 0;
                while (i22 < i13) {
                    Longs.xorTo(i10, jArr, i20 + i23, jArr3, i21 + (i23 << 4));
                    i22++;
                    i23 += i10;
                    i13 = i11;
                }
                i19++;
                i20 += i15;
                i13 = i11;
            }
            i16++;
            i17 += i12;
            i18 += i15 << 4;
            i13 = i11;
        }
        mVecMultiplyBins(i10, i14, jArr3, jArr2);
    }

    private static int mulTable(int i10) {
        int i11 = i10 * 134480385;
        int i12 = (-252645136) & i11;
        return (i11 ^ (i12 >>> 4)) ^ (i12 >>> 3);
    }

    private static void transpose16x16Nibbles(long[] jArr, int i10) {
        for (int i11 = 0; i11 < 16; i11 += 2) {
            int i12 = i10 + i11;
            int i13 = i12 + 1;
            long j10 = jArr[i12];
            long j11 = ((j10 >>> 4) ^ jArr[i13]) & 1085102592571150095L;
            jArr[i12] = j10 ^ (j11 << 4);
            jArr[i13] = jArr[i13] ^ j11;
        }
        int i14 = i10;
        for (int i15 = 0; i15 < 16; i15 += 4) {
            long j12 = jArr[i14];
            long j13 = ((j12 >>> 8) ^ jArr[i14 + 2]) & EVEN_BYTES;
            int i16 = i14 + 1;
            long j14 = EVEN_BYTES & ((jArr[i16] >>> 8) ^ jArr[i14 + 3]);
            jArr[i14] = j12 ^ (j13 << 8);
            int i17 = i14 + 2;
            jArr[i16] = jArr[i16] ^ (j14 << 8);
            int i18 = i14 + 3;
            jArr[i17] = j13 ^ jArr[i17];
            i14 += 4;
            jArr[i18] = jArr[i18] ^ j14;
        }
        for (int i19 = 0; i19 < 4; i19++) {
            int i20 = i10 + i19;
            long j15 = jArr[i20];
            int i21 = i20 + 4;
            long j16 = ((j15 >>> 16) ^ jArr[i21]) & EVEN_2BYTES;
            int i22 = i20 + 8;
            int i23 = i20 + 12;
            long j17 = EVEN_2BYTES & ((jArr[i22] >>> 16) ^ jArr[i23]);
            jArr[i20] = j15 ^ (j16 << 16);
            jArr[i22] = jArr[i22] ^ (j17 << 16);
            jArr[i21] = jArr[i21] ^ j16;
            jArr[i23] = jArr[i23] ^ j17;
        }
        for (int i24 = 0; i24 < 8; i24++) {
            int i25 = i10 + i24;
            long j18 = jArr[i25];
            int i26 = i25 + 8;
            long j19 = ((j18 >>> 32) ^ jArr[i26]) & 4294967295L;
            jArr[i25] = j18 ^ (j19 << 32);
            jArr[i26] = jArr[i26] ^ j19;
        }
    }

    private static void vecMulAddU64(int i10, long[] jArr, byte b10, long[] jArr2) {
        int iMulTable = mulTable(b10 & 255);
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = jArr[i11];
            jArr2[i11] = ((((j10 >>> 3) & 1229782938247303441L) * ((iMulTable >>> 24) & 15)) ^ ((((j10 & 1229782938247303441L) * (iMulTable & 255)) ^ (((j10 >>> 1) & 1229782938247303441L) * ((iMulTable >>> 8) & 15))) ^ (((j10 >>> 2) & 1229782938247303441L) * ((iMulTable >>> 16) & 15)))) ^ jArr2[i11];
        }
    }

    public void computeA(long[] jArr, byte[] bArr) {
        int i10;
        int i11;
        char c7;
        int i12;
        int[] iArr;
        int k10 = this.params.getK();
        int o10 = this.params.getO();
        int m10 = this.params.getM();
        int mVecLimbs = this.params.getMVecLimbs();
        int aCols = this.params.getACols();
        int[] fTail = this.params.getFTail();
        int i13 = o10 * k10;
        int i14 = o10 * mVecLimbs;
        int i15 = ((i13 + 15) >> 4) << 4;
        long[] jArr2 = new long[(((m10 + 7) >>> 3) * i15) << 4];
        int i16 = m10 & 15;
        if (i16 != 0) {
            long j10 = (1 << (i16 << 2)) - 1;
            int i17 = mVecLimbs - 1;
            int i18 = 0;
            while (i18 < i13) {
                jArr[i17] = jArr[i17] & j10;
                i18++;
                i17 += mVecLimbs;
            }
        }
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i19 < k10) {
            int i24 = k10 - 1;
            int i25 = i24 * i14;
            int i26 = i23;
            int i27 = i24;
            int i28 = i24 * o10;
            while (i27 >= i19) {
                int i29 = 0;
                int i30 = 0;
                while (true) {
                    i12 = aCols;
                    iArr = fTail;
                    if (i29 >= o10) {
                        break;
                    }
                    int i31 = 0;
                    int i32 = 0;
                    while (i31 < mVecLimbs) {
                        long j11 = jArr[i25 + i31 + i30];
                        int iX = q.x(i20, i29, i26, i32);
                        jArr2[iX] = jArr2[iX] ^ (j11 << i22);
                        if (i22 > 0) {
                            int i33 = iX + i15;
                            jArr2[i33] = jArr2[i33] ^ (j11 >>> (64 - i22));
                        }
                        i31++;
                        i32 += i15;
                    }
                    i29++;
                    i30 += mVecLimbs;
                    aCols = i12;
                    fTail = iArr;
                }
                if (i19 != i27) {
                    int i34 = 0;
                    int i35 = 0;
                    while (i34 < o10) {
                        int i36 = m10;
                        int i37 = 0;
                        int i38 = 0;
                        while (i38 < mVecLimbs) {
                            long j12 = jArr[i21 + i38 + i35];
                            int iX2 = q.x(i28, i34, i26, i37);
                            jArr2[iX2] = jArr2[iX2] ^ (j12 << i22);
                            if (i22 > 0) {
                                int i39 = iX2 + i15;
                                jArr2[i39] = jArr2[i39] ^ (j12 >>> (64 - i22));
                            }
                            i38++;
                            i37 += i15;
                        }
                        i34++;
                        i35 += mVecLimbs;
                        m10 = i36;
                    }
                }
                int i40 = m10;
                int i41 = i22 + 4;
                if (i41 == 64) {
                    i26 += i15;
                    i22 = 0;
                } else {
                    i22 = i41;
                }
                i27--;
                i25 -= i14;
                i28 -= o10;
                m10 = i40;
                aCols = i12;
                fTail = iArr;
            }
            i19++;
            i20 += o10;
            i21 += i14;
            i23 = i26;
        }
        int i42 = m10;
        int i43 = aCols;
        int[] iArr2 = fTail;
        int i44 = 0;
        while (true) {
            i10 = (k10 + 1) * k10;
            i11 = 4;
            if (i44 >= (((i42 + (i10 >> 1)) + 15) >>> 4) * i15) {
                break;
            }
            transpose16x16Nibbles(jArr2, i44);
            i44 += 16;
        }
        byte[] bArr2 = new byte[16];
        int i45 = 0;
        int i46 = 0;
        while (true) {
            c7 = 1;
            if (i45 >= i11) {
                break;
            }
            int i47 = iArr2[i45];
            bArr2[i46] = (byte) GF16.mul(i47, 1);
            bArr2[i46 + 1] = (byte) GF16.mul(i47, 2);
            int i48 = i46 + 3;
            bArr2[i46 + 2] = (byte) GF16.mul(i47, 4);
            i46 += 4;
            bArr2[i48] = (byte) GF16.mul(i47, 8);
            i45++;
            i11 = 4;
        }
        int i49 = 0;
        while (i49 < i15) {
            int i50 = i42;
            while (i50 < i42 + (i10 >>> 1)) {
                long j13 = jArr2[((i50 >>> 4) * i15) + i49 + (i50 & 15)];
                long j14 = j13 & 1229782938247303441L;
                long j15 = (j13 >>> c7) & 1229782938247303441L;
                long j16 = (j13 >>> 2) & 1229782938247303441L;
                long j17 = (j13 >>> 3) & 1229782938247303441L;
                int i51 = 0;
                int i52 = 0;
                for (int i53 = 4; i51 < i53; i53 = 4) {
                    int i54 = (i50 + i51) - i42;
                    int i55 = ((i54 >> 4) * i15) + i49 + (i54 & 15);
                    jArr2[i55] = jArr2[i55] ^ ((((bArr2[i52 + 1] * j15) ^ (bArr2[i52] * j14)) ^ (r30[i52 + 2] * j16)) ^ (r30[i52 + 3] * j17));
                    i51++;
                    i52 += 4;
                    bArr2 = bArr2;
                }
                i50++;
                c7 = 1;
            }
            i49 += 16;
            c7 = 1;
        }
        byte[] bArrLongToLittleEndian = Pack.longToLittleEndian(jArr2);
        for (int i56 = 0; i56 < i42; i56 += 16) {
            int i57 = 0;
            while (true) {
                int i58 = i43 - 1;
                if (i57 < i58) {
                    int i59 = 0;
                    while (true) {
                        int i60 = i59 + i56;
                        if (i60 < i42) {
                            GF16.decode(bArrLongToLittleEndian, ((((i56 * i15) >> 4) + i57) + i59) << 3, bArr, (i60 * i43) + i57, Math.min(16, i58 - i57));
                            i59++;
                        }
                    }
                    i57 += 16;
                }
            }
        }
    }

    public void computeRHS(long[] jArr, byte[] bArr, byte[] bArr2) {
        int i10;
        int[] iArr;
        int m10 = this.params.getM();
        int mVecLimbs = this.params.getMVecLimbs();
        int k10 = this.params.getK();
        int[] fTail = this.params.getFTail();
        int i11 = ((m10 - 1) & 15) << 2;
        int i12 = m10 & 15;
        if (i12 != 0) {
            long j10 = (1 << (i12 << 2)) - 1;
            int i13 = k10 * k10;
            int i14 = mVecLimbs - 1;
            int i15 = 0;
            while (i15 < i13) {
                jArr[i14] = jArr[i14] & j10;
                i15++;
                i14 += mVecLimbs;
            }
        }
        long[] jArr2 = new long[mVecLimbs];
        byte[] bArr3 = new byte[mVecLimbs << 3];
        int i16 = k10 * mVecLimbs;
        int i17 = k10 - 1;
        int i18 = i17 * mVecLimbs;
        int i19 = i18 * k10;
        while (true) {
            char c7 = 4;
            if (i17 < 0) {
                break;
            }
            int i20 = i17;
            int i21 = i18;
            int i22 = i19;
            while (i20 < k10) {
                int i23 = mVecLimbs - 1;
                long j11 = jArr2[i23];
                byte[] bArr4 = bArr3;
                int i24 = (int) ((j11 >>> i11) & 15);
                jArr2[i23] = j11 << c7;
                for (int i25 = mVecLimbs - 2; i25 >= 0; i25--) {
                    int i26 = i25 + 1;
                    jArr2[i26] = jArr2[i26] ^ (jArr2[i25] >>> 60);
                    jArr2[i25] = jArr2[i25] << c7;
                }
                Pack.longToLittleEndian(jArr2, bArr4, 0);
                int i27 = 0;
                for (int i28 = 4; i27 < i28; i28 = 4) {
                    int i29 = fTail[i27];
                    if (i29 == 0) {
                        i10 = k10;
                        iArr = fTail;
                    } else {
                        i10 = k10;
                        iArr = fTail;
                        long jMul = GF16.mul(i24, i29);
                        if ((i27 & 1) == 0) {
                            int i30 = i27 >> 1;
                            bArr4[i30] = (byte) (bArr4[i30] ^ ((byte) (jMul & 15)));
                        } else {
                            int i31 = i27 >> 1;
                            bArr4[i31] = (byte) (bArr4[i31] ^ ((byte) ((jMul & 15) << 4)));
                        }
                    }
                    i27++;
                    k10 = i10;
                    fTail = iArr;
                }
                int i32 = k10;
                int[] iArr2 = fTail;
                Pack.littleEndianToLong(bArr4, 0, jArr2);
                int i33 = i19 + i21;
                int i34 = i22 + i18;
                boolean z = i17 == i20;
                for (int i35 = 0; i35 < mVecLimbs; i35++) {
                    long j12 = jArr[i33 + i35];
                    if (!z) {
                        j12 ^= jArr[i34 + i35];
                    }
                    jArr2[i35] = jArr2[i35] ^ j12;
                }
                i20++;
                i21 += mVecLimbs;
                i22 += i16;
                bArr3 = bArr4;
                k10 = i32;
                fTail = iArr2;
                c7 = 4;
            }
            i17--;
            i18 -= mVecLimbs;
            i19 -= i16;
        }
        byte[] bArr5 = bArr3;
        Pack.longToLittleEndian(jArr2, bArr5, 0);
        for (int i36 = 0; i36 < m10; i36 += 2) {
            int i37 = i36 >> 1;
            bArr2[i36] = (byte) (bArr[i36] ^ (bArr5[i37] & 15));
            int i38 = i36 + 1;
            bArr2[i38] = (byte) (((bArr5[i37] >>> 4) & 15) ^ bArr[i38]);
        }
    }

    public void ef(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = bArr;
        int i12 = i10;
        int i13 = i11;
        int i14 = (i13 + 15) >> 4;
        long[] jArr = new long[i14];
        long[] jArr2 = new long[i14];
        long[] jArr3 = new long[i12 * i14];
        int i15 = 16;
        int k10 = (this.params.getK() * this.params.getO()) + 16;
        byte[] bArr3 = new byte[k10 >> 1];
        int i16 = k10 >> 4;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (i17 < i12) {
            int i20 = 0;
            while (i20 < i14) {
                long j10 = 0;
                int i21 = 0;
                while (i21 < i15) {
                    if ((i20 << 4) + i21 < i13) {
                        j10 |= (bArr2[r8 + i18] & 15) << (i21 << 2);
                    }
                    i21++;
                    bArr2 = bArr;
                    i15 = 16;
                }
                jArr3[i20 + i19] = j10;
                i20++;
                bArr2 = bArr;
                i15 = 16;
            }
            i17++;
            i18 += i13;
            i19 += i14;
            bArr2 = bArr;
            i15 = 16;
        }
        int i22 = 0;
        int i23 = 0;
        while (i22 < i13) {
            int iMax = Math.max(0, (i22 + i12) - i13);
            int i24 = i12 - 1;
            int iMin = Math.min(i24, i22);
            Arrays.clear(jArr);
            Arrays.clear(jArr2);
            int iMin2 = Math.min(i24, iMin + 32);
            int i25 = iMax * i14;
            int i26 = iMax;
            int i27 = i25;
            long j11 = -1;
            int i28 = 0;
            while (i26 <= iMin2) {
                long jCtCompare64 = ctCompare64(i26, i23) ^ (-1);
                int i29 = iMax;
                int i30 = i16;
                byte[] bArr4 = bArr3;
                int i31 = iMin2;
                long j12 = (i23 - i26) >> 63;
                for (int i32 = 0; i32 < i14; i32++) {
                    jArr[i32] = jArr[i32] ^ ((jCtCompare64 | (j12 & j11)) & jArr3[i27 + i32]);
                }
                int i33 = (int) ((jArr[i22 >>> 4] >>> ((i22 & 15) << 2)) & 15);
                j11 = ((-i33) >> 63) ^ (-1);
                i26++;
                i27 += i14;
                i28 = i33;
                i16 = i30;
                iMax = i29;
                bArr3 = bArr4;
                iMin2 = i31;
            }
            int i34 = iMax;
            int i35 = i16;
            byte[] bArr5 = bArr3;
            int i36 = i28;
            vecMulAddU64(i14, jArr, GF16.inv((byte) i36), jArr2);
            int i37 = i25;
            int i38 = i34;
            while (i38 <= iMin) {
                long jCtCompare642 = (ctCompare64(i38, i23) ^ (-1)) & (j11 ^ (-1));
                long j13 = jCtCompare642 ^ (-1);
                int i39 = i37;
                int i40 = 0;
                while (i40 < i14) {
                    jArr3[i39] = (j13 & jArr3[i39]) | (jCtCompare642 & jArr2[i40]);
                    i40++;
                    i39++;
                }
                i38++;
                i37 += i14;
            }
            i12 = i10;
            int i41 = i34;
            while (i41 < i12) {
                vecMulAddU64(i14, jArr2, (byte) (((int) ((jArr3[(i22 >>> 4) + i25] >>> ((i22 & 15) << 2)) & 15)) & (i41 > i23 ? -1 : 0)), jArr3, i25);
                i41++;
                i25 += i14;
            }
            if (i36 != 0) {
                i23++;
            }
            i22++;
            i13 = i11;
            i16 = i35;
            bArr3 = bArr5;
        }
        int i42 = i16;
        byte[] bArr6 = bArr3;
        int i43 = 0;
        int i44 = 0;
        int i45 = 0;
        while (i45 < i12) {
            Pack.longToLittleEndian(jArr3, i43, i42, bArr6, 0);
            GF16.decode(bArr6, 0, bArr, i44, i11);
            i44 += i11;
            i45++;
            i43 += i14;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) throws Throwable {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        byte[] bArr10;
        byte[] bArr11;
        byte[] bArr12;
        int i10;
        int i11;
        int i12;
        int i13;
        byte[] bArr13;
        byte[] bArr14;
        int i14;
        byte[] bArr15;
        int i15;
        byte[] bArr16;
        byte[] bArr17;
        byte[] bArr18;
        byte[] bArr19;
        byte[] bArr20;
        int i16;
        int i17;
        int i18;
        int i19;
        SHAKEDigest sHAKEDigest;
        long[] jArr;
        int i20;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        int i21;
        int i22;
        int k10 = this.params.getK();
        int v10 = this.params.getV();
        int o10 = this.params.getO();
        int n6 = this.params.getN();
        int m10 = this.params.getM();
        int vBytes = this.params.getVBytes();
        int oBytes = this.params.getOBytes();
        int saltBytes = this.params.getSaltBytes();
        int mVecLimbs = this.params.getMVecLimbs();
        int p1Limbs = this.params.getP1Limbs();
        int pkSeedBytes = this.params.getPkSeedBytes();
        int digestBytes = this.params.getDigestBytes();
        int skSeedBytes = this.params.getSkSeedBytes();
        byte[] bArr21 = new byte[this.params.getMBytes()];
        byte[] bArr22 = new byte[m10];
        byte[] bArr23 = new byte[m10];
        byte[] bArr24 = new byte[saltBytes];
        int i23 = k10 * vBytes;
        int rBytes = this.params.getRBytes() + i23;
        int i24 = i23;
        byte[] bArr25 = new byte[rBytes];
        int i25 = v10 * k10;
        int i26 = rBytes;
        byte[] bArr26 = new byte[i25];
        int i27 = k10 * o10;
        int i28 = k10 * n6;
        int i29 = i27 + 1;
        byte[] bArr27 = new byte[((m10 + 7) / 8) * 8 * i29];
        byte[] bArr28 = new byte[i29];
        byte[] bArr29 = new byte[i28];
        int i30 = digestBytes + saltBytes;
        byte[] bArr30 = new byte[i28];
        int i31 = i30 + skSeedBytes;
        int i32 = i28;
        int i33 = i31 + 1;
        byte[] bArr31 = bArr21;
        byte[] bArr32 = new byte[i33];
        int i34 = i33;
        int sigBytes = this.params.getSigBytes();
        byte[] bArr33 = new byte[sigBytes];
        int i35 = sigBytes;
        long[] jArr5 = new long[this.params.getP2Limbs() + p1Limbs];
        int i36 = v10 * o10;
        byte[] bArr34 = new byte[i36];
        long[] jArr6 = new long[i27 * mVecLimbs];
        int i37 = i27;
        long[] jArr7 = new long[k10 * k10 * mVecLimbs];
        SHAKEDigest sHAKEDigest2 = new SHAKEDigest(256);
        try {
            byte[] seedSk = this.privKey.getSeedSk();
            int i38 = oBytes + pkSeedBytes;
            i10 = k10;
            byte[] bArr35 = new byte[i38];
            try {
                sHAKEDigest2.update(seedSk, 0, seedSk.length);
                sHAKEDigest2.doFinal(bArr35, 0, i38);
                GF16.decode(bArr35, pkSeedBytes, bArr34, 0, i36);
                Utils.expandP1P2(this.params, jArr5, bArr35);
                int i39 = o10 * mVecLimbs;
                int i40 = 0;
                int i41 = 0;
                int i42 = 0;
                int i43 = 0;
                while (i40 < v10) {
                    byte[] bArr36 = seedSk;
                    int i44 = i41;
                    int i45 = i42;
                    int i46 = i40;
                    while (i46 < v10) {
                        if (i46 == i40) {
                            i43 += mVecLimbs;
                            i22 = v10;
                        } else {
                            i22 = v10;
                            int i47 = p1Limbs;
                            int i48 = 0;
                            while (i48 < o10) {
                                GF16Utils.mVecMulAdd(mVecLimbs, jArr5, i43, bArr34[i44 + i48], jArr5, i42 + i47);
                                GF16Utils.mVecMulAdd(mVecLimbs, jArr5, i43, bArr34[i41 + i48], jArr5, i45 + i47);
                                i48++;
                                i47 += mVecLimbs;
                            }
                            i43 += mVecLimbs;
                        }
                        i46++;
                        i44 += o10;
                        i45 += i39;
                        v10 = i22;
                    }
                    i40++;
                    i41 += o10;
                    i42 += i39;
                    seedSk = bArr36;
                }
                byte[] bArr37 = seedSk;
                i11 = v10;
                Arrays.fill(bArr35, (byte) 0);
                sHAKEDigest2.update(bArr, 0, bArr.length);
                sHAKEDigest2.doFinal(bArr32, 0, digestBytes);
                bArr24 = bArr24;
                this.random.nextBytes(bArr24);
                i12 = saltBytes;
                System.arraycopy(bArr24, 0, bArr32, digestBytes, i12);
                System.arraycopy(bArr37, 0, bArr32, i30, skSeedBytes);
                i13 = i31;
                sHAKEDigest2.update(bArr32, 0, i13);
                sHAKEDigest2.doFinal(bArr24, 0, i12);
                System.arraycopy(bArr24, 0, bArr32, digestBytes, i12);
                sHAKEDigest2.update(bArr32, 0, i30);
                bArr13 = bArr31;
                try {
                    sHAKEDigest2.doFinal(bArr13, 0, this.params.getMBytes());
                    bArr14 = bArr22;
                } catch (Throwable th2) {
                    th = th2;
                    bArr2 = bArr24;
                    bArr3 = bArr32;
                    bArr11 = bArr13;
                    bArr4 = bArr23;
                    bArr5 = bArr22;
                }
            } catch (Throwable th3) {
                th = th3;
                bArr3 = bArr32;
                bArr4 = bArr23;
                bArr5 = bArr22;
                bArr6 = bArr25;
                bArr7 = bArr26;
                bArr8 = bArr27;
                bArr9 = bArr28;
                bArr12 = bArr29;
                bArr10 = bArr30;
                bArr11 = bArr31;
                bArr2 = bArr24;
            }
        } catch (Throwable th4) {
            th = th4;
            bArr2 = bArr24;
            bArr3 = bArr32;
            bArr4 = bArr23;
            bArr5 = bArr22;
            bArr6 = bArr25;
            bArr7 = bArr26;
        }
        try {
            GF16.decode(bArr13, bArr14, m10);
            long[] jArr8 = new long[i25 * mVecLimbs];
            int i49 = i11;
            byte[] bArr38 = new byte[i49];
            int i50 = 0;
            while (true) {
                if (i50 > 255) {
                    i14 = i12;
                    bArr15 = bArr38;
                    i15 = i49;
                    bArr16 = bArr24;
                    bArr17 = bArr32;
                    bArr18 = bArr13;
                    bArr5 = bArr14;
                    bArr4 = bArr23;
                    bArr6 = bArr25;
                    bArr7 = bArr26;
                    bArr8 = bArr27;
                    bArr19 = bArr28;
                    bArr20 = bArr29;
                    i16 = i32;
                    i17 = i35;
                    i18 = i10;
                    break;
                }
                try {
                    bArr32[i13] = (byte) i50;
                    int i51 = i13;
                    int i52 = i34;
                    int i53 = 0;
                    sHAKEDigest2.update(bArr32, 0, i52);
                    byte[] bArr39 = bArr32;
                    bArr6 = bArr25;
                    int i54 = i26;
                    try {
                        sHAKEDigest2.doFinal(bArr6, 0, i54);
                        i26 = i54;
                        i18 = i10;
                        while (i53 < i18) {
                            int i55 = i50;
                            byte[] bArr40 = bArr38;
                            bArr31 = bArr13;
                            bArr7 = bArr26;
                            try {
                                GF16.decode(bArr6, i53 * vBytes, bArr7, i53 * i49, i49);
                                i53++;
                                bArr26 = bArr7;
                                i50 = i55;
                                bArr38 = bArr40;
                                bArr13 = bArr31;
                            } catch (Throwable th5) {
                                th = th5;
                                bArr2 = bArr24;
                                bArr5 = bArr14;
                                bArr3 = bArr39;
                                bArr4 = bArr23;
                                bArr8 = bArr27;
                                bArr9 = bArr28;
                                bArr12 = bArr29;
                                bArr10 = bArr30;
                                bArr11 = bArr31;
                                Arrays.fill(bArr11, (byte) 0);
                                Arrays.fill(bArr5, (byte) 0);
                                Arrays.fill(bArr4, (byte) 0);
                                Arrays.fill(bArr2, (byte) 0);
                                Arrays.fill(bArr6, (byte) 0);
                                Arrays.fill(bArr7, (byte) 0);
                                Arrays.fill(bArr8, (byte) 0);
                                Arrays.fill(bArr12, (byte) 0);
                                Arrays.fill(bArr9, (byte) 0);
                                Arrays.fill(bArr10, (byte) 0);
                                Arrays.fill(bArr3, (byte) 0);
                                throw th;
                            }
                        }
                        i19 = i50;
                        byte[] bArr41 = bArr13;
                        bArr7 = bArr26;
                        sHAKEDigest = sHAKEDigest2;
                        byte[] bArr42 = bArr14;
                        bArr15 = bArr38;
                        bArr8 = bArr27;
                        i15 = i49;
                        i14 = i12;
                        jArr = jArr8;
                        bArr16 = bArr24;
                        bArr4 = bArr23;
                        bArr29 = bArr29;
                        i20 = i24;
                        i16 = i32;
                        jArr2 = jArr5;
                        i17 = i35;
                        bArr17 = bArr39;
                        bArr18 = bArr41;
                        bArr5 = bArr42;
                        try {
                            GF16Utils.mulAddMatXMMat(mVecLimbs, bArr7, jArr5, p1Limbs, jArr6, i18, i15, o10);
                            GF16Utils.mulAddMUpperTriangularMatXMatTrans(mVecLimbs, jArr2, bArr7, jArr, i15, i18);
                            GF16Utils.mulAddMatXMMat(mVecLimbs, bArr7, jArr, jArr7, i18, i15);
                            jArr3 = jArr7;
                            computeRHS(jArr3, bArr5, bArr4);
                            jArr4 = jArr6;
                            computeA(jArr4, bArr8);
                            bArr6 = bArr6;
                            bArr19 = bArr28;
                            i21 = i37;
                            try {
                                GF16.decode(bArr6, i20, bArr19, 0, i21);
                                bArr20 = bArr29;
                            } catch (Throwable th6) {
                                th = th6;
                                bArr20 = bArr29;
                                bArr12 = bArr20;
                                bArr9 = bArr19;
                                bArr10 = bArr30;
                                bArr2 = bArr16;
                                bArr11 = bArr18;
                                bArr3 = bArr17;
                                Arrays.fill(bArr11, (byte) 0);
                                Arrays.fill(bArr5, (byte) 0);
                                Arrays.fill(bArr4, (byte) 0);
                                Arrays.fill(bArr2, (byte) 0);
                                Arrays.fill(bArr6, (byte) 0);
                                Arrays.fill(bArr7, (byte) 0);
                                Arrays.fill(bArr8, (byte) 0);
                                Arrays.fill(bArr12, (byte) 0);
                                Arrays.fill(bArr9, (byte) 0);
                                Arrays.fill(bArr10, (byte) 0);
                                Arrays.fill(bArr3, (byte) 0);
                                throw th;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            bArr6 = bArr6;
                            bArr19 = bArr28;
                            bArr20 = bArr29;
                            bArr12 = bArr20;
                            bArr9 = bArr19;
                            bArr10 = bArr30;
                            bArr2 = bArr16;
                            bArr11 = bArr18;
                            bArr3 = bArr17;
                            Arrays.fill(bArr11, (byte) 0);
                            Arrays.fill(bArr5, (byte) 0);
                            Arrays.fill(bArr4, (byte) 0);
                            Arrays.fill(bArr2, (byte) 0);
                            Arrays.fill(bArr6, (byte) 0);
                            Arrays.fill(bArr7, (byte) 0);
                            Arrays.fill(bArr8, (byte) 0);
                            Arrays.fill(bArr12, (byte) 0);
                            Arrays.fill(bArr9, (byte) 0);
                            Arrays.fill(bArr10, (byte) 0);
                            Arrays.fill(bArr3, (byte) 0);
                            throw th;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        bArr16 = bArr24;
                        bArr18 = bArr13;
                        bArr5 = bArr14;
                        bArr17 = bArr39;
                        bArr4 = bArr23;
                        bArr7 = bArr26;
                        bArr8 = bArr27;
                        bArr19 = bArr28;
                        bArr20 = bArr29;
                        bArr12 = bArr20;
                        bArr9 = bArr19;
                        bArr10 = bArr30;
                        bArr2 = bArr16;
                        bArr11 = bArr18;
                        bArr3 = bArr17;
                        Arrays.fill(bArr11, (byte) 0);
                        Arrays.fill(bArr5, (byte) 0);
                        Arrays.fill(bArr4, (byte) 0);
                        Arrays.fill(bArr2, (byte) 0);
                        Arrays.fill(bArr6, (byte) 0);
                        Arrays.fill(bArr7, (byte) 0);
                        Arrays.fill(bArr8, (byte) 0);
                        Arrays.fill(bArr12, (byte) 0);
                        Arrays.fill(bArr9, (byte) 0);
                        Arrays.fill(bArr10, (byte) 0);
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                    try {
                        if (sampleSolution(bArr8, bArr4, bArr19, bArr20)) {
                            break;
                        }
                        Arrays.fill(jArr4, 0L);
                        Arrays.fill(jArr3, 0L);
                        jArr7 = jArr3;
                        jArr6 = jArr4;
                        i37 = i21;
                        i50 = i19 + 1;
                        bArr29 = bArr20;
                        bArr28 = bArr19;
                        bArr25 = bArr6;
                        i10 = i18;
                        bArr26 = bArr7;
                        bArr27 = bArr8;
                        bArr38 = bArr15;
                        i49 = i15;
                        jArr8 = jArr;
                        i34 = i52;
                        i35 = i17;
                        jArr5 = jArr2;
                        i13 = i51;
                        bArr24 = bArr16;
                        i32 = i16;
                        bArr13 = bArr18;
                        bArr32 = bArr17;
                        i24 = i20;
                        bArr23 = bArr4;
                        bArr14 = bArr5;
                        sHAKEDigest2 = sHAKEDigest;
                        i12 = i14;
                    } catch (Throwable th9) {
                        th = th9;
                        bArr12 = bArr20;
                        bArr9 = bArr19;
                        bArr10 = bArr30;
                        bArr2 = bArr16;
                        bArr11 = bArr18;
                        bArr3 = bArr17;
                        Arrays.fill(bArr11, (byte) 0);
                        Arrays.fill(bArr5, (byte) 0);
                        Arrays.fill(bArr4, (byte) 0);
                        Arrays.fill(bArr2, (byte) 0);
                        Arrays.fill(bArr6, (byte) 0);
                        Arrays.fill(bArr7, (byte) 0);
                        Arrays.fill(bArr8, (byte) 0);
                        Arrays.fill(bArr12, (byte) 0);
                        Arrays.fill(bArr9, (byte) 0);
                        Arrays.fill(bArr10, (byte) 0);
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                } catch (Throwable th10) {
                    th = th10;
                    bArr16 = bArr24;
                    bArr17 = bArr32;
                    bArr18 = bArr13;
                    bArr5 = bArr14;
                    bArr4 = bArr23;
                    bArr6 = bArr25;
                }
            }
            int i56 = 0;
            int i57 = 0;
            int i58 = 0;
            int i59 = 0;
            while (i56 < i18) {
                bArr12 = bArr20;
                int i60 = i18;
                bArr9 = bArr19;
                try {
                    GF16Utils.matMul(bArr34, bArr20, i57, bArr15, o10, i15);
                    Bytes.xor(i15, bArr7, i58, bArr15, bArr30, i59);
                    bArr10 = bArr30;
                    try {
                        System.arraycopy(bArr12, i57, bArr10, i59 + i15, o10);
                        i56++;
                        i57 += o10;
                        i59 += n6;
                        i58 += i15;
                        bArr20 = bArr12;
                        bArr30 = bArr10;
                        bArr19 = bArr9;
                        i18 = i60;
                    } catch (Throwable th11) {
                        th = th11;
                        bArr2 = bArr16;
                        bArr11 = bArr18;
                        bArr3 = bArr17;
                        Arrays.fill(bArr11, (byte) 0);
                        Arrays.fill(bArr5, (byte) 0);
                        Arrays.fill(bArr4, (byte) 0);
                        Arrays.fill(bArr2, (byte) 0);
                        Arrays.fill(bArr6, (byte) 0);
                        Arrays.fill(bArr7, (byte) 0);
                        Arrays.fill(bArr8, (byte) 0);
                        Arrays.fill(bArr12, (byte) 0);
                        Arrays.fill(bArr9, (byte) 0);
                        Arrays.fill(bArr10, (byte) 0);
                        Arrays.fill(bArr3, (byte) 0);
                        throw th;
                    }
                } catch (Throwable th12) {
                    th = th12;
                    bArr10 = bArr30;
                    bArr2 = bArr16;
                    bArr11 = bArr18;
                    bArr3 = bArr17;
                    Arrays.fill(bArr11, (byte) 0);
                    Arrays.fill(bArr5, (byte) 0);
                    Arrays.fill(bArr4, (byte) 0);
                    Arrays.fill(bArr2, (byte) 0);
                    Arrays.fill(bArr6, (byte) 0);
                    Arrays.fill(bArr7, (byte) 0);
                    Arrays.fill(bArr8, (byte) 0);
                    Arrays.fill(bArr12, (byte) 0);
                    Arrays.fill(bArr9, (byte) 0);
                    Arrays.fill(bArr10, (byte) 0);
                    Arrays.fill(bArr3, (byte) 0);
                    throw th;
                }
            }
            bArr12 = bArr20;
            bArr9 = bArr19;
            bArr10 = bArr30;
            GF16.encode(bArr10, bArr33, i16);
            bArr2 = bArr16;
            try {
                System.arraycopy(bArr2, 0, bArr33, i17 - i14, i14);
                byte[] bArrConcatenate = Arrays.concatenate(bArr33, bArr);
                Arrays.fill(bArr18, (byte) 0);
                Arrays.fill(bArr5, (byte) 0);
                Arrays.fill(bArr4, (byte) 0);
                Arrays.fill(bArr2, (byte) 0);
                Arrays.fill(bArr6, (byte) 0);
                Arrays.fill(bArr7, (byte) 0);
                Arrays.fill(bArr8, (byte) 0);
                Arrays.fill(bArr12, (byte) 0);
                Arrays.fill(bArr9, (byte) 0);
                Arrays.fill(bArr10, (byte) 0);
                Arrays.fill(bArr17, (byte) 0);
                return bArrConcatenate;
            } catch (Throwable th13) {
                th = th13;
                bArr11 = bArr18;
                bArr3 = bArr17;
                Arrays.fill(bArr11, (byte) 0);
                Arrays.fill(bArr5, (byte) 0);
                Arrays.fill(bArr4, (byte) 0);
                Arrays.fill(bArr2, (byte) 0);
                Arrays.fill(bArr6, (byte) 0);
                Arrays.fill(bArr7, (byte) 0);
                Arrays.fill(bArr8, (byte) 0);
                Arrays.fill(bArr12, (byte) 0);
                Arrays.fill(bArr9, (byte) 0);
                Arrays.fill(bArr10, (byte) 0);
                Arrays.fill(bArr3, (byte) 0);
                throw th;
            }
        } catch (Throwable th14) {
            th = th14;
            bArr2 = bArr24;
            bArr3 = bArr32;
            bArr11 = bArr13;
            bArr5 = bArr14;
            bArr4 = bArr23;
            bArr6 = bArr25;
            bArr7 = bArr26;
            bArr8 = bArr27;
            bArr9 = bArr28;
            bArr12 = bArr29;
            bArr10 = bArr30;
            Arrays.fill(bArr11, (byte) 0);
            Arrays.fill(bArr5, (byte) 0);
            Arrays.fill(bArr4, (byte) 0);
            Arrays.fill(bArr2, (byte) 0);
            Arrays.fill(bArr6, (byte) 0);
            Arrays.fill(bArr7, (byte) 0);
            Arrays.fill(bArr8, (byte) 0);
            Arrays.fill(bArr12, (byte) 0);
            Arrays.fill(bArr9, (byte) 0);
            Arrays.fill(bArr10, (byte) 0);
            Arrays.fill(bArr3, (byte) 0);
            throw th;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (!z) {
            MayoPublicKeyParameters mayoPublicKeyParameters = (MayoPublicKeyParameters) cipherParameters;
            this.pubKey = mayoPublicKeyParameters;
            this.params = mayoPublicKeyParameters.getParameters();
            this.privKey = null;
            this.random = null;
            return;
        }
        this.pubKey = null;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.privKey = (MayoPrivateKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            this.privKey = (MayoPrivateKeyParameters) cipherParameters;
            secureRandom = CryptoServicesRegistrar.getSecureRandom();
        }
        this.random = secureRandom;
        this.params = this.privKey.getParameters();
    }

    public boolean sampleSolution(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i10;
        int i11;
        byte[] bArr5 = bArr4;
        int k10 = this.params.getK();
        int o10 = this.params.getO();
        int m10 = this.params.getM();
        int aCols = this.params.getACols();
        int i12 = k10 * o10;
        System.arraycopy(bArr3, 0, bArr5, 0, i12);
        byte[] bArr6 = new byte[m10];
        int i13 = i12 + 1;
        GF16Utils.matMul(bArr, bArr3, 0, bArr6, i13, m10);
        int i14 = i12;
        int i15 = 0;
        while (i15 < m10) {
            bArr[i14] = (byte) (bArr2[i15] ^ bArr6[i15]);
            i15++;
            i14 += i13;
        }
        ef(bArr, m10, aCols);
        int i16 = m10 - 1;
        int i17 = i16 * aCols;
        int i18 = i17;
        int i19 = 0;
        boolean z = false;
        while (true) {
            i10 = aCols - 1;
            boolean z4 = true;
            if (i19 >= i10) {
                break;
            }
            if (bArr[i18] == 0) {
                z4 = false;
            }
            z |= z4;
            i19++;
            i18++;
        }
        if (!z) {
            return false;
        }
        while (i16 >= 0) {
            int iMin = Math.min((32 / (m10 - i16)) + i16, i12);
            int i20 = i16;
            byte b10 = 0;
            while (i20 <= iMin) {
                byte b11 = (byte) ((-(bArr[i17 + i20] & 255)) >> 31);
                byte b12 = (byte) ((b10 ^ (-1)) & b11 & bArr[(i17 + aCols) - 1]);
                bArr5[i20] = (byte) (bArr5[i20] ^ b12);
                int i21 = i20;
                int i22 = i10;
                int i23 = 0;
                while (i23 < i16) {
                    byte b13 = b11;
                    long j10 = 0;
                    int i24 = 0;
                    int i25 = 0;
                    int i26 = iMin;
                    while (true) {
                        if (i24 >= 8) {
                            break;
                        }
                        j10 ^= (bArr[i21 + i25] & 255) << (i24 << 3);
                        i24++;
                        i25 += aCols;
                        m10 = m10;
                    }
                    int i27 = m10;
                    long jMulFx8 = GF16Utils.mulFx8(b12, j10);
                    int i28 = 0;
                    int i29 = 0;
                    for (i11 = 8; i28 < i11; i11 = 8) {
                        int i30 = i22 + i29;
                        bArr[i30] = (byte) (bArr[i30] ^ ((byte) ((jMulFx8 >> (i28 << 3)) & 15)));
                        i28++;
                        i29 += aCols;
                        i20 = i20;
                    }
                    i23 += 8;
                    int i31 = aCols << 3;
                    i21 += i31;
                    i22 += i31;
                    b11 = b13;
                    iMin = i26;
                    m10 = i27;
                }
                b10 = (byte) (b10 | b11);
                i20++;
                bArr5 = bArr4;
            }
            i16--;
            i17 -= aCols;
            bArr5 = bArr4;
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        int m10 = this.params.getM();
        int n6 = this.params.getN();
        int k10 = this.params.getK();
        int i10 = k10 * n6;
        int p1Limbs = this.params.getP1Limbs();
        int p2Limbs = this.params.getP2Limbs();
        int p3Limbs = this.params.getP3Limbs();
        int mBytes = this.params.getMBytes();
        int sigBytes = this.params.getSigBytes();
        int digestBytes = this.params.getDigestBytes();
        int saltBytes = this.params.getSaltBytes();
        int mVecLimbs = this.params.getMVecLimbs();
        byte[] bArr3 = new byte[mBytes];
        byte[] bArr4 = new byte[m10];
        byte[] bArr5 = new byte[m10 << 1];
        byte[] bArr6 = new byte[i10];
        int i11 = p1Limbs + p2Limbs;
        long[] jArr = new long[i11 + p3Limbs];
        byte[] bArr7 = new byte[digestBytes + saltBytes];
        byte[] encoded = this.pubKey.getEncoded();
        Utils.expandP1P2(this.params, jArr, encoded);
        Utils.unpackMVecs(encoded, this.params.getPkSeedBytes(), jArr, i11, p3Limbs / mVecLimbs, m10);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr, 0, bArr.length);
        sHAKEDigest.doFinal(bArr7, 0, digestBytes);
        sHAKEDigest.update(bArr7, 0, digestBytes);
        sHAKEDigest.update(bArr2, sigBytes - saltBytes, saltBytes);
        sHAKEDigest.doFinal(bArr3, 0, mBytes);
        GF16.decode(bArr3, bArr4, m10);
        GF16.decode(bArr2, bArr6, i10);
        long[] jArr2 = new long[k10 * k10 * mVecLimbs];
        long[] jArr3 = new long[i10 * mVecLimbs];
        MayoParameters mayoParameters = this.params;
        mayoGenericMCalculatePS(mayoParameters, jArr, p1Limbs, i11, bArr6, mayoParameters.getV(), this.params.getO(), k10, jArr3);
        mayoGenericMCalculateSPS(jArr3, bArr6, mVecLimbs, k10, n6, jArr2);
        computeRHS(jArr2, new byte[m10], bArr5);
        return Arrays.constantTimeAreEqual(m10, bArr5, 0, bArr4, 0);
    }

    private static void vecMulAddU64(int i10, long[] jArr, byte b10, long[] jArr2, int i11) {
        int iMulTable = mulTable(b10 & 255);
        for (int i12 = 0; i12 < i10; i12++) {
            long j10 = jArr[i12];
            int i13 = i11 + i12;
            jArr2[i13] = ((((j10 >>> 3) & 1229782938247303441L) * ((iMulTable >>> 24) & 15)) ^ ((((j10 & 1229782938247303441L) * (iMulTable & 255)) ^ (((j10 >>> 1) & 1229782938247303441L) * ((iMulTable >>> 8) & 15))) ^ (((j10 >>> 2) & 1229782938247303441L) * ((iMulTable >>> 16) & 15)))) ^ jArr2[i13];
        }
    }
}
