package org.bouncycastle.math.raw;

import java.math.BigInteger;
import l2.z;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public abstract class Nat256 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L);
        iArr3[i12] = (int) j10;
        long j11 = (iArr[i10 + 1] & 4294967295L) + (iArr2[i11 + 1] & 4294967295L) + (j10 >>> 32);
        iArr3[i12 + 1] = (int) j11;
        long j12 = (iArr[i10 + 2] & 4294967295L) + (iArr2[i11 + 2] & 4294967295L) + (j11 >>> 32);
        iArr3[i12 + 2] = (int) j12;
        long j13 = (iArr[i10 + 3] & 4294967295L) + (iArr2[i11 + 3] & 4294967295L) + (j12 >>> 32);
        iArr3[i12 + 3] = (int) j13;
        long j14 = (iArr[i10 + 4] & 4294967295L) + (iArr2[i11 + 4] & 4294967295L) + (j13 >>> 32);
        iArr3[i12 + 4] = (int) j14;
        long j15 = (iArr[i10 + 5] & 4294967295L) + (iArr2[i11 + 5] & 4294967295L) + (j14 >>> 32);
        iArr3[i12 + 5] = (int) j15;
        long j16 = (iArr[i10 + 6] & 4294967295L) + (iArr2[i11 + 6] & 4294967295L) + (j15 >>> 32);
        iArr3[i12 + 6] = (int) j16;
        long j17 = (iArr[i10 + 7] & 4294967295L) + (iArr2[i11 + 7] & 4294967295L) + (j16 >>> 32);
        iArr3[i12 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addBothTo(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = (iArr[i10] & 4294967295L) + (iArr2[i11] & 4294967295L) + (iArr3[i12] & 4294967295L);
        iArr3[i12] = (int) j10;
        long j11 = (iArr[i10 + 1] & 4294967295L) + (iArr2[i11 + 1] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j10 >>> 32);
        iArr3[i12 + 1] = (int) j11;
        long j12 = (iArr[i10 + 2] & 4294967295L) + (iArr2[i11 + 2] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j11 >>> 32);
        iArr3[i12 + 2] = (int) j12;
        long j13 = (iArr[i10 + 3] & 4294967295L) + (iArr2[i11 + 3] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j12 >>> 32);
        iArr3[i12 + 3] = (int) j13;
        long j14 = (iArr[i10 + 4] & 4294967295L) + (iArr2[i11 + 4] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j13 >>> 32);
        iArr3[i12 + 4] = (int) j14;
        long j15 = (iArr[i10 + 5] & 4294967295L) + (iArr2[i11 + 5] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j14 >>> 32);
        iArr3[i12 + 5] = (int) j15;
        long j16 = (iArr[i10 + 6] & 4294967295L) + (iArr2[i11 + 6] & 4294967295L) + (iArr3[r7] & 4294967295L) + (j15 >>> 32);
        iArr3[i12 + 6] = (int) j16;
        long j17 = (iArr[i10 + 7] & 4294967295L) + (iArr2[i11 + 7] & 4294967295L) + (iArr3[r15] & 4294967295L) + (j16 >>> 32);
        iArr3[i12 + 7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j15 = (iArr[i10 + 5] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j14 >>> 32);
        iArr2[i11 + 5] = (int) j15;
        long j16 = (iArr[i10 + 6] & 4294967295L) + (iArr2[r6] & 4294967295L) + (j15 >>> 32);
        iArr2[i11 + 6] = (int) j16;
        long j17 = (iArr[i10 + 7] & 4294967295L) + (4294967295L & iArr2[r12]) + (j16 >>> 32);
        iArr2[i11 + 7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j15 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j14 >>> 32);
        int i17 = (int) j15;
        iArr[i10 + 5] = i17;
        iArr2[i11 + 5] = i17;
        long j16 = (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L) + (j15 >>> 32);
        int i18 = (int) j16;
        iArr[i10 + 6] = i18;
        iArr2[i11 + 6] = i18;
        long j17 = (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]) + (j16 >>> 32);
        int i19 = (int) j17;
        iArr[i10 + 7] = i19;
        iArr2[i11 + 7] = i19;
        return (int) (j17 >>> 32);
    }

    public static void copy(int[] iArr, int i10, int[] iArr2, int i11) {
        iArr2[i11] = iArr[i10];
        iArr2[i11 + 1] = iArr[i10 + 1];
        iArr2[i11 + 2] = iArr[i10 + 2];
        iArr2[i11 + 3] = iArr[i10 + 3];
        iArr2[i11 + 4] = iArr[i10 + 4];
        iArr2[i11 + 5] = iArr[i10 + 5];
        iArr2[i11 + 6] = iArr[i10 + 6];
        iArr2[i11 + 7] = iArr[i10 + 7];
    }

    public static void copy64(long[] jArr, int i10, long[] jArr2, int i11) {
        jArr2[i11] = jArr[i10];
        jArr2[i11 + 1] = jArr[i10 + 1];
        jArr2[i11 + 2] = jArr[i10 + 2];
        jArr2[i11 + 3] = jArr[i10 + 3];
    }

    public static int[] create() {
        return new int[8];
    }

    public static long[] create64() {
        return new long[4];
    }

    public static int[] createExt() {
        return new int[16];
    }

    public static long[] createExt64() {
        return new long[8];
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
        for (int i10 = 7; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i10 = 3; i10 >= 0; i10--) {
            if (jArr[i10] != jArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] iArrCreate = create();
        for (int i10 = 0; i10 < 8; i10++) {
            iArrCreate[i10] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrCreate;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int i10 = 0; i10 < 4; i10++) {
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
            if ((i10 & 255) != i10) {
                return 0;
            }
            i11 = iArr[i10 >>> 5] >>> (i10 & 31);
        }
        return i11 & 1;
    }

    public static boolean gte(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 7; i12 >= 0; i12--) {
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
        for (int i10 = 1; i10 < 8; i10++) {
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
        for (int i10 = 1; i10 < 4; i10++) {
            if (jArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i10 = 0; i10 < 8; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i10 = 0; i10 < 4; i10++) {
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
        long j16 = iArr2[i11 + 6] & 4294967295L;
        long j17 = iArr[i10] & 4294967295L;
        long j18 = j17 * j10;
        iArr3[i12] = (int) j18;
        long j19 = (j17 * j11) + (j18 >>> 32);
        iArr3[i12 + 1] = (int) j19;
        long j20 = (j17 * j12) + (j19 >>> 32);
        iArr3[i12 + 2] = (int) j20;
        long j21 = (j17 * j13) + (j20 >>> 32);
        iArr3[i12 + 3] = (int) j21;
        long j22 = (j17 * j14) + (j21 >>> 32);
        iArr3[i12 + 4] = (int) j22;
        long j23 = (j17 * j15) + (j22 >>> 32);
        iArr3[i12 + 5] = (int) j23;
        long j24 = (j17 * j16) + (j23 >>> 32);
        iArr3[i12 + 6] = (int) j24;
        long j25 = j24 >>> 32;
        long j26 = iArr2[i11 + 7] & 4294967295L;
        long j27 = (j17 * j26) + j25;
        iArr3[i12 + 7] = (int) j27;
        iArr3[i12 + 8] = (int) (j27 >>> 32);
        int i13 = i12;
        int i14 = 1;
        while (i14 < 8) {
            int i15 = i13 + 1;
            long j28 = iArr[i10 + i14] & 4294967295L;
            long j29 = j26;
            int i16 = i14;
            long j30 = (j28 * j10) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j30;
            long j31 = (j28 * j11) + (iArr3[r16] & 4294967295L) + (j30 >>> 32);
            iArr3[i13 + 2] = (int) j31;
            long j32 = j12;
            long j33 = (j28 * j12) + (iArr3[r16] & 4294967295L) + (j31 >>> 32);
            iArr3[i13 + 3] = (int) j33;
            int i17 = i13;
            long j34 = (j28 * j13) + (iArr3[r6] & 4294967295L) + (j33 >>> 32);
            iArr3[i13 + 4] = (int) j34;
            long j35 = (j28 * j14) + (iArr3[r5] & 4294967295L) + (j34 >>> 32);
            iArr3[i17 + 5] = (int) j35;
            long j36 = (j28 * j15) + (iArr3[r5] & 4294967295L) + (j35 >>> 32);
            iArr3[i17 + 6] = (int) j36;
            long j37 = (j28 * j16) + (iArr3[r5] & 4294967295L) + (j36 >>> 32);
            iArr3[i17 + 7] = (int) j37;
            long j38 = j37 >>> 32;
            long j39 = (j28 * j29) + (iArr3[r3] & 4294967295L) + j38;
            iArr3[i17 + 8] = (int) j39;
            iArr3[i17 + 9] = (int) (j39 >>> 32);
            i14 = i16 + 1;
            i13 = i15;
            j12 = j32;
            j26 = j29;
        }
    }

    public static void mul128(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr[0] & 4294967295L;
        long j11 = iArr[1] & 4294967295L;
        long j12 = iArr[2] & 4294967295L;
        long j13 = iArr[3] & 4294967295L;
        long j14 = iArr[4] & 4294967295L;
        long j15 = iArr[5] & 4294967295L;
        long j16 = iArr[6] & 4294967295L;
        long j17 = iArr[7] & 4294967295L;
        long j18 = iArr2[0] & 4294967295L;
        long j19 = j18 * j10;
        iArr3[0] = (int) j19;
        char c7 = ' ';
        long j20 = (j18 * j11) + (j19 >>> 32);
        iArr3[1] = (int) j20;
        long j21 = (j18 * j12) + (j20 >>> 32);
        iArr3[2] = (int) j21;
        long j22 = (j18 * j13) + (j21 >>> 32);
        iArr3[3] = (int) j22;
        long j23 = (j18 * j14) + (j22 >>> 32);
        iArr3[4] = (int) j23;
        long j24 = (j18 * j15) + (j23 >>> 32);
        iArr3[5] = (int) j24;
        long j25 = (j18 * j16) + (j24 >>> 32);
        iArr3[6] = (int) j25;
        long j26 = (j18 * j17) + (j25 >>> 32);
        iArr3[7] = (int) j26;
        iArr3[8] = (int) (j26 >>> 32);
        int i10 = 1;
        for (int i11 = 4; i10 < i11; i11 = 4) {
            long j27 = iArr2[i10] & 4294967295L;
            long j28 = (j27 * j10) + (iArr3[i10] & 4294967295L);
            long j29 = j10;
            iArr3[i10] = (int) j28;
            int i12 = i10 + 1;
            long j30 = j11;
            long j31 = (j27 * j11) + (iArr3[i12] & 4294967295L) + (j28 >>> c7);
            iArr3[i12] = (int) j31;
            long j32 = (j27 * j12) + (iArr3[r6] & 4294967295L) + (j31 >>> 32);
            iArr3[i10 + 2] = (int) j32;
            long j33 = (j27 * j13) + (iArr3[r6] & 4294967295L) + (j32 >>> 32);
            iArr3[i10 + 3] = (int) j33;
            long j34 = (j27 * j14) + (iArr3[r6] & 4294967295L) + (j33 >>> 32);
            iArr3[i10 + 4] = (int) j34;
            long j35 = (j27 * j15) + (iArr3[r6] & 4294967295L) + (j34 >>> 32);
            iArr3[i10 + 5] = (int) j35;
            long j36 = (j27 * j16) + (iArr3[r6] & 4294967295L) + (j35 >>> 32);
            iArr3[i10 + 6] = (int) j36;
            c7 = ' ';
            long j37 = j36 >>> 32;
            long j38 = (j27 * j17) + (iArr3[r3] & 4294967295L) + j37;
            iArr3[i10 + 7] = (int) j38;
            iArr3[i10 + 8] = (int) (j38 >>> 32);
            j10 = j29;
            i10 = i12;
            j11 = j30;
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
        long j22 = (j10 * j21) + j19 + (iArr2[i12 + 5] & 4294967295L) + (j20 >>> 32);
        iArr3[i13 + 5] = (int) j22;
        long j23 = iArr[i11 + 6] & 4294967295L;
        long j24 = (j10 * j23) + j21 + (iArr2[i12 + 6] & 4294967295L) + (j22 >>> 32);
        iArr3[i13 + 6] = (int) j24;
        long j25 = iArr[i11 + 7] & 4294967295L;
        long j26 = (j10 * j25) + j23 + (4294967295L & iArr2[i12 + 7]) + (j24 >>> 32);
        iArr3[i13 + 7] = (int) j26;
        return (j26 >>> 32) + j25;
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
        return Nat.incAt(8, iArr, i11, 4);
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
        return Nat.incAt(8, iArr, i12, 3);
    }

    public static int mulAddTo(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr2[i11 + 5] & 4294967295L;
        long j16 = iArr2[i11 + 6] & 4294967295L;
        long j17 = iArr2[i11 + 7] & 4294967295L;
        int i13 = i12;
        long j18 = 0;
        int i14 = 0;
        while (i14 < 8) {
            int i15 = i14;
            long j19 = iArr[i10 + i14] & 4294967295L;
            long j20 = j10;
            long j21 = (j19 * j10) + (iArr3[i13] & 4294967295L);
            long j22 = j17;
            iArr3[i13] = (int) j21;
            int i16 = i13 + 1;
            long j23 = (j19 * j11) + (iArr3[i16] & 4294967295L) + (j21 >>> 32);
            iArr3[i16] = (int) j23;
            long j24 = (j19 * j12) + (iArr3[r5] & 4294967295L) + (j23 >>> 32);
            iArr3[i13 + 2] = (int) j24;
            long j25 = (j19 * j13) + (iArr3[r5] & 4294967295L) + (j24 >>> 32);
            iArr3[i13 + 3] = (int) j25;
            long j26 = (j19 * j14) + (iArr3[r5] & 4294967295L) + (j25 >>> 32);
            iArr3[i13 + 4] = (int) j26;
            long j27 = (j19 * j15) + (iArr3[r5] & 4294967295L) + (j26 >>> 32);
            iArr3[i13 + 5] = (int) j27;
            long j28 = (j19 * j16) + (iArr3[r5] & 4294967295L) + (j27 >>> 32);
            iArr3[i13 + 6] = (int) j28;
            long j29 = (j19 * j22) + (iArr3[r5] & 4294967295L) + (j28 >>> 32);
            iArr3[i13 + 7] = (int) j29;
            long j30 = (j29 >>> 32) + (iArr3[r16] & 4294967295L) + j18;
            iArr3[i13 + 8] = (int) j30;
            j18 = j30 >>> 32;
            i14 = i15 + 1;
            i13 = i16;
            j17 = j22;
            j10 = j20;
            j11 = j11;
        }
        return (int) j18;
    }

    public static int mulByWord(int i10, int[] iArr) {
        long j10 = i10 & 4294967295L;
        long j11 = (iArr[0] & 4294967295L) * j10;
        iArr[0] = (int) j11;
        long j12 = ((iArr[1] & 4294967295L) * j10) + (j11 >>> 32);
        iArr[1] = (int) j12;
        long j13 = ((iArr[2] & 4294967295L) * j10) + (j12 >>> 32);
        iArr[2] = (int) j13;
        long j14 = ((iArr[3] & 4294967295L) * j10) + (j13 >>> 32);
        iArr[3] = (int) j14;
        long j15 = ((iArr[4] & 4294967295L) * j10) + (j14 >>> 32);
        iArr[4] = (int) j15;
        long j16 = ((iArr[5] & 4294967295L) * j10) + (j15 >>> 32);
        iArr[5] = (int) j16;
        long j17 = ((iArr[6] & 4294967295L) * j10) + (j16 >>> 32);
        iArr[6] = (int) j17;
        long j18 = (j10 * (4294967295L & iArr[7])) + (j17 >>> 32);
        iArr[7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int mulByWordAddTo(int i10, int[] iArr, int[] iArr2) {
        long j10 = i10 & 4294967295L;
        long j11 = ((iArr2[0] & 4294967295L) * j10) + (iArr[0] & 4294967295L);
        iArr2[0] = (int) j11;
        long j12 = ((iArr2[1] & 4294967295L) * j10) + (iArr[1] & 4294967295L) + (j11 >>> 32);
        iArr2[1] = (int) j12;
        long j13 = ((iArr2[2] & 4294967295L) * j10) + (iArr[2] & 4294967295L) + (j12 >>> 32);
        iArr2[2] = (int) j13;
        long j14 = ((iArr2[3] & 4294967295L) * j10) + (iArr[3] & 4294967295L) + (j13 >>> 32);
        iArr2[3] = (int) j14;
        long j15 = ((iArr2[4] & 4294967295L) * j10) + (iArr[4] & 4294967295L) + (j14 >>> 32);
        iArr2[4] = (int) j15;
        long j16 = ((iArr2[5] & 4294967295L) * j10) + (iArr[5] & 4294967295L) + (j15 >>> 32);
        iArr2[5] = (int) j16;
        long j17 = ((iArr2[6] & 4294967295L) * j10) + (iArr[6] & 4294967295L) + (j16 >>> 32);
        iArr2[6] = (int) j17;
        long j18 = (j10 * (iArr2[7] & 4294967295L)) + (4294967295L & iArr[7]) + (j17 >>> 32);
        iArr2[7] = (int) j18;
        return (int) (j18 >>> 32);
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
        } while (i12 < 8);
        return (int) j11;
    }

    public static int mulWordAddTo(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
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
        long j16 = ((iArr[i11 + 5] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L) + (j15 >>> 32);
        iArr2[i12 + 5] = (int) j16;
        long j17 = ((iArr[i11 + 6] & 4294967295L) * j10) + (iArr2[r8] & 4294967295L) + (j16 >>> 32);
        iArr2[i12 + 6] = (int) j17;
        long j18 = (j10 * (iArr[i11 + 7] & 4294967295L)) + (iArr2[r15] & 4294967295L) + (j17 >>> 32);
        iArr2[i12 + 7] = (int) j18;
        return (int) (j18 >>> 32);
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
        return Nat.incAt(8, iArr, i11, 3);
    }

    public static void square(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = iArr[i10] & 4294967295L;
        int i12 = 0;
        int i13 = 16;
        int i14 = 7;
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
                long j30 = (iArr2[r39] & 4294967295L) + (j27 >>> 32);
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
                long j40 = (iArr2[r5] & 4294967295L) + (j38 >>> 32);
                long j41 = j38 & 4294967295L;
                long j42 = (j37 * j10) + (jC4 & 4294967295L);
                int i23 = (int) j42;
                iArr2[i11 + 5] = i22 | (i23 << 1);
                int i24 = i23 >>> 31;
                long jC7 = z.c(j37, j15, j42 >>> 32, j35);
                long jC8 = z.c(j37, j18, jC7 >>> 32, jC6 & 4294967295L);
                long jC9 = z.c(j37, j21, jC8 >>> 32, j39);
                long j43 = jC8 & 4294967295L;
                long jC10 = z.c(j37, j29, jC9 >>> 32, j41);
                long j44 = j40 + (jC10 >>> 32);
                long j45 = jC10 & 4294967295L;
                long j46 = iArr[i10 + 6] & 4294967295L;
                long j47 = (iArr2[r35] & 4294967295L) + (j44 >>> 32);
                long j48 = (iArr2[r52] & 4294967295L) + (j47 >>> 32);
                long j49 = j47 & 4294967295L;
                long j50 = (j46 * j10) + (jC7 & 4294967295L);
                int i25 = (int) j50;
                iArr2[i11 + 6] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                long jC11 = z.c(j46, j15, j50 >>> 32, j43);
                long jC12 = z.c(j46, j18, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z.c(j46, j21, jC12 >>> 32, j45);
                long j51 = jC12 & 4294967295L;
                long jC14 = z.c(j46, j29, jC13 >>> 32, j44 & 4294967295L);
                long j52 = jC13 & 4294967295L;
                long jC15 = z.c(j46, j37, jC14 >>> 32, j49);
                long j53 = jC14 & 4294967295L;
                long j54 = j48 + (jC15 >>> 32);
                long j55 = iArr[i10 + 7] & 4294967295L;
                long j56 = (iArr2[r6] & 4294967295L) + (j54 >>> 32);
                long j57 = (iArr2[r36] & 4294967295L) + (j56 >>> 32);
                long j58 = j56 & 4294967295L;
                long j59 = (j10 * j55) + (jC11 & 4294967295L);
                int i27 = (int) j59;
                iArr2[i11 + 7] = (i27 << 1) | i26;
                long jC16 = z.c(j55, j15, j59 >>> 32, j51);
                long jC17 = z.c(j55, j18, jC16 >>> 32, j52);
                long jC18 = z.c(j55, j21, jC17 >>> 32, j53);
                long jC19 = z.c(j55, j29, jC18 >>> 32, jC15 & 4294967295L);
                long jC20 = z.c(j55, j37, jC19 >>> 32, j54 & 4294967295L);
                long jC21 = z.c(j55, j46, jC20 >>> 32, j58);
                long j60 = j57 + (jC21 >>> 32);
                int i28 = (int) jC16;
                iArr2[i11 + 8] = (i28 << 1) | (i27 >>> 31);
                int i29 = i28 >>> 31;
                int i30 = (int) jC17;
                iArr2[i11 + 9] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) jC18;
                iArr2[i11 + 10] = i31 | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) jC19;
                iArr2[i11 + 11] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) jC20;
                iArr2[i11 + 12] = i35 | (i36 << 1);
                int i37 = i36 >>> 31;
                int i38 = (int) jC21;
                iArr2[i11 + 13] = i37 | (i38 << 1);
                int i39 = i38 >>> 31;
                int i40 = (int) j60;
                iArr2[i11 + 14] = i39 | (i40 << 1);
                int i41 = i40 >>> 31;
                int i42 = i11 + 15;
                iArr2[i42] = i41 | ((iArr2[i42] + ((int) (j60 >>> 32))) << 1);
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
        long j16 = ((iArr[i10 + 6] & 4294967295L) - (iArr2[i11 + 6] & 4294967295L)) + (j15 >> 32);
        iArr3[i12 + 6] = (int) j16;
        long j17 = ((iArr[i10 + 7] & 4294967295L) - (iArr2[i11 + 7] & 4294967295L)) + (j16 >> 32);
        iArr3[i12 + 7] = (int) j17;
        return (int) (j17 >> 32);
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
        long j16 = (((iArr3[6] & 4294967295L) - (iArr[6] & 4294967295L)) - (iArr2[6] & 4294967295L)) + (j15 >> 32);
        iArr3[6] = (int) j16;
        long j17 = (((iArr3[7] & 4294967295L) - (iArr[7] & 4294967295L)) - (iArr2[7] & 4294967295L)) + (j16 >> 32);
        iArr3[7] = (int) j17;
        return (int) (j17 >> 32);
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
        long j15 = ((iArr2[r5] & 4294967295L) - (iArr[i10 + 5] & 4294967295L)) + (j14 >> 32);
        iArr2[i11 + 5] = (int) j15;
        long j16 = ((iArr2[r5] & 4294967295L) - (iArr[i10 + 6] & 4294967295L)) + (j15 >> 32);
        iArr2[i11 + 6] = (int) j16;
        long j17 = ((iArr2[r13] & 4294967295L) - (iArr[i10 + 7] & 4294967295L)) + (j16 >> 32);
        iArr2[i11 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                Pack.intToBigEndian(i11, bArr, (7 - i10) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i10 = 0; i10 < 4; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (3 - i10) << 3);
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
        iArr[6] = 0;
        iArr[7] = 0;
    }

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
        long j16 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (j15 >>> 32);
        iArr3[6] = (int) j16;
        long j17 = (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (j16 >>> 32);
        iArr3[7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j16 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L) + (j15 >>> 32);
        iArr3[6] = (int) j16;
        long j17 = (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (iArr3[7] & 4294967295L) + (j16 >>> 32);
        iArr3[7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j15 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (j14 >>> 32);
        iArr2[5] = (int) j15;
        long j16 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (j15 >>> 32);
        iArr2[6] = (int) j16;
        long j17 = (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]) + (j16 >>> 32);
        iArr2[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
        iArr2[7] = iArr[7];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i10 = 7; i10 >= 0; i10--) {
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
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr2[7] & 4294967295L;
        long j18 = iArr[0] & 4294967295L;
        long j19 = j18 * j10;
        iArr3[0] = (int) j19;
        char c7 = ' ';
        long j20 = (j18 * j11) + (j19 >>> 32);
        iArr3[1] = (int) j20;
        long j21 = (j18 * j12) + (j20 >>> 32);
        iArr3[2] = (int) j21;
        long j22 = (j18 * j13) + (j21 >>> 32);
        iArr3[3] = (int) j22;
        long j23 = (j18 * j14) + (j22 >>> 32);
        iArr3[4] = (int) j23;
        long j24 = (j18 * j15) + (j23 >>> 32);
        iArr3[5] = (int) j24;
        long j25 = (j18 * j16) + (j24 >>> 32);
        iArr3[6] = (int) j25;
        long j26 = (j18 * j17) + (j25 >>> 32);
        iArr3[7] = (int) j26;
        iArr3[8] = (int) (j26 >>> 32);
        int i10 = 1;
        for (int i11 = 8; i10 < i11; i11 = 8) {
            long j27 = iArr[i10] & 4294967295L;
            long j28 = (j27 * j10) + (iArr3[i10] & 4294967295L);
            long j29 = j10;
            iArr3[i10] = (int) j28;
            int i12 = i10 + 1;
            long j30 = j11;
            long j31 = (j27 * j11) + (iArr3[i12] & 4294967295L) + (j28 >>> c7);
            iArr3[i12] = (int) j31;
            long j32 = (j27 * j12) + (iArr3[r6] & 4294967295L) + (j31 >>> 32);
            iArr3[i10 + 2] = (int) j32;
            long j33 = (j27 * j13) + (iArr3[r6] & 4294967295L) + (j32 >>> 32);
            iArr3[i10 + 3] = (int) j33;
            long j34 = (j27 * j14) + (iArr3[r6] & 4294967295L) + (j33 >>> 32);
            iArr3[i10 + 4] = (int) j34;
            long j35 = (j27 * j15) + (iArr3[r6] & 4294967295L) + (j34 >>> 32);
            iArr3[i10 + 5] = (int) j35;
            long j36 = (j27 * j16) + (iArr3[r6] & 4294967295L) + (j35 >>> 32);
            iArr3[i10 + 6] = (int) j36;
            c7 = ' ';
            long j37 = j36 >>> 32;
            long j38 = (j27 * j17) + (iArr3[r3] & 4294967295L) + j37;
            iArr3[i10 + 7] = (int) j38;
            iArr3[i10 + 8] = (int) (j38 >>> 32);
            j10 = j29;
            i10 = i12;
            j11 = j30;
        }
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j10 = iArr2[0] & 4294967295L;
        long j11 = iArr2[1] & 4294967295L;
        long j12 = iArr2[2] & 4294967295L;
        long j13 = iArr2[3] & 4294967295L;
        long j14 = iArr2[4] & 4294967295L;
        long j15 = iArr2[5] & 4294967295L;
        long j16 = iArr2[6] & 4294967295L;
        long j17 = iArr2[7] & 4294967295L;
        long j18 = 0;
        int i10 = 0;
        while (i10 < 8) {
            long j19 = j17;
            long j20 = iArr[i10] & 4294967295L;
            long j21 = j15;
            long j22 = (iArr3[i10] & 4294967295L) + (j20 * j10);
            iArr3[i10] = (int) j22;
            int i11 = i10 + 1;
            long j23 = j11;
            long j24 = (j20 * j11) + (iArr3[i11] & 4294967295L) + (j22 >>> 32);
            iArr3[i11] = (int) j24;
            long j25 = (j20 * j12) + (iArr3[r27] & 4294967295L) + (j24 >>> 32);
            iArr3[i10 + 2] = (int) j25;
            long j26 = (j20 * j13) + (iArr3[r8] & 4294967295L) + (j25 >>> 32);
            iArr3[i10 + 3] = (int) j26;
            long j27 = (j20 * j14) + (iArr3[r8] & 4294967295L) + (j26 >>> 32);
            iArr3[i10 + 4] = (int) j27;
            long j28 = (j20 * j21) + (iArr3[r8] & 4294967295L) + (j27 >>> 32);
            iArr3[i10 + 5] = (int) j28;
            long j29 = (j20 * j16) + (iArr3[r8] & 4294967295L) + (j28 >>> 32);
            iArr3[i10 + 6] = (int) j29;
            long j30 = (j20 * j19) + (iArr3[r8] & 4294967295L) + (j29 >>> 32);
            iArr3[i10 + 7] = (int) j30;
            long j31 = (j30 >>> 32) + (iArr3[r2] & 4294967295L) + j18;
            iArr3[i10 + 8] = (int) j31;
            j18 = j31 >>> 32;
            i10 = i11;
            j17 = j19;
            j15 = j21;
            j11 = j23;
            j12 = j12;
        }
        return (int) j18;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i10 = 16;
        int i11 = 7;
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
                iArr2[4] = (i17 >>> 31) | (i18 << 1);
                int i19 = i18 >>> 31;
                long jC4 = z.c(j28, j15, j33 >>> 32, j27);
                long jC5 = z.c(j28, j18, jC4 >>> 32, j30);
                long jC6 = z.c(j28, j21, jC5 >>> 32, j32);
                long j34 = j31 + (jC6 >>> 32);
                long j35 = iArr[5] & 4294967295L;
                long j36 = (iArr2[9] & 4294967295L) + (j34 >>> 32);
                long j37 = j34 & 4294967295L;
                long j38 = (iArr2[10] & 4294967295L) + (j36 >>> 32);
                long j39 = j36 & 4294967295L;
                long j40 = (j35 * j10) + (jC4 & 4294967295L);
                int i20 = (int) j40;
                iArr2[5] = (i20 << 1) | i19;
                long jC7 = z.c(j35, j15, j40 >>> 32, jC5 & 4294967295L);
                long jC8 = z.c(j35, j18, jC7 >>> 32, jC6 & 4294967295L);
                long jC9 = z.c(j35, j21, jC8 >>> 32, j37);
                long j41 = jC8 & 4294967295L;
                long jC10 = z.c(j35, j28, jC9 >>> 32, j39);
                long j42 = j38 + (jC10 >>> 32);
                long j43 = jC10 & 4294967295L;
                long j44 = iArr[6] & 4294967295L;
                long j45 = (iArr2[11] & 4294967295L) + (j42 >>> 32);
                long j46 = j42 & 4294967295L;
                long j47 = (iArr2[12] & 4294967295L) + (j45 >>> 32);
                long j48 = j45 & 4294967295L;
                long j49 = (j44 * j10) + (jC7 & 4294967295L);
                int i21 = (int) j49;
                iArr2[6] = (i20 >>> 31) | (i21 << 1);
                int i22 = i21 >>> 31;
                long jC11 = z.c(j44, j15, j49 >>> 32, j41);
                long jC12 = z.c(j44, j18, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z.c(j44, j21, jC12 >>> 32, j43);
                long j50 = jC12 & 4294967295L;
                long jC14 = z.c(j44, j28, jC13 >>> 32, j46);
                long j51 = jC13 & 4294967295L;
                long jC15 = z.c(j44, j35, jC14 >>> 32, j48);
                long j52 = jC14 & 4294967295L;
                long j53 = j47 + (jC15 >>> 32);
                long j54 = iArr[7] & 4294967295L;
                long j55 = (iArr2[13] & 4294967295L) + (j53 >>> 32);
                long j56 = (iArr2[14] & 4294967295L) + (j55 >>> 32);
                long j57 = 4294967295L & j55;
                long j58 = (j10 * j54) + (jC11 & 4294967295L);
                int i23 = (int) j58;
                iArr2[7] = i22 | (i23 << 1);
                long jC16 = z.c(j54, j15, j58 >>> 32, j50);
                long jC17 = z.c(j54, j18, jC16 >>> 32, j51);
                long jC18 = z.c(j54, j21, jC17 >>> 32, j52);
                long jC19 = z.c(j54, j28, jC18 >>> 32, jC15 & 4294967295L);
                long jC20 = z.c(j54, j35, jC19 >>> 32, j53 & 4294967295L);
                long jC21 = z.c(j54, j44, jC20 >>> 32, j57);
                long j59 = j56 + (jC21 >>> 32);
                int i24 = (int) jC16;
                iArr2[8] = (i24 << 1) | (i23 >>> 31);
                int i25 = i24 >>> 31;
                int i26 = (int) jC17;
                iArr2[9] = i25 | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) jC18;
                iArr2[10] = i27 | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) jC19;
                iArr2[11] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) jC20;
                iArr2[12] = i31 | (i32 << 1);
                int i33 = i32 >>> 31;
                int i34 = (int) jC21;
                iArr2[13] = i33 | (i34 << 1);
                int i35 = i34 >>> 31;
                int i36 = (int) j59;
                iArr2[14] = i35 | (i36 << 1);
                iArr2[15] = ((iArr2[15] + ((int) (j59 >>> 32))) << 1) | (i36 >>> 31);
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
        long j16 = ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L)) + (j15 >> 32);
        iArr3[6] = (int) j16;
        long j17 = ((iArr[7] & 4294967295L) - (iArr2[7] & 4294967295L)) + (j16 >> 32);
        iArr3[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int subFrom(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        long j10 = ((iArr2[i11] & 4294967295L) - (iArr[i10] & 4294967295L)) + (i12 & 4294967295L);
        iArr2[i11] = (int) j10;
        long j11 = j10 >> 32;
        long j12 = ((iArr2[r4] & 4294967295L) - (iArr[i10 + 1] & 4294967295L)) + j11;
        iArr2[i11 + 1] = (int) j12;
        long j13 = ((iArr2[r4] & 4294967295L) - (iArr[i10 + 2] & 4294967295L)) + (j12 >> 32);
        iArr2[i11 + 2] = (int) j13;
        long j14 = ((iArr2[r4] & 4294967295L) - (iArr[i10 + 3] & 4294967295L)) + (j13 >> 32);
        iArr2[i11 + 3] = (int) j14;
        long j15 = ((iArr2[r4] & 4294967295L) - (iArr[i10 + 4] & 4294967295L)) + (j14 >> 32);
        iArr2[i11 + 4] = (int) j15;
        long j16 = ((iArr2[r4] & 4294967295L) - (iArr[i10 + 5] & 4294967295L)) + (j15 >> 32);
        iArr2[i11 + 5] = (int) j16;
        long j17 = ((iArr2[r4] & 4294967295L) - (iArr[i10 + 6] & 4294967295L)) + (j16 >> 32);
        iArr2[i11 + 6] = (int) j17;
        long j18 = ((iArr2[r12] & 4294967295L) - (iArr[i10 + 7] & 4294967295L)) + (j17 >> 32);
        iArr2[i11 + 7] = (int) j18;
        return (int) (j18 >> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2, int i10) {
        long j10 = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (i10 & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (j10 >>> 32);
        iArr2[1] = (int) j11;
        long j12 = (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (j11 >>> 32);
        iArr2[2] = (int) j12;
        long j13 = (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (j12 >>> 32);
        iArr2[3] = (int) j13;
        long j14 = (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (j13 >>> 32);
        iArr2[4] = (int) j14;
        long j15 = (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (j14 >>> 32);
        iArr2[5] = (int) j15;
        long j16 = (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (j15 >>> 32);
        iArr2[6] = (int) j16;
        long j17 = (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]) + (j16 >>> 32);
        iArr2[7] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j15 = ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L)) + (j14 >> 32);
        iArr2[5] = (int) j15;
        long j16 = ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L)) + (j15 >> 32);
        iArr2[6] = (int) j16;
        long j17 = ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7])) + (j16 >> 32);
        iArr2[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2, int i10) {
        long j10 = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + (i10 & 4294967295L);
        iArr2[0] = (int) j10;
        long j11 = ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L)) + (j10 >> 32);
        iArr2[1] = (int) j11;
        long j12 = ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L)) + (j11 >> 32);
        iArr2[2] = (int) j12;
        long j13 = ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L)) + (j12 >> 32);
        iArr2[3] = (int) j13;
        long j14 = ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L)) + (j13 >> 32);
        iArr2[4] = (int) j14;
        long j15 = ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L)) + (j14 >> 32);
        iArr2[5] = (int) j15;
        long j16 = ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L)) + (j15 >> 32);
        iArr2[6] = (int) j16;
        long j17 = ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7])) + (j16 >> 32);
        iArr2[7] = (int) j17;
        return (int) (j17 >> 32);
    }
}
