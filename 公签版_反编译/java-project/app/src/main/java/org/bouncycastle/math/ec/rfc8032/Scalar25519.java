package org.bouncycastle.math.ec.rfc8032;

import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes3.dex */
abstract class Scalar25519 {
    private static final int L0 = -50998291;
    private static final int L1 = 19280294;
    private static final int L2 = 127719000;
    private static final int L3 = -6428113;
    private static final int L4 = 5343;
    private static final long M08L = 255;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int SCALAR_BYTES = 32;
    static final int SIZE = 8;
    private static final int TARGET_LENGTH = 254;
    private static final int[] L = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};
    private static final int[] LSq = {-1424848535, -487721339, 580428573, 1745064566, -770181698, 1036971123, 461123738, -1582065343, 1268693629, -889041821, -731974758, 43769659, 0, 0, 0, 16777216};

    public static boolean checkVar(byte[] bArr, int[] iArr) {
        decode(bArr, iArr);
        return !Nat256.gte(iArr, L);
    }

    public static void decode(byte[] bArr, int[] iArr) {
        Codec.decode32(bArr, 0, iArr, 0, 8);
    }

    public static void getOrderWnafVar(int i10, byte[] bArr) {
        Wnaf.getSignedVar(L, i10, bArr);
    }

    public static void multiply128Var(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[12];
        Nat256.mul128(iArr, iArr2, iArr4);
        if (iArr2[3] < 0) {
            Nat256.addTo(L, 0, iArr4, 4, 0);
            Nat256.subFrom(iArr, 0, iArr4, 4, 0);
        }
        byte[] bArr = new byte[48];
        Codec.encode32(iArr4, 0, 12, bArr, 0);
        decode(reduce384(bArr), iArr3);
    }

    public static byte[] reduce384(byte[] bArr) {
        long jDecode24 = Codec.decode24(bArr, 32) << 4;
        long j10 = jDecode24 & 4294967295L;
        long jDecode32 = Codec.decode32(bArr, 35);
        long j11 = jDecode32 & 4294967295L;
        long jDecode242 = Codec.decode24(bArr, 39) << 4;
        long jDecode322 = Codec.decode32(bArr, 42);
        long jDecode16 = (4294967295L & (Codec.decode16(bArr, 46) << 4)) + ((jDecode322 & 4294967295L) >> 28);
        long j12 = (jDecode322 & M28L) + ((jDecode242 & 4294967295L) >> 28);
        long jDecode243 = (((Codec.decode24(bArr, 25) << 4) & 4294967295L) - (jDecode16 * (-6428113))) - (j12 * 5343);
        long j13 = (jDecode242 & M28L) + (j11 >> 28);
        long jDecode323 = (Codec.decode32(bArr, 7) & 4294967295L) - (j13 * (-50998291));
        long jDecode244 = (((Codec.decode24(bArr, 11) << 4) & 4294967295L) - (j12 * (-50998291))) - (j13 * 19280294);
        long jDecode324 = (((Codec.decode32(bArr, 14) & 4294967295L) - (jDecode16 * (-50998291))) - (j12 * 19280294)) - (j13 * 127719000);
        long jDecode245 = ((((Codec.decode24(bArr, 18) << 4) & 4294967295L) - (jDecode16 * 19280294)) - (j12 * 127719000)) - (j13 * (-6428113));
        long jDecode325 = (((Codec.decode32(bArr, 21) & 4294967295L) - (jDecode16 * 127719000)) - (j12 * (-6428113))) - (j13 * 5343);
        long j14 = (jDecode32 & M28L) + (j10 >> 28);
        long j15 = jDecode24 & M28L;
        long jDecode326 = ((Codec.decode32(bArr, 28) & 4294967295L) - (jDecode16 * 5343)) + (jDecode243 >> 28);
        long j16 = jDecode243 & M28L;
        long j17 = j15 + (jDecode326 >> 28);
        long j18 = jDecode326 & M28L;
        long j19 = j18 >>> 27;
        long j20 = j17 + j19;
        long jDecode327 = (Codec.decode32(bArr, 0) & 4294967295L) - (j20 * (-50998291));
        long j21 = (jDecode323 - (j14 * 19280294)) - (j20 * 127719000);
        long j22 = (jDecode244 - (j14 * 127719000)) - (j20 * (-6428113));
        long j23 = (jDecode324 - (j14 * (-6428113))) - (j20 * 5343);
        long jDecode246 = ((((Codec.decode24(bArr, 4) << 4) & 4294967295L) - (j14 * (-50998291))) - (j20 * 19280294)) + (jDecode327 >> 28);
        long j24 = jDecode327 & M28L;
        long j25 = j21 + (jDecode246 >> 28);
        long j26 = jDecode246 & M28L;
        long j27 = j22 + (j25 >> 28);
        long j28 = j25 & M28L;
        long j29 = j23 + (j27 >> 28);
        long j30 = j27 & M28L;
        long j31 = (jDecode245 - (j14 * 5343)) + (j29 >> 28);
        long j32 = j29 & M28L;
        long j33 = jDecode325 + (j31 >> 28);
        long j34 = j31 & M28L;
        long j35 = j16 + (j33 >> 28);
        long j36 = j33 & M28L;
        long j37 = j18 + (j35 >> 28);
        long j38 = j35 & M28L;
        long j39 = j37 >> 28;
        long j40 = j37 & M28L;
        long j41 = j39 - j19;
        long j42 = j24 + (j41 & (-50998291));
        long j43 = j26 + (j41 & 19280294) + (j42 >> 28);
        long j44 = j42 & M28L;
        long j45 = j28 + (j41 & 127719000) + (j43 >> 28);
        long j46 = j43 & M28L;
        long j47 = j30 + (j41 & (-6428113)) + (j45 >> 28);
        long j48 = j45 & M28L;
        long j49 = j32 + (j41 & 5343) + (j47 >> 28);
        long j50 = j47 & M28L;
        long j51 = j34 + (j49 >> 28);
        long j52 = j49 & M28L;
        long j53 = j36 + (j51 >> 28);
        long j54 = j51 & M28L;
        long j55 = j38 + (j53 >> 28);
        long j56 = j53 & M28L;
        long j57 = j55 & M28L;
        byte[] bArr2 = new byte[64];
        Codec.encode56(j44 | (j46 << 28), bArr2, 0);
        Codec.encode56((j50 << 28) | j48, bArr2, 7);
        Codec.encode56((j54 << 28) | j52, bArr2, 14);
        Codec.encode56((j57 << 28) | j56, bArr2, 21);
        Codec.encode32((int) (j40 + (j55 >> 28)), bArr2, 28);
        return bArr2;
    }

    public static byte[] reduce512(byte[] bArr) {
        long jDecode32 = Codec.decode32(bArr, 49);
        long j10 = jDecode32 & 4294967295L;
        long jDecode322 = Codec.decode32(bArr, 56);
        long j11 = jDecode322 & 4294967295L;
        long j12 = bArr[63] & M08L;
        long jDecode24 = (4294967295L & (Codec.decode24(bArr, 60) << 4)) + (j11 >> 28);
        long j13 = jDecode322 & M28L;
        long jDecode323 = (Codec.decode32(bArr, 28) & 4294967295L) - (jDecode24 * (-50998291));
        long jDecode242 = (((Codec.decode24(bArr, 32) << 4) & 4294967295L) - (j12 * (-50998291))) - (jDecode24 * 19280294);
        long jDecode324 = ((Codec.decode32(bArr, 35) & 4294967295L) - (j12 * 19280294)) - (jDecode24 * 127719000);
        long jDecode243 = (((Codec.decode24(bArr, 39) << 4) & 4294967295L) - (j12 * 127719000)) - (jDecode24 * (-6428113));
        long jDecode325 = ((Codec.decode32(bArr, 42) & 4294967295L) - (j12 * (-6428113))) - (jDecode24 * 5343);
        long jDecode244 = ((Codec.decode24(bArr, 25) << 4) & 4294967295L) - (j13 * (-50998291));
        long j14 = jDecode323 - (j13 * 19280294);
        long j15 = jDecode242 - (j13 * 127719000);
        long j16 = jDecode324 - (j13 * (-6428113));
        long j17 = jDecode243 - (j13 * 5343);
        long jDecode245 = ((Codec.decode24(bArr, 53) << 4) & 4294967295L) + (j10 >> 28);
        long j18 = jDecode32 & M28L;
        long jDecode326 = (Codec.decode32(bArr, 21) & 4294967295L) - (jDecode245 * (-50998291));
        long j19 = jDecode244 - (jDecode245 * 19280294);
        long j20 = j14 - (jDecode245 * 127719000);
        long j21 = j16 - (jDecode245 * 5343);
        long j22 = (j15 - (jDecode245 * (-6428113))) - (j18 * 5343);
        long jDecode246 = (((Codec.decode24(bArr, 46) << 4) & 4294967295L) - (j12 * 5343)) + (jDecode325 >> 28);
        long jDecode327 = (Codec.decode32(bArr, 14) & 4294967295L) - (jDecode246 * (-50998291));
        long jDecode247 = (((Codec.decode24(bArr, 18) << 4) & 4294967295L) - (j18 * (-50998291))) - (jDecode246 * 19280294);
        long j23 = (jDecode326 - (j18 * 19280294)) - (jDecode246 * 127719000);
        long j24 = (j19 - (j18 * 127719000)) - (jDecode246 * (-6428113));
        long j25 = (j20 - (j18 * (-6428113))) - (jDecode246 * 5343);
        long j26 = (jDecode325 & M28L) + (j17 >> 28);
        long jDecode248 = ((Codec.decode24(bArr, 11) << 4) & 4294967295L) - (j26 * (-50998291));
        long j27 = jDecode327 - (j26 * 19280294);
        long j28 = jDecode247 - (j26 * 127719000);
        long j29 = j23 - (j26 * (-6428113));
        long j30 = j24 - (j26 * 5343);
        long j31 = (j17 & M28L) + (j21 >> 28);
        long j32 = j29 - (j31 * 5343);
        long j33 = (j21 & M28L) + (j22 >> 28);
        long j34 = j22 & M28L;
        long jDecode249 = ((Codec.decode24(bArr, 4) << 4) & 4294967295L) - (j33 * (-50998291));
        long jDecode328 = ((Codec.decode32(bArr, 7) & 4294967295L) - (j31 * (-50998291))) - (j33 * 19280294);
        long j35 = (jDecode248 - (j31 * 19280294)) - (j33 * 127719000);
        long j36 = (j27 - (j31 * 127719000)) - (j33 * (-6428113));
        long j37 = (j28 - (j31 * (-6428113))) - (j33 * 5343);
        long j38 = j25 + (j30 >> 28);
        long j39 = j30 & M28L;
        long j40 = j38 & M28L;
        long j41 = j40 >>> 27;
        long j42 = j34 + (j38 >> 28) + j41;
        long jDecode329 = (Codec.decode32(bArr, 0) & 4294967295L) - (j42 * (-50998291));
        long j43 = (jDecode249 - (j42 * 19280294)) + (jDecode329 >> 28);
        long j44 = jDecode329 & M28L;
        long j45 = (jDecode328 - (j42 * 127719000)) + (j43 >> 28);
        long j46 = j43 & M28L;
        long j47 = (j35 - (j42 * (-6428113))) + (j45 >> 28);
        long j48 = j45 & M28L;
        long j49 = (j36 - (j42 * 5343)) + (j47 >> 28);
        long j50 = j47 & M28L;
        long j51 = j37 + (j49 >> 28);
        long j52 = j49 & M28L;
        long j53 = j32 + (j51 >> 28);
        long j54 = j51 & M28L;
        long j55 = j39 + (j53 >> 28);
        long j56 = j53 & M28L;
        long j57 = j40 + (j55 >> 28);
        long j58 = j55 & M28L;
        long j59 = j57 >> 28;
        long j60 = j57 & M28L;
        long j61 = j59 - j41;
        long j62 = j44 + (j61 & (-50998291));
        long j63 = j46 + (j61 & 19280294) + (j62 >> 28);
        long j64 = j62 & M28L;
        long j65 = j48 + (j61 & 127719000) + (j63 >> 28);
        long j66 = j63 & M28L;
        long j67 = j50 + (j61 & (-6428113)) + (j65 >> 28);
        long j68 = j65 & M28L;
        long j69 = j52 + (j61 & 5343) + (j67 >> 28);
        long j70 = j67 & M28L;
        long j71 = j54 + (j69 >> 28);
        long j72 = j69 & M28L;
        long j73 = j56 + (j71 >> 28);
        long j74 = j71 & M28L;
        long j75 = j58 + (j73 >> 28);
        long j76 = j73 & M28L;
        long j77 = j60 + (j75 >> 28);
        long j78 = j75 & M28L;
        byte[] bArr2 = new byte[32];
        Codec.encode56(j64 | (j66 << 28), bArr2, 0);
        Codec.encode56((j70 << 28) | j68, bArr2, 7);
        Codec.encode56(j72 | (j74 << 28), bArr2, 14);
        Codec.encode56(j76 | (j78 << 28), bArr2, 21);
        Codec.encode32((int) j77, bArr2, 28);
        return bArr2;
    }

    public static boolean reduceBasisVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10;
        int i11;
        int[] iArr4;
        int[] iArr5 = new int[16];
        System.arraycopy(LSq, 0, iArr5, 0, 16);
        int[] iArr6 = new int[16];
        Nat256.square(iArr, iArr6);
        iArr6[0] = iArr6[0] + 1;
        int[] iArr7 = new int[16];
        int[] iArr8 = L;
        Nat256.mul(iArr8, iArr, iArr7);
        int[] iArr9 = new int[16];
        int[] iArr10 = new int[4];
        System.arraycopy(iArr8, 0, iArr10, 0, 4);
        int[] iArr11 = new int[4];
        System.arraycopy(iArr, 0, iArr11, 0, 4);
        int[] iArr12 = new int[4];
        iArr12[0] = 1;
        int[] iArr13 = new int[4];
        int[] iArr14 = iArr10;
        int[] iArr15 = iArr11;
        int bitLengthPositive = ScalarUtil.getBitLengthPositive(15, iArr6);
        int i12 = 1016;
        int i13 = 15;
        while (bitLengthPositive > 254) {
            int i14 = i12 - 1;
            if (i14 < 0) {
                return false;
            }
            int bitLength = ScalarUtil.getBitLength(i13, iArr7) - bitLengthPositive;
            int i15 = bitLength & ((bitLength >> 31) ^ (-1));
            if (iArr7[i13] < 0) {
                i10 = bitLengthPositive;
                ScalarUtil.addShifted_NP(i13, i15, iArr5, iArr6, iArr7, iArr9);
                int[] iArr16 = iArr15;
                ScalarUtil.addShifted_UV(3, i15, iArr14, iArr13, iArr16, iArr12);
                iArr4 = iArr16;
                i11 = i13;
            } else {
                i10 = bitLengthPositive;
                ScalarUtil.subShifted_NP(i13, i15, iArr5, iArr6, iArr7, iArr9);
                i11 = i13;
                iArr4 = iArr15;
                ScalarUtil.subShifted_UV(3, i15, iArr14, iArr13, iArr4, iArr12);
            }
            if (ScalarUtil.lessThan(i11, iArr5, iArr6)) {
                int i16 = i10 >>> 5;
                i13 = i16;
                bitLengthPositive = ScalarUtil.getBitLengthPositive(i16, iArr5);
                iArr15 = iArr14;
                iArr14 = iArr4;
                int[] iArr17 = iArr13;
                iArr13 = iArr12;
                iArr12 = iArr17;
                int[] iArr18 = iArr6;
                iArr6 = iArr5;
                iArr5 = iArr18;
            } else {
                iArr15 = iArr4;
                i13 = i11;
                bitLengthPositive = i10;
            }
            i12 = i14;
        }
        System.arraycopy(iArr15, 0, iArr2, 0, 4);
        System.arraycopy(iArr12, 0, iArr3, 0, 4);
        return true;
    }

    public static void toSignedDigits(int i10, int[] iArr) {
        Nat.caddTo(8, (iArr[0] ^ (-1)) & 1, L, iArr);
        Nat.shiftDownBit(8, iArr, 1);
    }
}
