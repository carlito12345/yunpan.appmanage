package org.bouncycastle.math.raw;

import java.util.Random;
import l2.z;
import org.bouncycastle.util.Integers;

/* loaded from: classes3.dex */
public abstract class Mod {
    private static final int M30 = 1073741823;
    private static final long M32L = 4294967295L;

    private static int add30(int i10, int[] iArr, int[] iArr2) {
        int i11 = i10 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = iArr[i13] + iArr2[i13] + i12;
            iArr[i13] = M30 & i14;
            i12 = i14 >> 30;
        }
        int i15 = iArr[i11] + iArr2[i11] + i12;
        iArr[i11] = i15;
        return i15 >> 30;
    }

    public static void checkedModOddInverse(int[] iArr, int[] iArr2, int[] iArr3) {
        if (modOddInverse(iArr, iArr2, iArr3) == 0) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    public static void checkedModOddInverseVar(int[] iArr, int[] iArr2, int[] iArr3) {
        if (!modOddInverseVar(iArr, iArr2, iArr3)) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    private static void cnegate30(int i10, int i11, int[] iArr) {
        int i12 = i10 - 1;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = ((iArr[i14] ^ i11) - i11) + i13;
            iArr[i14] = M30 & i15;
            i13 = i15 >> 30;
        }
        iArr[i12] = ((iArr[i12] ^ i11) - i11) + i13;
    }

    private static void cnormalize30(int i10, int i11, int[] iArr, int[] iArr2) {
        int i12 = i10 - 1;
        int i13 = iArr[i12] >> 31;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = (((iArr[i15] + (iArr2[i15] & i13)) ^ i11) - i11) + i14;
            iArr[i15] = i16 & M30;
            i14 = i16 >> 30;
        }
        int i17 = (((iArr[i12] + (i13 & iArr2[i12])) ^ i11) - i11) + i14;
        iArr[i12] = i17;
        int i18 = i17 >> 31;
        int i19 = 0;
        for (int i20 = 0; i20 < i12; i20++) {
            int i21 = iArr[i20] + (iArr2[i20] & i18) + i19;
            iArr[i20] = i21 & M30;
            i19 = i21 >> 30;
        }
        iArr[i12] = iArr[i12] + (i18 & iArr2[i12]) + i19;
    }

    private static void decode30(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0;
        long j10 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 > 0) {
            while (i11 < Math.min(32, i10)) {
                j10 |= iArr[i12] << i11;
                i11 += 30;
                i12++;
            }
            iArr2[i13] = (int) j10;
            j10 >>>= 32;
            i11 -= 32;
            i10 -= 32;
            i13++;
        }
    }

    private static int divsteps30Var(int i10, int i11, int i12, int[] iArr) {
        int i13;
        int i14 = i10;
        int i15 = i11;
        int i16 = i12;
        int i17 = 30;
        int i18 = 1;
        int i19 = 0;
        int i20 = 0;
        int i21 = 1;
        while (true) {
            int iNumberOfTrailingZeros = Integers.numberOfTrailingZeros(((-1) << i17) | i16);
            int i22 = i16 >> iNumberOfTrailingZeros;
            i18 <<= iNumberOfTrailingZeros;
            i19 <<= iNumberOfTrailingZeros;
            i14 -= iNumberOfTrailingZeros;
            i17 -= iNumberOfTrailingZeros;
            if (i17 <= 0) {
                iArr[0] = i18;
                iArr[1] = i19;
                iArr[2] = i20;
                iArr[3] = i21;
                return i14;
            }
            if (i14 <= 0) {
                i14 = 2 - i14;
                int i23 = -i15;
                int i24 = -i18;
                int i25 = -i19;
                i13 = ((-1) >>> (32 - (i14 > i17 ? i17 : i14))) & 63 & (((i22 * i22) - 2) * i22 * i23);
                i22 = i23;
                i15 = i22;
                int i26 = i20;
                i20 = i24;
                i18 = i26;
                int i27 = i21;
                i21 = i25;
                i19 = i27;
            } else {
                i13 = ((-1) >>> (32 - (i14 > i17 ? i17 : i14))) & 15 & (((((i15 + 1) & 4) << 1) + i15) * (-i22));
            }
            i16 = i22 + (i15 * i13);
            i20 += i18 * i13;
            i21 += i13 * i19;
        }
    }

    private static void encode30(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0;
        long j10 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 > 0) {
            if (i11 < Math.min(30, i10)) {
                j10 |= (iArr[i12] & 4294967295L) << i11;
                i11 += 32;
                i12++;
            }
            iArr2[i13] = ((int) j10) & M30;
            j10 >>>= 30;
            i11 -= 30;
            i10 -= 30;
            i13++;
        }
    }

    private static int equalTo(int i10, int[] iArr, int i11) {
        int i12 = i11 ^ iArr[0];
        for (int i13 = 1; i13 < i10; i13++) {
            i12 |= iArr[i13];
        }
        return (((i12 >>> 1) | (i12 & 1)) - 1) >> 31;
    }

    private static boolean equalToVar(int i10, int[] iArr, int i11) {
        int i12 = i11 ^ iArr[0];
        if (i12 != 0) {
            return false;
        }
        for (int i13 = 1; i13 < i10; i13++) {
            i12 |= iArr[i13];
        }
        return i12 == 0;
    }

    private static int getMaximumDivsteps(int i10) {
        return (int) (((i10 * 188898) + (i10 < 46 ? 308405 : 181188)) >>> 16);
    }

    private static int getMaximumHDDivsteps(int i10) {
        return (int) (((i10 * 150964) + 99243) >>> 16);
    }

    private static int hddivsteps30(int i10, int i11, int i12, int[] iArr) {
        int i13 = 1073741824;
        int i14 = 1073741824;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < 30; i17++) {
            int i18 = i10 >> 31;
            int i19 = -(i12 & 1);
            int i20 = i12 - ((i11 ^ i18) & i19);
            int i21 = i16 - ((i13 ^ i18) & i19);
            int i22 = i14 - ((i15 ^ i18) & i19);
            int i23 = (i18 ^ (-1)) & i19;
            i10 = (i10 ^ i23) + 1;
            i11 += i20 & i23;
            i13 += i21 & i23;
            i15 += i23 & i22;
            i12 = i20 >> 1;
            i16 = i21 >> 1;
            i14 = i22 >> 1;
        }
        iArr[0] = i13;
        iArr[1] = i15;
        iArr[2] = i16;
        iArr[3] = i14;
        return i10;
    }

    public static int inverse32(int i10) {
        int i11 = (2 - (i10 * i10)) * i10;
        int i12 = (2 - (i10 * i11)) * i11;
        int i13 = (2 - (i10 * i12)) * i12;
        return (2 - (i10 * i13)) * i13;
    }

    public static int modOddInverse(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i10 = (iNumberOfLeadingZeros + 29) / 30;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        char c7 = 0;
        iArr6[0] = 1;
        encode30(iNumberOfLeadingZeros, iArr2, iArr8);
        encode30(iNumberOfLeadingZeros, iArr, iArr9);
        System.arraycopy(iArr9, 0, iArr7, 0, i10);
        int iInverse32 = inverse32(iArr9[0]);
        int maximumHDDivsteps = getMaximumHDDivsteps(iNumberOfLeadingZeros);
        int i11 = 0;
        int i12 = 0;
        while (i12 < maximumHDDivsteps) {
            int iHddivsteps30 = hddivsteps30(i11, iArr7[c7], iArr8[c7], iArr4);
            updateDE30(i10, iArr5, iArr6, iArr4, iInverse32, iArr9);
            updateFG30(i10, iArr7, iArr8, iArr4);
            i12 += 30;
            i11 = iHddivsteps30;
            maximumHDDivsteps = maximumHDDivsteps;
            c7 = 0;
        }
        int i13 = iArr7[i10 - 1] >> 31;
        cnegate30(i10, i13, iArr7);
        cnormalize30(i10, i13, iArr5, iArr9);
        decode30(iNumberOfLeadingZeros, iArr5, iArr3);
        return equalTo(i10, iArr7, 1) & equalTo(i10, iArr8, 0);
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static boolean modOddInverseVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i10 = (iNumberOfLeadingZeros + 29) / 30;
        int bitLength = iNumberOfLeadingZeros - Nat.getBitLength(length, iArr2);
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        iArr6[0] = 1;
        encode30(iNumberOfLeadingZeros, iArr2, iArr8);
        encode30(iNumberOfLeadingZeros, iArr, iArr9);
        System.arraycopy(iArr9, 0, iArr7, 0, i10);
        int i11 = -bitLength;
        int iInverse32 = inverse32(iArr9[0]);
        int maximumDivsteps = getMaximumDivsteps(iNumberOfLeadingZeros);
        int iTrimFG30 = i10;
        for (?? r92 = 0; !equalToVar(iTrimFG30, iArr8, r92); r92 = 0) {
            if (bitLength >= maximumDivsteps) {
                return r92;
            }
            bitLength += 30;
            int iDivsteps30Var = divsteps30Var(i11, iArr7[r92], iArr8[r92], iArr4);
            int i12 = iTrimFG30;
            updateDE30(i10, iArr5, iArr6, iArr4, iInverse32, iArr9);
            updateFG30(i12, iArr7, iArr8, iArr4);
            iTrimFG30 = trimFG30(i12, iArr7, iArr8);
            i11 = iDivsteps30Var;
            maximumDivsteps = maximumDivsteps;
        }
        int i13 = iTrimFG30;
        int i14 = iArr7[i13 - 1] >> 31;
        int iNegate30 = iArr5[i10 - 1] >> 31;
        if (iNegate30 < 0) {
            iNegate30 = add30(i10, iArr5, iArr9);
        }
        if (i14 < 0) {
            iNegate30 = negate30(i10, iArr5);
            negate30(i13, iArr7);
        }
        if (!equalToVar(i13, iArr7, 1)) {
            return false;
        }
        if (iNegate30 < 0) {
            add30(i10, iArr5, iArr9);
        }
        decode30(iNumberOfLeadingZeros, iArr5, iArr3);
        return true;
    }

    public static int modOddIsCoprime(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int i10 = (iNumberOfLeadingZeros + 29) / 30;
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[i10];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        encode30(iNumberOfLeadingZeros, iArr2, iArr5);
        encode30(iNumberOfLeadingZeros, iArr, iArr6);
        System.arraycopy(iArr6, 0, iArr4, 0, i10);
        int maximumHDDivsteps = getMaximumHDDivsteps(iNumberOfLeadingZeros);
        int iHddivsteps30 = 0;
        for (int i11 = 0; i11 < maximumHDDivsteps; i11 += 30) {
            iHddivsteps30 = hddivsteps30(iHddivsteps30, iArr4[0], iArr5[0], iArr3);
            updateFG30(i10, iArr4, iArr5, iArr3);
        }
        cnegate30(i10, iArr4[i10 - 1] >> 31, iArr4);
        return equalTo(i10, iArr5, 0) & equalTo(i10, iArr4, 1);
    }

    public static boolean modOddIsCoprimeVar(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int iNumberOfLeadingZeros = (length << 5) - Integers.numberOfLeadingZeros(iArr[length - 1]);
        int iTrimFG30 = (iNumberOfLeadingZeros + 29) / 30;
        int bitLength = iNumberOfLeadingZeros - Nat.getBitLength(length, iArr2);
        int[] iArr3 = new int[4];
        int[] iArr4 = new int[iTrimFG30];
        int[] iArr5 = new int[iTrimFG30];
        int[] iArr6 = new int[iTrimFG30];
        encode30(iNumberOfLeadingZeros, iArr2, iArr5);
        encode30(iNumberOfLeadingZeros, iArr, iArr6);
        System.arraycopy(iArr6, 0, iArr4, 0, iTrimFG30);
        int iDivsteps30Var = -bitLength;
        int maximumDivsteps = getMaximumDivsteps(iNumberOfLeadingZeros);
        while (!equalToVar(iTrimFG30, iArr5, 0)) {
            if (bitLength >= maximumDivsteps) {
                return false;
            }
            bitLength += 30;
            iDivsteps30Var = divsteps30Var(iDivsteps30Var, iArr4[0], iArr5[0], iArr3);
            updateFG30(iTrimFG30, iArr4, iArr5, iArr3);
            iTrimFG30 = trimFG30(iTrimFG30, iArr4, iArr5);
        }
        if ((iArr4[iTrimFG30 - 1] >> 31) < 0) {
            negate30(iTrimFG30, iArr4);
        }
        return equalToVar(iTrimFG30, iArr4, 1);
    }

    private static int negate30(int i10, int[] iArr) {
        int i11 = i10 - 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 - iArr[i13];
            iArr[i13] = M30 & i14;
            i12 = i14 >> 30;
        }
        int i15 = i12 - iArr[i11];
        iArr[i11] = i15;
        return i15 >> 30;
    }

    public static int[] random(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] iArrCreate = Nat.create(length);
        int i10 = length - 1;
        int i11 = iArr[i10];
        int i12 = i11 | (i11 >>> 1);
        int i13 = i12 | (i12 >>> 2);
        int i14 = i13 | (i13 >>> 4);
        int i15 = i14 | (i14 >>> 8);
        int i16 = i15 | (i15 >>> 16);
        do {
            for (int i17 = 0; i17 != length; i17++) {
                iArrCreate[i17] = random.nextInt();
            }
            iArrCreate[i10] = iArrCreate[i10] & i16;
        } while (Nat.gte(length, iArrCreate, iArr));
        return iArrCreate;
    }

    private static int trimFG30(int i10, int[] iArr, int[] iArr2) {
        int i11 = i10 - 1;
        int i12 = iArr[i11];
        int i13 = iArr2[i11];
        int i14 = i10 - 2;
        if (((i14 >> 31) | ((i12 >> 31) ^ i12) | ((i13 >> 31) ^ i13)) != 0) {
            return i10;
        }
        iArr[i14] = (i12 << 30) | iArr[i14];
        iArr2[i14] = iArr2[i14] | (i13 << 30);
        return i10 - 1;
    }

    private static void updateDE30(int i10, int[] iArr, int[] iArr2, int[] iArr3, int i11, int[] iArr4) {
        int i12 = i10;
        int i13 = iArr3[0];
        int i14 = iArr3[1];
        int i15 = iArr3[2];
        int i16 = iArr3[3];
        int i17 = i12 - 1;
        int i18 = iArr[i17] >> 31;
        int i19 = iArr2[i17] >> 31;
        int i20 = (i13 & i18) + (i14 & i19);
        int i21 = (i18 & i15) + (i19 & i16);
        int i22 = iArr4[0];
        long j10 = i13;
        long j11 = iArr[0];
        long j12 = i14;
        long j13 = iArr2[0];
        long j14 = (j12 * j13) + (j10 * j11);
        long j15 = i15;
        long j16 = i16;
        long j17 = (j13 * j16) + (j11 * j15);
        long j18 = i22;
        long j19 = i20 - (((((int) j14) * i11) + i20) & M30);
        long j20 = (j18 * j19) + j14;
        long j21 = i21 - (((((int) j17) * i11) + i21) & M30);
        long j22 = ((j18 * j21) + j17) >> 30;
        long j23 = j20 >> 30;
        int i23 = 1;
        while (i23 < i12) {
            int i24 = iArr4[i23];
            int i25 = iArr[i23];
            int i26 = iArr2[i23];
            long j24 = j21;
            int i27 = i23;
            long j25 = i25;
            long j26 = i26;
            int i28 = i17;
            long j27 = i24;
            long jC = z.c(j27, j19, (j12 * j26) + (j10 * j25), j23);
            long jC2 = z.c(j27, j24, (j26 * j16) + (j25 * j15), j22);
            int i29 = i27 - 1;
            iArr[i29] = ((int) jC) & M30;
            j23 = jC >> 30;
            iArr2[i29] = ((int) jC2) & M30;
            i23 = i27 + 1;
            j22 = jC2 >> 30;
            i17 = i28;
            j21 = j24;
            i12 = i10;
        }
        int i30 = i17;
        iArr[i30] = (int) j23;
        iArr2[i30] = (int) j22;
    }

    private static void updateFG30(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        int i11 = i10;
        int i12 = iArr3[0];
        int i13 = iArr3[1];
        int i14 = iArr3[2];
        int i15 = iArr3[3];
        long j10 = i12;
        long j11 = iArr[0];
        long j12 = i13;
        long j13 = iArr2[0];
        long j14 = i14;
        long j15 = i15;
        long j16 = ((j12 * j13) + (j10 * j11)) >> 30;
        long j17 = ((j13 * j15) + (j11 * j14)) >> 30;
        int i16 = 1;
        while (i16 < i11) {
            long j18 = iArr[i16];
            long j19 = iArr2[i16];
            long jC = z.c(j12, j19, j10 * j18, j16);
            long jC2 = z.c(j15, j19, j14 * j18, j17);
            int i17 = i16 - 1;
            iArr[i17] = ((int) jC) & M30;
            iArr2[i17] = M30 & ((int) jC2);
            j17 = jC2 >> 30;
            i16++;
            j16 = jC >> 30;
            j12 = j12;
            i11 = i10;
        }
        int i18 = i10 - 1;
        iArr[i18] = (int) j16;
        iArr2[i18] = (int) j17;
    }
}
