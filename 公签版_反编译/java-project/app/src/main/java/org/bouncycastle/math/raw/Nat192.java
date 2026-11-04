package org.bouncycastle.math.raw;

import java.math.BigInteger;
import l2.z;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public abstract class Nat192 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (j10 >>> 32);
        iArr3[1] = (int) j11;
        long j12 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (j11 >>> 32);
        iArr3[2] = (int) j12;
        long j13 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (j12 >>> 32);
        iArr3[3] = (int) j13;
        long j14 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (j13 >>> 32);
        iArr3[4] = (int) j14;
        long j15 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (j14 >>> 32);
        iArr3[5] = (int) j15;
        return (int) (j15 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L) + (j10 >>> 32);
        iArr3[1] = (int) j11;
        long j12 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L) + (j11 >>> 32);
        iArr3[2] = (int) j12;
        long j13 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L) + (j12 >>> 32);
        iArr3[3] = (int) j13;
        long j14 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L) + (j13 >>> 32);
        iArr3[4] = (int) j14;
        long j15 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L) + (j14 >>> 32);
        iArr3[5] = (int) j15;
        return (int) (j15 >>> 32);
    }

    public static int addTo(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L) + (i12 & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = (iArr[i10 + 1] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j10 >>> 32);
        iArr2[i11 + 1] = (int) j11;
        long j12 = (iArr[i10 + 2] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j11 >>> 32);
        iArr2[i11 + 2] = (int) j12;
        long j13 = (iArr[i10 + 3] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j12 >>> 32);
        iArr2[i11 + 3] = (int) j13;
        long j14 = (iArr[i10 + 4] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j13 >>> 32);
        iArr2[i11 + 4] = (int) j14;
        long j15 = (iArr[i10 + 5] & 4294967295L) + (4294967295L & iArr2[r12]) + (j14 >>> 32);
        iArr2[i11 + 5] = (int) j15;
        return (int) (j15 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L);
        int i12 = (int) j10;
        iArr[i10] = i12;
        iArr2[i11] = i12;
        long j11 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j10 >>> 32);
        int i13 = (int) j11;
        iArr[i10 + 1] = i13;
        iArr2[i11 + 1] = i13;
        long j12 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j11 >>> 32);
        int i14 = (int) j12;
        iArr[i10 + 2] = i14;
        iArr2[i11 + 2] = i14;
        long j13 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j12 >>> 32);
        int i15 = (int) j13;
        iArr[i10 + 3] = i15;
        iArr2[i11 + 3] = i15;
        long j14 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j13 >>> 32);
        int i16 = (int) j14;
        iArr[i10 + 4] = i16;
        iArr2[i11 + 4] = i16;
        long j15 = (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]) + (j14 >>> 32);
        int i17 = (int) j15;
        iArr[i10 + 5] = i17;
        iArr2[i11 + 5] = i17;
        return (int) (j15 >>> 32);
    }

    public static void copy(int[] iArr, int i10, int[] iArr2, int i11) {
        iArr2[i11] = iArr[i10];
        iArr2[i11 + 1] = iArr[i10 + 1];
        iArr2[i11 + 2] = iArr[i10 + 2];
        iArr2[i11 + 3] = iArr[i10 + 3];
        iArr2[i11 + 4] = iArr[i10 + 4];
        iArr2[i11 + 5] = iArr[i10 + 5];
    }

    public static void copy64(long[] jArr, int i10, long[] jArr2, int i11) {
        jArr2[i11] = jArr[i10];
        jArr2[i11 + 1] = jArr[i10 + 1];
        jArr2[i11 + 2] = jArr[i10 + 2];
    }

    public static int[] create() {
        return new int[6];
    }

    public static long[] create64() {
        return new long[3];
    }

    public static int[] createExt() {
        return new int[12];
    }

    public static long[] createExt64() {
        return new long[6];
    }

    public static boolean diff(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        boolean zGte = gte(iArr, i10, iArr2, i11);
        if (zGte) {
            sub(iArr, i10, iArr2, i11, iArr3, i12);
        } else {
            sub(iArr2, i11, iArr, i10, iArr3, i12);
        }
        return zGte;
    }

    public static boolean eq(int[] iArr, int[] iArr2) {
        for (int i10 = 5; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i10 = 2; i10 >= 0; i10--) {
            if (jArr[i10] != jArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            throw new IllegalArgumentException();
        }
        int[] iArrCreate = create();
        for (int i10 = 0; i10 < 6; i10++) {
            iArrCreate[i10] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrCreate;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int i10 = 0; i10 < 3; i10++) {
            jArrCreate64[i10] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return jArrCreate64;
    }

    public static int getBit(int[] iArr, int i10) {
        int i11;
        if (i10 == 0) {
            i11 = iArr[0];
        } else {
            int i12 = i10 >> 5;
            if (i12 < 0 || i12 >= 6) {
                return 0;
            }
            i11 = iArr[i12] >>> (i10 & 31);
        }
        return i11 & 1;
    }

    public static boolean gte(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 5; i12 >= 0; i12--) {
            int i13 = iArr[i10 + i12] ^ Integer.MIN_VALUE;
            int i14 = Integer.MIN_VALUE ^ iArr2[i11 + i12];
            if (i13 < i14) {
                return false;
            }
            if (i13 > i14) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < 6; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i10 = 1; i10 < 3; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i10 = 0; i10 < 6; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i10 = 0; i10 < 3; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr2[i11 + 5] & 4294967295L;
        long j16 = iArr[i10] & 4294967295L;
        long j17 = j16 * j10;
        iArr3[i12] = (int) j17;
        long j18 = (j16 * j11) + (j17 >>> 32);
        iArr3[i12 + 1] = (int) j18;
        long j19 = (j16 * j12) + (j18 >>> 32);
        iArr3[i12 + 2] = (int) j19;
        long j20 = (j16 * j13) + (j19 >>> 32);
        iArr3[i12 + 3] = (int) j20;
        long j21 = (j16 * j14) + (j20 >>> 32);
        iArr3[i12 + 4] = (int) j21;
        long j22 = (j16 * j15) + (j21 >>> 32);
        iArr3[i12 + 5] = (int) j22;
        iArr3[i12 + 6] = (int) (j22 >>> 32);
        int i13 = i12;
        int i14 = 1;
        while (i14 < 6) {
            int i15 = i13 + 1;
            long j23 = iArr[i10 + i14] & 4294967295L;
            long j24 = j15;
            long j25 = (j23 * j10) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j25;
            int i16 = i14;
            long j26 = (j23 * j11) + (iArr3[r24] & 4294967295L) + (j25 >>> 32);
            iArr3[i13 + 2] = (int) j26;
            long j27 = j12;
            long j28 = (j23 * j12) + (iArr3[r16] & 4294967295L) + (j26 >>> 32);
            iArr3[i13 + 3] = (int) j28;
            long j29 = j28 >>> 32;
            int i17 = i13;
            long j30 = (j23 * j13) + (iArr3[r12] & 4294967295L) + j29;
            iArr3[i13 + 4] = (int) j30;
            long j31 = (j23 * j14) + (iArr3[r3] & 4294967295L) + (j30 >>> 32);
            iArr3[i17 + 5] = (int) j31;
            long j32 = (j23 * j24) + (iArr3[r3] & 4294967295L) + (j31 >>> 32);
            iArr3[i17 + 6] = (int) j32;
            iArr3[i17 + 7] = (int) (j32 >>> 32);
            i14 = i16 + 1;
            i13 = i15;
            j15 = j24;
            j12 = j27;
        }
    }

    public static long mul33Add(int i10, int[] iArr, int i11, int[] iArr2, int i12, int[] iArr3, int i13) {
        long j10 = i10 & 4294967295L;
        long j11 = iArr[i11] & 4294967295L;
        long j12 = (j10 * j11) + (iArr2[i12] & 4294967295L);
        iArr3[i13] = (int) j12;
        long j13 = iArr[i11 + 1] & 4294967295L;
        long j14 = (j10 * j13) + j11 + (iArr2[i12 + 1] & 4294967295L) + (j12 >>> 32);
        iArr3[i13 + 1] = (int) j14;
        long j15 = iArr[i11 + 2] & 4294967295L;
        long j16 = (j10 * j15) + j13 + (iArr2[i12 + 2] & 4294967295L) + (j14 >>> 32);
        iArr3[i13 + 2] = (int) j16;
        long j17 = iArr[i11 + 3] & 4294967295L;
        long j18 = (j10 * j17) + j15 + (iArr2[i12 + 3] & 4294967295L) + (j16 >>> 32);
        iArr3[i13 + 3] = (int) j18;
        long j19 = iArr[i11 + 4] & 4294967295L;
        long j20 = (j10 * j19) + j17 + (iArr2[i12 + 4] & 4294967295L) + (j18 >>> 32);
        iArr3[i13 + 4] = (int) j20;
        long j21 = iArr[i11 + 5] & 4294967295L;
        long j22 = (j10 * j21) + j19 + (4294967295L & iArr2[i12 + 5]) + (j20 >>> 32);
        iArr3[i13 + 5] = (int) j22;
        return (j22 >>> 32) + j21;
    }

    public static int mul33DWordAdd(int i10, long j10, int[] iArr, int i11) {
        long j11 = i10 & 4294967295L;
        long j12 = j10 & 4294967295L;
        long j13 = (j11 * j12) + (iArr[i11] & 4294967295L);
        iArr[i11] = (int) j13;
        long j14 = j10 >>> 32;
        long j15 = (j11 * j14) + j12;
        long j16 = j15 + (iArr[r4] & 4294967295L) + (j13 >>> 32);
        iArr[i11 + 1] = (int) j16;
        long j17 = j14 + (iArr[r4] & 4294967295L) + (j16 >>> 32);
        iArr[i11 + 2] = (int) j17;
        long j18 = (j17 >>> 32) + (4294967295L & iArr[r0]);
        iArr[i11 + 3] = (int) j18;
        if ((j18 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(6, iArr, i11, 4);
    }

    public static int mul33WordAdd(int i10, int i11, int[] iArr, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = i11 & 4294967295L;
        long j12 = (j10 * j11) + (iArr[i12] & 4294967295L);
        iArr[i12] = (int) j12;
        long j13 = j11 + (iArr[r5] & 4294967295L) + (j12 >>> 32);
        iArr[i12 + 1] = (int) j13;
        long j14 = (j13 >>> 32) + (4294967295L & iArr[r0]);
        iArr[i12 + 2] = (int) j14;
        if ((j14 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(6, iArr, i12, 3);
    }

    public static int mulAddTo(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr2[i11 + 5] & 4294967295L;
        long j16 = 0;
        int i13 = 0;
        int i14 = i12;
        while (i13 < 6) {
            long j17 = iArr[i10 + i13] & 4294967295L;
            long j18 = j10;
            long j19 = (j17 * j10) + (iArr3[i14] & 4294967295L);
            iArr3[i14] = (int) j19;
            int i15 = i14 + 1;
            long j20 = (j17 * j11) + (iArr3[i15] & 4294967295L) + (j19 >>> 32);
            iArr3[i15] = (int) j20;
            long j21 = (j17 * j12) + (iArr3[r5] & 4294967295L) + (j20 >>> 32);
            iArr3[i14 + 2] = (int) j21;
            long j22 = (j17 * j13) + (iArr3[r5] & 4294967295L) + (j21 >>> 32);
            iArr3[i14 + 3] = (int) j22;
            long j23 = (j17 * j14) + (iArr3[r5] & 4294967295L) + (j22 >>> 32);
            iArr3[i14 + 4] = (int) j23;
            long j24 = (j17 * j15) + (iArr3[r5] & 4294967295L) + (j23 >>> 32);
            iArr3[i14 + 5] = (int) j24;
            long j25 = (j24 >>> 32) + (iArr3[r14] & 4294967295L) + j16;
            iArr3[i14 + 6] = (int) j25;
            j16 = j25 >>> 32;
            i13++;
            j10 = j18;
            i14 = i15;
            j11 = j11;
        }
        return (int) j16;
    }

    public static int mulWord(int i10, int[] iArr, int[] iArr2, int i11) {
        long j10 = i10 & 4294967295L;
        long j11 = 0;
        int i12 = 0;
        do {
            long j12 = ((iArr[i12] & 4294967295L) * j10) + j11;
            iArr2[i11 + i12] = (int) j12;
            j11 = j12 >>> 32;
            i12++;
        } while (i12 < 6);
        return (int) j11;
    }

    public static int mulWordAddExt(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        long j10 = i10 & 4294967295L;
        long j11 = ((iArr[i11] & 4294967295L) * j10) + (iArr2[i12] & 4294967295L);
        iArr2[i12] = (int) j11;
        long j12 = ((iArr[i11 + 1] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L) + (j11 >>> 32);
        iArr2[i12 + 1] = (int) j12;
        long j13 = ((iArr[i11 + 2] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L) + (j12 >>> 32);
        iArr2[i12 + 2] = (int) j13;
        long j14 = ((iArr[i11 + 3] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L) + (j13 >>> 32);
        iArr2[i12 + 3] = (int) j14;
        long j15 = ((iArr[i11 + 4] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L) + (j14 >>> 32);
        iArr2[i12 + 4] = (int) j15;
        long j16 = (j10 * (iArr[i11 + 5] & 4294967295L)) + (iArr2[r15] & 4294967295L) + (j15 >>> 32);
        iArr2[i12 + 5] = (int) j16;
        return (int) (j16 >>> 32);
    }

    public static int mulWordDwordAdd(int i10, long j10, int[] iArr, int i11) {
        long j11 = i10 & 4294967295L;
        long j12 = ((j10 & 4294967295L) * j11) + (iArr[i11] & 4294967295L);
        iArr[i11] = (int) j12;
        long j13 = j11 * (j10 >>> 32);
        long j14 = j13 + (iArr[r9] & 4294967295L) + (j12 >>> 32);
        iArr[i11 + 1] = (int) j14;
        long j15 = j14 >>> 32;
        long j16 = j15 + (4294967295L & iArr[r0]);
        iArr[i11 + 2] = (int) j16;
        if ((j16 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(6, iArr, i11, 3);
    }

    public static void square(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = iArr[i10] & 4294967295L;
        int i12 = 0;
        int i13 = 12;
        int i14 = 5;
        while (true) {
            int i15 = i14 - 1;
            long j11 = iArr[i10 + i14] & 4294967295L;
            long j12 = j11 * j11;
            iArr2[(i13 - 1) + i11] = (i12 << 31) | ((int) (j12 >>> 33));
            i13 -= 2;
            iArr2[i11 + i13] = (int) (j12 >>> 1);
            i12 = (int) j12;
            if (i15 <= 0) {
                long j13 = j10 * j10;
                long j14 = (j13 >>> 33) | ((i12 << 31) & 4294967295L);
                iArr2[i11] = (int) j13;
                int i16 = ((int) (j13 >>> 32)) & 1;
                long j15 = iArr[i10 + 1] & 4294967295L;
                long j16 = j14 + (j15 * j10);
                int i17 = (int) j16;
                iArr2[i11 + 1] = (i17 << 1) | i16;
                int i18 = i17 >>> 31;
                long j17 = (iArr2[r12] & 4294967295L) + (j16 >>> 32);
                long j18 = iArr[i10 + 2] & 4294967295L;
                long j19 = j17 + (j18 * j10);
                int i19 = (int) j19;
                iArr2[i11 + 2] = (i19 << 1) | i18;
                long jC = z.c(j18, j15, j19 >>> 32, iArr2[r20] & 4294967295L);
                long j20 = (iArr2[r7] & 4294967295L) + (jC >>> 32);
                long j21 = iArr[i10 + 3] & 4294967295L;
                long j22 = (iArr2[r35] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (iArr2[r8] & 4294967295L) + (j22 >>> 32);
                long j25 = j22 & 4294967295L;
                long j26 = (j21 * j10) + (jC & 4294967295L);
                int i20 = (int) j26;
                iArr2[i11 + 3] = (i20 << 1) | (i19 >>> 31);
                long jC2 = z.c(j21, j15, j26 >>> 32, j23);
                long jC3 = z.c(j21, j18, jC2 >>> 32, j25);
                long j27 = j24 + (jC3 >>> 32);
                long j28 = jC3 & 4294967295L;
                long j29 = iArr[i10 + 4] & 4294967295L;
                long j30 = (iArr2[r38] & 4294967295L) + (j27 >>> 32);
                long j31 = j27 & 4294967295L;
                long j32 = (iArr2[r5] & 4294967295L) + (j30 >>> 32);
                long j33 = j30 & 4294967295L;
                long j34 = (j29 * j10) + (jC2 & 4294967295L);
                int i21 = (int) j34;
                iArr2[i11 + 4] = (i20 >>> 31) | (i21 << 1);
                int i22 = i21 >>> 31;
                long jC4 = z.c(j29, j15, j34 >>> 32, j28);
                long jC5 = z.c(j29, j18, jC4 >>> 32, j31);
                long jC6 = z.c(j29, j21, jC5 >>> 32, j33);
                long j35 = jC5 & 4294967295L;
                long j36 = j32 + (jC6 >>> 32);
                long j37 = iArr[i10 + 5] & 4294967295L;
                long j38 = (iArr2[r9] & 4294967295L) + (j36 >>> 32);
                long j39 = j36 & 4294967295L;
                long j40 = (j10 * j37) + (jC4 & 4294967295L);
                int i23 = (int) j40;
                iArr2[i11 + 5] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                long jC7 = z.c(j37, j15, j40 >>> 32, j35);
                long jC8 = z.c(j37, j18, jC7 >>> 32, jC6 & 4294967295L);
                long jC9 = z.c(j37, j21, jC8 >>> 32, j39);
                long jC10 = z.c(j37, j29, jC9 >>> 32, 4294967295L & j38);
                long j41 = (iArr2[r5] & 4294967295L) + (j38 >>> 32) + (jC10 >>> 32);
                int i25 = (int) jC7;
                iArr2[i11 + 6] = (i25 << 1) | i24;
                int i26 = i25 >>> 31;
                int i27 = (int) jC8;
                iArr2[i11 + 7] = i26 | (i27 << 1);
                int i28 = i27 >>> 31;
                int i29 = (int) jC9;
                iArr2[i11 + 8] = i28 | (i29 << 1);
                int i30 = i29 >>> 31;
                int i31 = (int) jC10;
                iArr2[i11 + 9] = i30 | (i31 << 1);
                int i32 = i31 >>> 31;
                int i33 = (int) j41;
                iArr2[i11 + 10] = i32 | (i33 << 1);
                int i34 = i33 >>> 31;
                int i35 = i11 + 11;
                iArr2[i35] = i34 | ((iArr2[i35] + ((int) (j41 >>> 32))) << 1);
                return;
            }
            i14 = i15;
        }
    }

    public static int sub(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = (iArr[i10] & 4294967295L) - (iArr2[i11] & 4294967295L);
        iArr3[i12] = (int) j10;
        long j11 = ((iArr[i10 + 1] & 4294967295L) - (iArr2[i11 + 1] & 4294967295L)) + (j10 >> 32);
        iArr3[i12 + 1] = (int) j11;
        long j12 = ((iArr[i10 + 2] & 4294967295L) - (iArr2[i11 + 2] & 4294967295L)) + (j11 >> 32);
        iArr3[i12 + 2] = (int) j12;
        long j13 = ((iArr[i10 + 3] & 4294967295L) - (iArr2[i11 + 3] & 4294967295L)) + (j12 >> 32);
        iArr3[i12 + 3] = (int) j13;
        long j14 = ((iArr[i10 + 4] & 4294967295L) - (iArr2[i11 + 4] & 4294967295L)) + (j13 >> 32);
        iArr3[i12 + 4] = (int) j14;
        long j15 = ((iArr[i10 + 5] & 4294967295L) - (iArr2[i11 + 5] & 4294967295L)) + (j14 >> 32);
        iArr3[i12 + 5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = ((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L)) + (j10 >> 32);
        iArr3[1] = (int) j11;
        long j12 = (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L)) + (j11 >> 32);
        iArr3[2] = (int) j12;
        long j13 = (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L)) + (j12 >> 32);
        iArr3[3] = (int) j13;
        long j14 = (((iArr3[4] & 4294967295L) - (iArr[4] & 4294967295L)) - (iArr2[4] & 4294967295L)) + (j13 >> 32);
        iArr3[4] = (int) j14;
        long j15 = (((iArr3[5] & 4294967295L) - (iArr[5] & 4294967295L)) - (iArr2[5] & 4294967295L)) + (j14 >> 32);
        iArr3[5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static int subFrom(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = (iArr2[i11] & 4294967295L) - (iArr[i10] & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = ((iArr2[r5] & 4294967295L) - (iArr[i10 + 1] & 4294967295L)) + (j10 >> 32);
        iArr2[i11 + 1] = (int) j11;
        long j12 = ((iArr2[r5] & 4294967295L) - (iArr[i10 + 2] & 4294967295L)) + (j11 >> 32);
        iArr2[i11 + 2] = (int) j12;
        long j13 = ((iArr2[r5] & 4294967295L) - (iArr[i10 + 3] & 4294967295L)) + (j12 >> 32);
        iArr2[i11 + 3] = (int) j13;
        long j14 = ((iArr2[r5] & 4294967295L) - (iArr[i10 + 4] & 4294967295L)) + (j13 >> 32);
        iArr2[i11 + 4] = (int) j14;
        long j15 = ((iArr2[r13] & 4294967295L) - (iArr[i10 + 5] & 4294967295L)) + (j14 >> 32);
        iArr2[i11 + 5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[24];
        for (int i10 = 0; i10 < 6; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                Pack.intToBigEndian(i11, bArr, (5 - i10) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[24];
        for (int i10 = 0; i10 < 3; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (2 - i10) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (j10 >>> 32);
        iArr2[1] = (int) j11;
        long j12 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (j11 >>> 32);
        iArr2[2] = (int) j12;
        long j13 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (j12 >>> 32);
        iArr2[3] = (int) j13;
        long j14 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (j13 >>> 32);
        iArr2[4] = (int) j14;
        long j15 = (iArr[5] & 4294967295L) + (4294967295L & iArr2[5]) + (j14 >>> 32);
        iArr2[5] = (int) j15;
        return (int) (j15 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i10 = 5; i10 >= 0; i10--) {
            int i11 = iArr[i10] ^ Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE ^ iArr2[i10];
            if (i11 < i12) {
                return false;
            }
            if (i11 > i12) {
                return true;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr[0] & 4294967295L;
        long j17 = j16 * j10;
        iArr3[0] = (int) j17;
        char c7 = ' ';
        long j18 = (j16 * j11) + (j17 >>> 32);
        iArr3[1] = (int) j18;
        long j19 = (j16 * j12) + (j18 >>> 32);
        iArr3[2] = (int) j19;
        long j20 = (j16 * j13) + (j19 >>> 32);
        iArr3[3] = (int) j20;
        long j21 = (j16 * j14) + (j20 >>> 32);
        iArr3[4] = (int) j21;
        long j22 = (j16 * j15) + (j21 >>> 32);
        iArr3[5] = (int) j22;
        iArr3[6] = (int) (j22 >>> 32);
        int i10 = 1;
        for (int i11 = 6; i10 < i11; i11 = 6) {
            long j23 = iArr[i10] & 4294967295L;
            long j24 = (j23 * j10) + (iArr3[i10] & 4294967295L);
            long j25 = j10;
            iArr3[i10] = (int) j24;
            int i12 = i10 + 1;
            long j26 = j11;
            long j27 = (j23 * j11) + (iArr3[i12] & 4294967295L) + (j24 >>> c7);
            iArr3[i12] = (int) j27;
            long j28 = (j23 * j12) + (iArr3[r6] & 4294967295L) + (j27 >>> 32);
            iArr3[i10 + 2] = (int) j28;
            long j29 = (j23 * j13) + (iArr3[r6] & 4294967295L) + (j28 >>> 32);
            iArr3[i10 + 3] = (int) j29;
            long j30 = (j23 * j14) + (iArr3[r6] & 4294967295L) + (j29 >>> 32);
            iArr3[i10 + 4] = (int) j30;
            c7 = ' ';
            long j31 = j30 >>> 32;
            long j32 = (j23 * j15) + (iArr3[r3] & 4294967295L) + j31;
            iArr3[i10 + 5] = (int) j32;
            iArr3[i10 + 6] = (int) (j32 >>> 32);
            j10 = j25;
            i10 = i12;
            j11 = j26;
        }
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = 0;
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = 0;
        while (i10 < 6) {
            long j17 = j15;
            long j18 = iArr[i10] & 4294967295L;
            long j19 = j10;
            long j20 = (iArr3[i10] & 4294967295L) + (j18 * j10);
            iArr3[i10] = (int) j20;
            int i11 = i10 + 1;
            long j21 = j11;
            long j22 = (j18 * j11) + (iArr3[i11] & 4294967295L) + (j20 >>> 32);
            iArr3[i11] = (int) j22;
            long j23 = (j18 * j12) + (iArr3[r6] & 4294967295L) + (j22 >>> 32);
            iArr3[i10 + 2] = (int) j23;
            long j24 = (j18 * j13) + (iArr3[r6] & 4294967295L) + (j23 >>> 32);
            iArr3[i10 + 3] = (int) j24;
            long j25 = (j18 * j14) + (iArr3[r6] & 4294967295L) + (j24 >>> 32);
            iArr3[i10 + 4] = (int) j25;
            long j26 = (j18 * j17) + (iArr3[r6] & 4294967295L) + (j25 >>> 32);
            iArr3[i10 + 5] = (int) j26;
            long j27 = (j26 >>> 32) + (iArr3[r0] & 4294967295L) + j16;
            iArr3[i10 + 6] = (int) j27;
            j16 = j27 >>> 32;
            i10 = i11;
            j15 = j17;
            j10 = j19;
            j11 = j21;
        }
        return (int) j16;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i10 = 12;
        int i11 = 5;
        int i12 = 0;
        while (true) {
            int i13 = i11 - 1;
            long j11 = iArr[i11] & 4294967295L;
            long j12 = j11 * j11;
            iArr2[i10 - 1] = (i12 << 31) | ((int) (j12 >>> 33));
            i10 -= 2;
            iArr2[i10] = (int) (j12 >>> 1);
            i12 = (int) j12;
            if (i13 <= 0) {
                long j13 = j10 * j10;
                long j14 = (j13 >>> 33) | ((i12 << 31) & 4294967295L);
                iArr2[0] = (int) j13;
                long j15 = iArr[1] & 4294967295L;
                long j16 = j14 + (j15 * j10);
                int i14 = (int) j16;
                iArr2[1] = (i14 << 1) | (((int) (j13 >>> 32)) & 1);
                int i15 = i14 >>> 31;
                long j17 = (iArr2[2] & 4294967295L) + (j16 >>> 32);
                long j18 = iArr[2] & 4294967295L;
                long j19 = j17 + (j18 * j10);
                int i16 = (int) j19;
                iArr2[2] = (i16 << 1) | i15;
                long jC = z.c(j18, j15, j19 >>> 32, iArr2[3] & 4294967295L);
                long j20 = (iArr2[4] & 4294967295L) + (jC >>> 32);
                long j21 = iArr[3] & 4294967295L;
                long j22 = (iArr2[5] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (iArr2[6] & 4294967295L) + (j22 >>> 32);
                long j25 = (j21 * j10) + (jC & 4294967295L);
                int i17 = (int) j25;
                iArr2[3] = (i17 << 1) | (i16 >>> 31);
                long jC2 = z.c(j21, j15, j25 >>> 32, j23);
                long jC3 = z.c(j21, j18, jC2 >>> 32, j22 & 4294967295L);
                long j26 = j24 + (jC3 >>> 32);
                long j27 = jC3 & 4294967295L;
                long j28 = iArr[4] & 4294967295L;
                long j29 = (iArr2[7] & 4294967295L) + (j26 >>> 32);
                long j30 = j26 & 4294967295L;
                long j31 = (iArr2[8] & 4294967295L) + (j29 >>> 32);
                long j32 = j29 & 4294967295L;
                long j33 = (j28 * j10) + (jC2 & 4294967295L);
                int i18 = (int) j33;
                iArr2[4] = (i18 << 1) | (i17 >>> 31);
                int i19 = i18 >>> 31;
                long jC4 = z.c(j28, j15, j33 >>> 32, j27);
                long jC5 = z.c(j28, j18, jC4 >>> 32, j30);
                long jC6 = z.c(j28, j21, jC5 >>> 32, j32);
                long j34 = jC5 & 4294967295L;
                long j35 = j31 + (jC6 >>> 32);
                long j36 = iArr[5] & 4294967295L;
                long j37 = (iArr2[9] & 4294967295L) + (j35 >>> 32);
                long j38 = j35 & 4294967295L;
                long j39 = (iArr2[10] & 4294967295L) + (j37 >>> 32);
                long j40 = 4294967295L & j37;
                long j41 = (j36 * j10) + (jC4 & 4294967295L);
                int i20 = (int) j41;
                iArr2[5] = (i20 << 1) | i19;
                long jC7 = z.c(j36, j15, j41 >>> 32, j34);
                long jC8 = z.c(j36, j18, jC7 >>> 32, jC6 & 4294967295L);
                long jC9 = z.c(j36, j21, jC8 >>> 32, j38);
                long jC10 = z.c(j36, j28, jC9 >>> 32, j40);
                long j42 = j39 + (jC10 >>> 32);
                int i21 = (int) jC7;
                iArr2[6] = (i21 << 1) | (i20 >>> 31);
                int i22 = (int) jC8;
                iArr2[7] = (i21 >>> 31) | (i22 << 1);
                int i23 = (int) jC9;
                iArr2[8] = (i23 << 1) | (i22 >>> 31);
                int i24 = i23 >>> 31;
                int i25 = (int) jC10;
                iArr2[9] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j42;
                iArr2[10] = i26 | (i27 << 1);
                iArr2[11] = (i27 >>> 31) | ((iArr2[11] + ((int) (j42 >>> 32))) << 1);
                return;
            }
            i11 = i13;
        }
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = (iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L);
        iArr3[0] = (int) j10;
        long j11 = ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L)) + (j10 >> 32);
        iArr3[1] = (int) j11;
        long j12 = ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L)) + (j11 >> 32);
        iArr3[2] = (int) j12;
        long j13 = ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L)) + (j12 >> 32);
        iArr3[3] = (int) j13;
        long j14 = ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L)) + (j13 >> 32);
        iArr3[4] = (int) j14;
        long j15 = ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L)) + (j14 >> 32);
        iArr3[5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j10 = (iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L)) + (j10 >> 32);
        iArr2[1] = (int) j11;
        long j12 = ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L)) + (j11 >> 32);
        iArr2[2] = (int) j12;
        long j13 = ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L)) + (j12 >> 32);
        iArr2[3] = (int) j13;
        long j14 = ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L)) + (j13 >> 32);
        iArr2[4] = (int) j14;
        long j15 = ((iArr2[5] & 4294967295L) - (4294967295L & iArr[5])) + (j14 >> 32);
        iArr2[5] = (int) j15;
        return (int) (j15 >> 32);
    }
}
