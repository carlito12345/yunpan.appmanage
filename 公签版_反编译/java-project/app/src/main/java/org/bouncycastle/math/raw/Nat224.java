package org.bouncycastle.math.raw;

import java.math.BigInteger;
import l2.z;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
public abstract class Nat224 {
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
        return (int) (j16 >>> 32);
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
        long j16 = (iArr[i10 + 6] & 4294967295L) + (iArr2[i11 + 6] & 4294967295L) + (iArr3[r15] & 4294967295L) + (j15 >>> 32);
        iArr3[i12 + 6] = (int) j16;
        return (int) (j16 >>> 32);
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
        long j16 = (iArr[i10 + 6] & 4294967295L) + (4294967295L & iArr2[r12]) + (j15 >>> 32);
        iArr2[i11 + 6] = (int) j16;
        return (int) (j16 >>> 32);
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
        long j16 = (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]) + (j15 >>> 32);
        int i18 = (int) j16;
        iArr[i10 + 6] = i18;
        iArr2[i11 + 6] = i18;
        return (int) (j16 >>> 32);
    }

    public static void copy(int[] iArr, int i10, int[] iArr2, int i11) {
        iArr2[i11] = iArr[i10];
        iArr2[i11 + 1] = iArr[i10 + 1];
        iArr2[i11 + 2] = iArr[i10 + 2];
        iArr2[i11 + 3] = iArr[i10 + 3];
        iArr2[i11 + 4] = iArr[i10 + 4];
        iArr2[i11 + 5] = iArr[i10 + 5];
        iArr2[i11 + 6] = iArr[i10 + 6];
    }

    public static int[] create() {
        return new int[7];
    }

    public static int[] createExt() {
        return new int[14];
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
        for (int i10 = 6; i10 >= 0; i10--) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            throw new IllegalArgumentException();
        }
        int[] iArrCreate = create();
        for (int i10 = 0; i10 < 7; i10++) {
            iArrCreate[i10] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrCreate;
    }

    public static int getBit(int[] iArr, int i10) {
        int i11;
        if (i10 == 0) {
            i11 = iArr[0];
        } else {
            int i12 = i10 >> 5;
            if (i12 < 0 || i12 >= 7) {
                return 0;
            }
            i11 = iArr[i12] >>> (i10 & 31);
        }
        return i11 & 1;
    }

    public static boolean gte(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 6; i12 >= 0; i12--) {
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
        for (int i10 = 1; i10 < 7; i10++) {
            if (iArr[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i10 = 0; i10 < 7; i10++) {
            if (iArr[i10] != 0) {
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
        long j23 = j22 >>> 32;
        long j24 = iArr2[i11 + 6] & 4294967295L;
        long j25 = (j16 * j24) + j23;
        iArr3[i12 + 6] = (int) j25;
        iArr3[i12 + 7] = (int) (j25 >>> 32);
        int i13 = i12;
        int i14 = 1;
        while (i14 < 7) {
            int i15 = i13 + 1;
            long j26 = iArr[i10 + i14] & 4294967295L;
            long j27 = j24;
            int i16 = i14;
            long j28 = (j26 * j10) + (iArr3[i15] & 4294967295L);
            iArr3[i15] = (int) j28;
            long j29 = (j26 * j11) + (iArr3[r26] & 4294967295L) + (j28 >>> 32);
            iArr3[i13 + 2] = (int) j29;
            long j30 = j12;
            long j31 = (j26 * j12) + (iArr3[r22] & 4294967295L) + (j29 >>> 32);
            iArr3[i13 + 3] = (int) j31;
            int i17 = i13;
            long j32 = (j26 * j13) + (iArr3[r6] & 4294967295L) + (j31 >>> 32);
            iArr3[i13 + 4] = (int) j32;
            long j33 = (j26 * j14) + (iArr3[r5] & 4294967295L) + (j32 >>> 32);
            iArr3[i17 + 5] = (int) j33;
            long j34 = (j26 * j15) + (iArr3[r5] & 4294967295L) + (j33 >>> 32);
            iArr3[i17 + 6] = (int) j34;
            long j35 = j34 >>> 32;
            long j36 = (j26 * j27) + (iArr3[r3] & 4294967295L) + j35;
            iArr3[i17 + 7] = (int) j36;
            iArr3[i17 + 8] = (int) (j36 >>> 32);
            i14 = i16 + 1;
            i13 = i15;
            j24 = j27;
            j12 = j30;
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
        long j24 = (j10 * j23) + j21 + (4294967295L & iArr2[i12 + 6]) + (j22 >>> 32);
        iArr3[i13 + 6] = (int) j24;
        return (j24 >>> 32) + j23;
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
        return Nat.incAt(7, iArr, i11, 4);
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
        return Nat.incAt(7, iArr, i12, 3);
    }

    public static int mulAddTo(int[] iArr, int i10, int[] iArr2, int i11, int[] iArr3, int i12) {
        long j10 = iArr2[i11] & 4294967295L;
        long j11 = iArr2[i11 + 1] & 4294967295L;
        long j12 = iArr2[i11 + 2] & 4294967295L;
        long j13 = iArr2[i11 + 3] & 4294967295L;
        long j14 = iArr2[i11 + 4] & 4294967295L;
        long j15 = iArr2[i11 + 5] & 4294967295L;
        long j16 = iArr2[i11 + 6] & 4294967295L;
        long j17 = 0;
        int i13 = 0;
        int i14 = i12;
        while (i13 < 7) {
            int i15 = i13;
            long j18 = iArr[i10 + i13] & 4294967295L;
            long j19 = j10;
            long j20 = (j18 * j10) + (iArr3[i14] & 4294967295L);
            long j21 = j16;
            iArr3[i14] = (int) j20;
            int i16 = i14 + 1;
            long j22 = (j18 * j11) + (iArr3[i16] & 4294967295L) + (j20 >>> 32);
            iArr3[i16] = (int) j22;
            long j23 = (j18 * j12) + (iArr3[r5] & 4294967295L) + (j22 >>> 32);
            iArr3[i14 + 2] = (int) j23;
            long j24 = (j18 * j13) + (iArr3[r5] & 4294967295L) + (j23 >>> 32);
            iArr3[i14 + 3] = (int) j24;
            long j25 = (j18 * j14) + (iArr3[r5] & 4294967295L) + (j24 >>> 32);
            iArr3[i14 + 4] = (int) j25;
            long j26 = (j18 * j15) + (iArr3[r5] & 4294967295L) + (j25 >>> 32);
            iArr3[i14 + 5] = (int) j26;
            long j27 = (j18 * j21) + (iArr3[r5] & 4294967295L) + (j26 >>> 32);
            iArr3[i14 + 6] = (int) j27;
            long j28 = (j27 >>> 32) + (iArr3[r16] & 4294967295L) + j17;
            iArr3[i14 + 7] = (int) j28;
            j17 = j28 >>> 32;
            i13 = i15 + 1;
            i14 = i16;
            j16 = j21;
            j10 = j19;
            j11 = j11;
        }
        return (int) j17;
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
        long j17 = (j10 * (4294967295L & iArr[6])) + (j16 >>> 32);
        iArr[6] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j17 = (j10 * (iArr2[6] & 4294967295L)) + (4294967295L & iArr[6]) + (j16 >>> 32);
        iArr2[6] = (int) j17;
        return (int) (j17 >>> 32);
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
        } while (i12 < 7);
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
        long j17 = (j10 * (iArr[i11 + 6] & 4294967295L)) + (iArr2[r15] & 4294967295L) + (j16 >>> 32);
        iArr2[i12 + 6] = (int) j17;
        return (int) (j17 >>> 32);
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
        return Nat.incAt(7, iArr, i11, 3);
    }

    public static void square(int[] iArr, int i10, int[] iArr2, int i11) {
        long j10 = iArr[i10] & 4294967295L;
        int i12 = 0;
        int i13 = 14;
        int i14 = 6;
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
                long j47 = (iArr2[r44] & 4294967295L) + (j44 >>> 32);
                long j48 = (iArr2[r45] & 4294967295L) + (j47 >>> 32);
                long j49 = 4294967295L & j47;
                long j50 = (j10 * j46) + (jC7 & 4294967295L);
                int i25 = (int) j50;
                iArr2[i11 + 6] = i24 | (i25 << 1);
                int i26 = i25 >>> 31;
                long jC11 = z.c(j46, j15, j50 >>> 32, j43);
                long jC12 = z.c(j46, j18, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z.c(j46, j21, jC12 >>> 32, j45);
                long jC14 = z.c(j46, j29, jC13 >>> 32, j44 & 4294967295L);
                long jC15 = z.c(j46, j37, jC14 >>> 32, j49);
                long j51 = j48 + (jC15 >>> 32);
                int i27 = (int) jC11;
                iArr2[i11 + 7] = (i27 << 1) | i26;
                int i28 = i27 >>> 31;
                int i29 = (int) jC12;
                iArr2[i11 + 8] = i28 | (i29 << 1);
                int i30 = i29 >>> 31;
                int i31 = (int) jC13;
                iArr2[i11 + 9] = i30 | (i31 << 1);
                int i32 = i31 >>> 31;
                int i33 = (int) jC14;
                iArr2[i11 + 10] = i32 | (i33 << 1);
                int i34 = i33 >>> 31;
                int i35 = (int) jC15;
                iArr2[i11 + 11] = i34 | (i35 << 1);
                int i36 = i35 >>> 31;
                int i37 = (int) j51;
                iArr2[i11 + 12] = i36 | (i37 << 1);
                int i38 = i37 >>> 31;
                int i39 = i11 + 13;
                iArr2[i39] = i38 | ((iArr2[i39] + ((int) (j51 >>> 32))) << 1);
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
        return (int) (j16 >> 32);
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
        return (int) (j16 >> 32);
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
        long j16 = ((iArr2[r13] & 4294967295L) - (iArr[i10 + 6] & 4294967295L)) + (j15 >> 32);
        iArr2[i11 + 6] = (int) j16;
        return (int) (j16 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[28];
        for (int i10 = 0; i10 < 7; i10++) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                Pack.intToBigEndian(i11, bArr, (6 - i10) << 2);
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
        return (int) (j16 >>> 32);
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
        return (int) (j16 >>> 32);
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
        long j16 = (iArr[6] & 4294967295L) + (4294967295L & iArr2[6]) + (j15 >>> 32);
        iArr2[6] = (int) j16;
        return (int) (j16 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i10 = 6; i10 >= 0; i10--) {
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
        long j17 = iArr[0] & 4294967295L;
        long j18 = j17 * j10;
        iArr3[0] = (int) j18;
        char c7 = ' ';
        long j19 = (j17 * j11) + (j18 >>> 32);
        iArr3[1] = (int) j19;
        long j20 = (j17 * j12) + (j19 >>> 32);
        iArr3[2] = (int) j20;
        long j21 = (j17 * j13) + (j20 >>> 32);
        iArr3[3] = (int) j21;
        long j22 = (j17 * j14) + (j21 >>> 32);
        iArr3[4] = (int) j22;
        long j23 = (j17 * j15) + (j22 >>> 32);
        iArr3[5] = (int) j23;
        long j24 = (j17 * j16) + (j23 >>> 32);
        iArr3[6] = (int) j24;
        iArr3[7] = (int) (j24 >>> 32);
        int i10 = 1;
        for (int i11 = 7; i10 < i11; i11 = 7) {
            long j25 = iArr[i10] & 4294967295L;
            long j26 = (j25 * j10) + (iArr3[i10] & 4294967295L);
            long j27 = j10;
            iArr3[i10] = (int) j26;
            int i12 = i10 + 1;
            long j28 = j11;
            long j29 = (j25 * j11) + (iArr3[i12] & 4294967295L) + (j26 >>> c7);
            iArr3[i12] = (int) j29;
            long j30 = (j25 * j12) + (iArr3[r6] & 4294967295L) + (j29 >>> 32);
            iArr3[i10 + 2] = (int) j30;
            long j31 = (j25 * j13) + (iArr3[r6] & 4294967295L) + (j30 >>> 32);
            iArr3[i10 + 3] = (int) j31;
            long j32 = (j25 * j14) + (iArr3[r6] & 4294967295L) + (j31 >>> 32);
            iArr3[i10 + 4] = (int) j32;
            long j33 = (j25 * j15) + (iArr3[r6] & 4294967295L) + (j32 >>> 32);
            iArr3[i10 + 5] = (int) j33;
            c7 = ' ';
            long j34 = j33 >>> 32;
            long j35 = (j25 * j16) + (iArr3[r3] & 4294967295L) + j34;
            iArr3[i10 + 6] = (int) j35;
            iArr3[i10 + 7] = (int) (j35 >>> 32);
            j10 = j27;
            i10 = i12;
            j11 = j28;
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
        long j17 = 0;
        int i10 = 0;
        while (i10 < 7) {
            long j18 = j16;
            long j19 = iArr[i10] & 4294967295L;
            long j20 = j15;
            long j21 = (iArr3[i10] & 4294967295L) + (j19 * j10);
            iArr3[i10] = (int) j21;
            int i11 = i10 + 1;
            long j22 = j11;
            long j23 = (j19 * j11) + (iArr3[i11] & 4294967295L) + (j21 >>> 32);
            iArr3[i11] = (int) j23;
            long j24 = (j19 * j12) + (iArr3[r25] & 4294967295L) + (j23 >>> 32);
            iArr3[i10 + 2] = (int) j24;
            long j25 = (j19 * j13) + (iArr3[r8] & 4294967295L) + (j24 >>> 32);
            iArr3[i10 + 3] = (int) j25;
            long j26 = (j19 * j14) + (iArr3[r8] & 4294967295L) + (j25 >>> 32);
            iArr3[i10 + 4] = (int) j26;
            long j27 = (j19 * j20) + (iArr3[r8] & 4294967295L) + (j26 >>> 32);
            iArr3[i10 + 5] = (int) j27;
            long j28 = (j19 * j18) + (iArr3[r8] & 4294967295L) + (j27 >>> 32);
            iArr3[i10 + 6] = (int) j28;
            long j29 = (j28 >>> 32) + (iArr3[r2] & 4294967295L) + j17;
            iArr3[i10 + 7] = (int) j29;
            j17 = j29 >>> 32;
            i10 = i11;
            j16 = j18;
            j15 = j20;
            j11 = j22;
            j12 = j12;
        }
        return (int) j17;
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j10 = iArr[0] & 4294967295L;
        int i10 = 14;
        int i11 = 6;
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
                long j23 = (iArr2[6] & 4294967295L) + (j22 >>> 32);
                long j24 = (j21 * j10) + (jC & 4294967295L);
                int i17 = (int) j24;
                iArr2[3] = (i17 << 1) | (i16 >>> 31);
                long jC2 = z.c(j21, j15, j24 >>> 32, j20 & 4294967295L);
                long jC3 = z.c(j21, j18, jC2 >>> 32, j22 & 4294967295L);
                long j25 = j23 + (jC3 >>> 32);
                long j26 = jC3 & 4294967295L;
                long j27 = iArr[4] & 4294967295L;
                long j28 = (iArr2[7] & 4294967295L) + (j25 >>> 32);
                long j29 = (iArr2[8] & 4294967295L) + (j28 >>> 32);
                long j30 = j28 & 4294967295L;
                long j31 = (j27 * j10) + (jC2 & 4294967295L);
                int i18 = (int) j31;
                iArr2[4] = (i17 >>> 31) | (i18 << 1);
                long jC4 = z.c(j27, j15, j31 >>> 32, j26);
                long jC5 = z.c(j27, j18, jC4 >>> 32, j25 & 4294967295L);
                long j32 = jC4 & 4294967295L;
                long jC6 = z.c(j27, j21, jC5 >>> 32, j30);
                long j33 = j29 + (jC6 >>> 32);
                long j34 = jC6 & 4294967295L;
                long j35 = iArr[5] & 4294967295L;
                long j36 = (iArr2[9] & 4294967295L) + (j33 >>> 32);
                long j37 = (iArr2[10] & 4294967295L) + (j36 >>> 32);
                long j38 = j36 & 4294967295L;
                long j39 = (j35 * j10) + j32;
                int i19 = (int) j39;
                iArr2[5] = (i19 << 1) | (i18 >>> 31);
                long jC7 = z.c(j35, j15, j39 >>> 32, jC5 & 4294967295L);
                long jC8 = z.c(j35, j18, jC7 >>> 32, j34);
                long jC9 = z.c(j35, j21, jC8 >>> 32, j33 & 4294967295L);
                long j40 = jC8 & 4294967295L;
                long jC10 = z.c(j35, j27, jC9 >>> 32, j38);
                long j41 = j37 + (jC10 >>> 32);
                long j42 = jC10 & 4294967295L;
                long j43 = iArr[6] & 4294967295L;
                long j44 = (iArr2[11] & 4294967295L) + (j41 >>> 32);
                long j45 = j41 & 4294967295L;
                long j46 = (iArr2[12] & 4294967295L) + (j44 >>> 32);
                long j47 = 4294967295L & j44;
                long j48 = (j10 * j43) + (jC7 & 4294967295L);
                int i20 = (int) j48;
                iArr2[6] = (i19 >>> 31) | (i20 << 1);
                int i21 = i20 >>> 31;
                long jC11 = z.c(j43, j15, j48 >>> 32, j40);
                long jC12 = z.c(j43, j18, jC11 >>> 32, jC9 & 4294967295L);
                long jC13 = z.c(j43, j21, jC12 >>> 32, j42);
                long jC14 = z.c(j43, j27, jC13 >>> 32, j45);
                long jC15 = z.c(j43, j35, jC14 >>> 32, j47);
                long j49 = j46 + (jC15 >>> 32);
                int i22 = (int) jC11;
                iArr2[7] = (i22 << 1) | i21;
                int i23 = i22 >>> 31;
                int i24 = (int) jC12;
                iArr2[8] = i23 | (i24 << 1);
                int i25 = i24 >>> 31;
                int i26 = (int) jC13;
                iArr2[9] = i25 | (i26 << 1);
                int i27 = i26 >>> 31;
                int i28 = (int) jC14;
                iArr2[10] = i27 | (i28 << 1);
                int i29 = i28 >>> 31;
                int i30 = (int) jC15;
                iArr2[11] = i29 | (i30 << 1);
                int i31 = i30 >>> 31;
                int i32 = (int) j49;
                iArr2[12] = i31 | (i32 << 1);
                iArr2[13] = ((iArr2[13] + ((int) (j49 >>> 32))) << 1) | (i32 >>> 31);
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
        return (int) (j16 >> 32);
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
        long j16 = ((iArr2[6] & 4294967295L) - (4294967295L & iArr[6])) + (j15 >> 32);
        iArr2[6] = (int) j16;
        return (int) (j16 >> 32);
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
        long j16 = (iArr[6] & 4294967295L) + (4294967295L & iArr2[6]) + (j15 >>> 32);
        iArr2[6] = (int) j16;
        return (int) (j16 >>> 32);
    }
}
