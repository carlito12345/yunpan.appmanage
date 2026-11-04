package org.bouncycastle.math.ec.rfc7748;

import l2.z;
import org.bouncycastle.math.raw.Mod;

/* loaded from: classes3.dex */
public abstract class X25519Field {
    private static final int M24 = 16777215;
    private static final int M25 = 33554431;
    private static final int M26 = 67108863;
    private static final int[] P32 = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] ROOT_NEG_ONE = {-32595792, -7943725, 4688975, 3500415, 6194736, 33281959, -12573105, -1002827, 163343, 5703241};
    public static final int SIZE = 10;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr3[i10] = iArr[i10] + iArr2[i10];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void apm(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i10 = 0; i10 < 10; i10++) {
            int i11 = iArr[i10];
            int i12 = iArr2[i10];
            iArr3[i10] = i11 + i12;
            iArr4[i10] = i11 - i12;
        }
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i10 = 0;
        for (int i11 = 0; i11 < 10; i11++) {
            i10 |= iArr[i11] ^ iArr2[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean areEqualVar(int[] iArr, int[] iArr2) {
        return areEqual(iArr, iArr2) != 0;
    }

    public static void carry(int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = iArr[7];
        int i18 = iArr[8];
        int i19 = iArr[9];
        int i20 = i12 + (i11 >> 26);
        int i21 = i11 & M26;
        int i22 = i14 + (i13 >> 26);
        int i23 = i13 & M26;
        int i24 = i17 + (i16 >> 26);
        int i25 = i16 & M26;
        int i26 = i19 + (i18 >> 26);
        int i27 = i18 & M26;
        int i28 = i23 + (i20 >> 25);
        int i29 = i20 & M25;
        int i30 = i15 + (i22 >> 25);
        int i31 = i22 & M25;
        int i32 = i27 + (i24 >> 25);
        int i33 = i24 & M25;
        int i34 = ((i26 >> 25) * 38) + i10;
        int i35 = i26 & M25;
        int i36 = i21 + (i34 >> 26);
        int i37 = i34 & M26;
        int i38 = i25 + (i30 >> 26);
        int i39 = i30 & M26;
        int i40 = i29 + (i36 >> 26);
        int i41 = i36 & M26;
        int i42 = i31 + (i28 >> 26);
        int i43 = i28 & M26;
        int i44 = i33 + (i38 >> 26);
        int i45 = i38 & M26;
        int i46 = i35 + (i32 >> 26);
        int i47 = i32 & M26;
        iArr[0] = i37;
        iArr[1] = i41;
        iArr[2] = i40;
        iArr[3] = i43;
        iArr[4] = i42;
        iArr[5] = i39;
        iArr[6] = i45;
        iArr[7] = i44;
        iArr[8] = i47;
        iArr[9] = i46;
    }

    public static void cmov(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        for (int i13 = 0; i13 < 10; i13++) {
            int i14 = i12 + i13;
            int i15 = iArr2[i14];
            iArr2[i14] = i15 ^ ((iArr[i11 + i13] ^ i15) & i10);
        }
    }

    public static void cnegate(int i10, int[] iArr) {
        int i11 = 0 - i10;
        for (int i12 = 0; i12 < 10; i12++) {
            iArr[i12] = (iArr[i12] ^ i11) - i11;
        }
    }

    public static void copy(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 10; i12++) {
            iArr2[i11 + i12] = iArr[i10 + i12];
        }
    }

    public static int[] create() {
        return new int[10];
    }

    public static int[] createTable(int i10) {
        return new int[i10 * 10];
    }

    public static void cswap(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0 - i10;
        for (int i12 = 0; i12 < 10; i12++) {
            int i13 = iArr[i12];
            int i14 = iArr2[i12];
            int i15 = (i13 ^ i14) & i11;
            iArr[i12] = i13 ^ i15;
            iArr2[i12] = i14 ^ i15;
        }
    }

    public static void decode(byte[] bArr, int i10, int[] iArr) {
        decode128(bArr, i10, iArr, 0);
        decode128(bArr, i10 + 16, iArr, 5);
        iArr[9] = iArr[9] & 16777215;
    }

    private static void decode128(byte[] bArr, int i10, int[] iArr, int i11) {
        int iDecode32 = decode32(bArr, i10);
        int iDecode322 = decode32(bArr, i10 + 4);
        int iDecode323 = decode32(bArr, i10 + 8);
        int iDecode324 = decode32(bArr, i10 + 12);
        iArr[i11] = iDecode32 & M26;
        iArr[i11 + 1] = ((iDecode32 >>> 26) | (iDecode322 << 6)) & M26;
        iArr[i11 + 2] = ((iDecode322 >>> 20) | (iDecode323 << 12)) & M25;
        iArr[i11 + 3] = M26 & ((iDecode324 << 19) | (iDecode323 >>> 13));
        iArr[i11 + 4] = iDecode324 >>> 7;
    }

    private static int decode32(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void encode(int[] iArr, int i10, byte[] bArr, int i11) {
        encode128(iArr, i10, bArr, i11);
        encode128(iArr, i10 + 5, bArr, i11 + 16);
    }

    private static void encode128(int[] iArr, int i10, byte[] bArr, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        int i16 = iArr[i10 + 4];
        encode32((i13 << 26) | i12, bArr, i11);
        encode32((i13 >>> 6) | (i14 << 20), bArr, i11 + 4);
        encode32((i14 >>> 12) | (i15 << 13), bArr, i11 + 8);
        encode32((i16 << 7) | (i15 >>> 19), bArr, i11 + 12);
    }

    private static void encode32(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i10 = iArr[0] ^ 1;
        for (int i11 = 1; i11 < 10; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 10; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] iArr) {
        return isZero(iArr) != 0;
    }

    public static void mul(int[] iArr, int i10, int[] iArr2) {
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = iArr[4];
        int i16 = iArr[5];
        int i17 = iArr[6];
        int i18 = iArr[7];
        int i19 = iArr[8];
        int i20 = iArr[9];
        long j10 = i10;
        long j11 = i13 * j10;
        int i21 = ((int) j11) & M25;
        long j12 = i15 * j10;
        int i22 = ((int) j12) & M25;
        long j13 = i18 * j10;
        int i23 = ((int) j13) & M25;
        long j14 = j13 >> 25;
        long j15 = i20 * j10;
        int i24 = ((int) j15) & M25;
        long j16 = (i11 * j10) + ((j15 >> 25) * 38);
        iArr2[0] = ((int) j16) & M26;
        long j17 = (i16 * j10) + (j12 >> 25);
        iArr2[5] = ((int) j17) & M26;
        long j18 = j17 >> 26;
        long j19 = (i12 * j10) + (j16 >> 26);
        iArr2[1] = ((int) j19) & M26;
        long j20 = j19 >> 26;
        long j21 = (i14 * j10) + (j11 >> 25);
        iArr2[3] = ((int) j21) & M26;
        long j22 = j21 >> 26;
        long j23 = (i17 * j10) + j18;
        iArr2[6] = ((int) j23) & M26;
        long j24 = j23 >> 26;
        long j25 = (i19 * j10) + j14;
        iArr2[8] = M26 & ((int) j25);
        iArr2[2] = i21 + ((int) j20);
        iArr2[4] = i22 + ((int) j22);
        iArr2[7] = i23 + ((int) j24);
        iArr2[9] = i24 + ((int) (j25 >> 26));
    }

    public static void negate(int[] iArr, int[] iArr2) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr2[i10] = -iArr[i10];
        }
    }

    public static void normalize(int[] iArr) {
        int i10 = (iArr[9] >>> 23) & 1;
        reduce(iArr, i10);
        reduce(iArr, -i10);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i10 = 1; i10 < 10; i10++) {
            iArr[i10] = 0;
        }
    }

    private static void powPm5d8(int[] iArr, int[] iArr2, int[] iArr3) {
        sqr(iArr, iArr2);
        mul(iArr, iArr2, iArr2);
        int[] iArrCreate = create();
        sqr(iArr2, iArrCreate);
        mul(iArr, iArrCreate, iArrCreate);
        sqr(iArrCreate, 2, iArrCreate);
        mul(iArr2, iArrCreate, iArrCreate);
        int[] iArrCreate2 = create();
        sqr(iArrCreate, 5, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate2);
        int[] iArrCreate3 = create();
        sqr(iArrCreate2, 5, iArrCreate3);
        mul(iArrCreate, iArrCreate3, iArrCreate3);
        sqr(iArrCreate3, 10, iArrCreate);
        mul(iArrCreate2, iArrCreate, iArrCreate);
        sqr(iArrCreate, 25, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate2);
        sqr(iArrCreate2, 25, iArrCreate3);
        mul(iArrCreate, iArrCreate3, iArrCreate3);
        sqr(iArrCreate3, 50, iArrCreate);
        mul(iArrCreate2, iArrCreate, iArrCreate);
        sqr(iArrCreate, 125, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate2);
        sqr(iArrCreate2, 2, iArrCreate);
        mul(iArrCreate, iArr, iArr3);
    }

    private static void reduce(int[] iArr, int i10) {
        int i11 = iArr[9];
        long j10 = (((i11 >> 24) + i10) * 19) + iArr[0];
        iArr[0] = ((int) j10) & M26;
        long j11 = (j10 >> 26) + iArr[1];
        iArr[1] = ((int) j11) & M26;
        long j12 = (j11 >> 26) + iArr[2];
        iArr[2] = ((int) j12) & M25;
        long j13 = (j12 >> 25) + iArr[3];
        iArr[3] = ((int) j13) & M26;
        long j14 = (j13 >> 26) + iArr[4];
        iArr[4] = ((int) j14) & M25;
        long j15 = (j14 >> 25) + iArr[5];
        iArr[5] = ((int) j15) & M26;
        long j16 = (j15 >> 26) + iArr[6];
        iArr[6] = ((int) j16) & M26;
        long j17 = (j16 >> 26) + iArr[7];
        iArr[7] = M25 & ((int) j17);
        long j18 = (j17 >> 25) + iArr[8];
        iArr[8] = M26 & ((int) j18);
        iArr[9] = (16777215 & i11) + ((int) (j18 >> 26));
    }

    public static void sqr(int[] iArr, int i10, int[] iArr2) {
        sqr(iArr, iArr2);
        while (true) {
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                sqr(iArr2, iArr2);
            }
        }
    }

    public static boolean sqrtRatioVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrCreate = create();
        int[] iArrCreate2 = create();
        mul(iArr, iArr2, iArrCreate);
        sqr(iArr2, iArrCreate2);
        mul(iArrCreate, iArrCreate2, iArrCreate);
        sqr(iArrCreate2, iArrCreate2);
        mul(iArrCreate2, iArrCreate, iArrCreate2);
        int[] iArrCreate3 = create();
        int[] iArrCreate4 = create();
        powPm5d8(iArrCreate2, iArrCreate3, iArrCreate4);
        mul(iArrCreate4, iArrCreate, iArrCreate4);
        int[] iArrCreate5 = create();
        sqr(iArrCreate4, iArrCreate5);
        mul(iArrCreate5, iArr2, iArrCreate5);
        sub(iArrCreate5, iArr, iArrCreate3);
        normalize(iArrCreate3);
        if (isZeroVar(iArrCreate3)) {
            copy(iArrCreate4, 0, iArr3, 0);
            return true;
        }
        add(iArrCreate5, iArr, iArrCreate3);
        normalize(iArrCreate3);
        if (!isZeroVar(iArrCreate3)) {
            return false;
        }
        mul(iArrCreate4, ROOT_NEG_ONE, iArr3);
        return true;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr3[i10] = iArr[i10] - iArr2[i10];
        }
    }

    public static void subOne(int[] iArr) {
        iArr[0] = iArr[0] - 1;
    }

    public static void zero(int[] iArr) {
        for (int i10 = 0; i10 < 10; i10++) {
            iArr[i10] = 0;
        }
    }

    public static void addOne(int[] iArr, int i10) {
        iArr[i10] = iArr[i10] + 1;
    }

    public static void decode(byte[] bArr, int i10, int[] iArr, int i11) {
        decode128(bArr, i10, iArr, i11);
        decode128(bArr, i10 + 16, iArr, i11 + 5);
        int i12 = i11 + 9;
        iArr[i12] = iArr[i12] & 16777215;
    }

    private static void decode128(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        iArr2[i11] = i12 & M26;
        iArr2[i11 + 1] = ((i12 >>> 26) | (i13 << 6)) & M26;
        iArr2[i11 + 2] = ((i13 >>> 20) | (i14 << 12)) & M25;
        iArr2[i11 + 3] = M26 & ((i15 << 19) | (i14 >>> 13));
        iArr2[i11 + 4] = i15 >>> 7;
    }

    public static void encode(int[] iArr, byte[] bArr) {
        encode128(iArr, 0, bArr, 0);
        encode128(iArr, 5, bArr, 16);
    }

    private static void encode128(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        int i16 = iArr[i10 + 4];
        iArr2[i11] = (i13 << 26) | i12;
        iArr2[i11 + 1] = (i13 >>> 6) | (i14 << 20);
        iArr2[i11 + 2] = (i14 >>> 12) | (i15 << 13);
        iArr2[i11 + 3] = (i16 << 7) | (i15 >>> 19);
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = iArr[0];
        int i11 = iArr2[0];
        int i12 = iArr[1];
        int i13 = iArr2[1];
        int i14 = iArr[2];
        int i15 = iArr2[2];
        int i16 = iArr[3];
        int i17 = iArr2[3];
        int i18 = iArr[4];
        int i19 = iArr2[4];
        int i20 = iArr[5];
        int i21 = iArr2[5];
        int i22 = iArr[6];
        int i23 = iArr2[6];
        int i24 = iArr[7];
        int i25 = iArr2[7];
        int i26 = iArr[8];
        int i27 = iArr2[8];
        int i28 = iArr[9];
        int i29 = iArr2[9];
        long j10 = i10;
        long j11 = i11;
        long j12 = j10 * j11;
        long j13 = i13;
        long j14 = i12;
        long j15 = (j14 * j11) + (j10 * j13);
        long j16 = i15;
        long j17 = i14;
        long j18 = (j17 * j11) + (j14 * j13) + (j10 * j16);
        long j19 = j17 * j13;
        long j20 = i17;
        long j21 = j10 * j20;
        long j22 = i16;
        long jC = z.c(j22, j11, j21, (j19 + (j14 * j16)) << 1);
        long j23 = (j17 * j16) << 1;
        long j24 = i19;
        long j25 = i18;
        long jC2 = z.c(j25, j11, (j22 * j13) + (j14 * j20) + (j10 * j24), j23);
        long j26 = ((j25 * j13) + ((j22 * j16) + ((j17 * j20) + (j14 * j24)))) << 1;
        long j27 = (j22 * j20) + (((j25 * j16) + (j17 * j24)) << 1);
        long j28 = (j25 * j20) + (j22 * j24);
        long j29 = (j25 * j24) << 1;
        long j30 = i20;
        long j31 = i21;
        long j32 = j30 * j31;
        long j33 = i23;
        long j34 = i22;
        long j35 = (j34 * j31) + (j30 * j33);
        long j36 = i25;
        long j37 = i24;
        long j38 = (j37 * j31) + (j34 * j33) + (j30 * j36);
        long j39 = j37 * j33;
        long j40 = i27;
        long j41 = i26;
        long jC3 = z.c(j41, j31, j30 * j40, (j39 + (j34 * j36)) << 1);
        long j42 = (j37 * j36) << 1;
        long j43 = i29;
        long j44 = i28;
        long jC4 = z.c(j44, j31, (j41 * j33) + (j34 * j40) + (j30 * j43), j42);
        long j45 = (j44 * j33) + (j41 * j36) + (j37 * j40) + (j34 * j43);
        long j46 = j12 - (j45 * 76);
        long j47 = j15 - (((j41 * j40) + (((j44 * j36) + (j37 * j43)) << 1)) * 38);
        long j48 = j18 - (((j40 * j44) + (j41 * j43)) * 38);
        long j49 = jC - ((j44 * j43) * 76);
        long j50 = j26 - j32;
        long j51 = j27 - j35;
        long j52 = j28 - j38;
        long j53 = j29 - jC3;
        int i30 = i10 + i20;
        int i31 = i11 + i21;
        int i32 = i12 + i22;
        int i33 = i13 + i23;
        int i34 = i14 + i24;
        int i35 = i15 + i25;
        int i36 = i16 + i26;
        int i37 = i17 + i27;
        int i38 = i18 + i28;
        int i39 = i19 + i29;
        long j54 = i30;
        long j55 = i31;
        long j56 = j54 * j55;
        long j57 = i33;
        long j58 = i32;
        long j59 = (j58 * j55) + (j54 * j57);
        long j60 = i35;
        long j61 = i34;
        long j62 = (j61 * j55) + (j58 * j57) + (j54 * j60);
        long j63 = i37;
        long j64 = i36;
        long jC5 = z.c(j64, j55, j54 * j63, ((j61 * j57) + (j58 * j60)) << 1);
        long j65 = (j61 * j60) << 1;
        long j66 = i39;
        long j67 = (j64 * j57) + (j58 * j63) + (j54 * j66);
        long j68 = i38;
        long jC6 = z.c(j68, j55, j67, j65);
        long j69 = ((j57 * j68) + ((j64 * j60) + ((j61 * j63) + (j58 * j66)))) << 1;
        long j70 = (j64 * j63) + (((j68 * j60) + (j61 * j66)) << 1);
        long j71 = (j63 * j68) + (j64 * j66);
        long j72 = (j68 * j66) << 1;
        long j73 = (jC5 - j49) + j53;
        int i40 = ((int) j73) & M26;
        long j74 = ((jC6 - jC2) - jC4) + (j73 >> 26);
        int i41 = ((int) j74) & M25;
        long j75 = ((((j74 >> 25) + j69) - j50) * 38) + j46;
        iArr3[0] = ((int) j75) & M26;
        long j76 = ((j70 - j51) * 38) + j47 + (j75 >> 26);
        iArr3[1] = ((int) j76) & M26;
        long j77 = ((j71 - j52) * 38) + j48 + (j76 >> 26);
        iArr3[2] = ((int) j77) & M25;
        long j78 = ((j72 - j53) * 38) + j49 + (j77 >> 25);
        iArr3[3] = ((int) j78) & M26;
        long jC7 = z.c(jC4, 38L, jC2, j78 >> 26);
        iArr3[4] = ((int) jC7) & M25;
        long j79 = (j56 - j46) + j50 + (jC7 >> 25);
        iArr3[5] = ((int) j79) & M26;
        long j80 = (j59 - j47) + j51 + (j79 >> 26);
        iArr3[6] = ((int) j80) & M26;
        long j81 = (j62 - j48) + j52 + (j80 >> 26);
        iArr3[7] = M25 & ((int) j81);
        long j82 = (j81 >> 25) + i40;
        iArr3[8] = ((int) j82) & M26;
        iArr3[9] = i41 + ((int) (j82 >> 26));
    }

    public static void sqr(int[] iArr, int[] iArr2) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = iArr[7];
        int i18 = iArr[8];
        int i19 = iArr[9];
        long j10 = i10;
        long j11 = j10 * j10;
        long j12 = i11 * 2;
        long j13 = j10 * j12;
        long j14 = i12 * 2;
        long j15 = i11;
        long j16 = (j15 * j15) + (j10 * j14);
        long j17 = i13 * 2;
        long j18 = (j10 * j17) + (j12 * j14);
        long j19 = i14 * 2;
        long j20 = (j15 * j17) + (j10 * j19) + (i12 * j14);
        long j21 = (j17 * j14) + (j12 * j19);
        long j22 = i13;
        long j23 = (j22 * j22) + (j14 * j19);
        long j24 = j22 * j19;
        long j25 = i14 * j19;
        long j26 = i15;
        long j27 = j26 * j26;
        long j28 = i16 * 2;
        long j29 = j26 * j28;
        long j30 = i17 * 2;
        long j31 = i16;
        long j32 = (j31 * j31) + (j26 * j30);
        long j33 = i18 * 2;
        long j34 = (j26 * j33) + (j28 * j30);
        long j35 = i19 * 2;
        long j36 = (j31 * j33) + (j26 * j35) + (i17 * j30);
        long j37 = i18;
        long j38 = j11 - (((j33 * j30) + (j28 * j35)) * 38);
        long j39 = j13 - (((j37 * j37) + (j30 * j35)) * 38);
        long j40 = j16 - ((j37 * j35) * 38);
        long j41 = j18 - ((i19 * j35) * 38);
        long j42 = j21 - j27;
        long j43 = j23 - j29;
        long j44 = j24 - j32;
        long j45 = j25 - j34;
        int i20 = i11 + i16;
        int i21 = i12 + i17;
        int i22 = i13 + i18;
        int i23 = i14 + i19;
        long j46 = i10 + i15;
        long j47 = i20 * 2;
        long j48 = j46 * j47;
        long j49 = i21 * 2;
        long j50 = i20;
        long j51 = (j50 * j50) + (j46 * j49);
        long j52 = i22 * 2;
        long j53 = (j46 * j52) + (j47 * j49);
        long j54 = i23 * 2;
        long j55 = (j50 * j52) + (j46 * j54) + (i21 * j49);
        long j56 = (j52 * j49) + (j47 * j54);
        long j57 = i22;
        long j58 = (j57 * j57) + (j49 * j54);
        long j59 = j57 * j54;
        long j60 = i23 * j54;
        long j61 = (j53 - j41) + j45;
        int i24 = ((int) j61) & M26;
        long j62 = ((j55 - j20) - j36) + (j61 >> 26);
        int i25 = ((int) j62) & M25;
        long j63 = ((((j62 >> 25) + j56) - j42) * 38) + j38;
        iArr2[0] = ((int) j63) & M26;
        long j64 = ((j58 - j43) * 38) + j39 + (j63 >> 26);
        iArr2[1] = ((int) j64) & M26;
        long j65 = ((j59 - j44) * 38) + j40 + (j64 >> 26);
        iArr2[2] = ((int) j65) & M25;
        long j66 = ((j60 - j45) * 38) + j41 + (j65 >> 25);
        iArr2[3] = ((int) j66) & M26;
        long jC = z.c(j36, 38L, j20, j66 >> 26);
        iArr2[4] = ((int) jC) & M25;
        long j67 = ((j46 * j46) - j38) + j42 + (jC >> 25);
        iArr2[5] = ((int) j67) & M26;
        long j68 = (j48 - j39) + j43 + (j67 >> 26);
        iArr2[6] = ((int) j68) & M26;
        long j69 = (j51 - j40) + j44 + (j68 >> 26);
        iArr2[7] = M25 & ((int) j69);
        long j70 = (j69 >> 25) + i24;
        iArr2[8] = ((int) j70) & M26;
        iArr2[9] = i25 + ((int) (j70 >> 26));
    }

    public static void decode(byte[] bArr, int[] iArr) {
        decode128(bArr, 0, iArr, 0);
        decode128(bArr, 16, iArr, 5);
        iArr[9] = iArr[9] & 16777215;
    }

    public static void encode(int[] iArr, byte[] bArr, int i10) {
        encode128(iArr, 0, bArr, i10);
        encode128(iArr, 5, bArr, i10 + 16);
    }

    public static void decode(int[] iArr, int i10, int[] iArr2) {
        decode128(iArr, i10, iArr2, 0);
        decode128(iArr, i10 + 4, iArr2, 5);
        iArr2[9] = iArr2[9] & 16777215;
    }

    public static void encode(int[] iArr, int[] iArr2, int i10) {
        encode128(iArr, 0, iArr2, i10);
        encode128(iArr, 5, iArr2, i10 + 4);
    }
}
