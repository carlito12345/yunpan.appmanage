package org.bouncycastle.math.ec.rfc7748;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import org.bouncycastle.math.raw.Mod;

/* loaded from: classes3.dex */
public abstract class X448Field {
    private static final int M28 = 268435455;
    private static final int[] P32 = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public static final int SIZE = 16;
    private static final long U32 = 4294967295L;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i10 = 0; i10 < 16; i10++) {
            iArr3[i10] = iArr[i10] + iArr2[i10];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
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
        int i20 = iArr[10];
        int i21 = iArr[11];
        int i22 = iArr[12];
        int i23 = iArr[13];
        int i24 = iArr[14];
        int i25 = iArr[15];
        int i26 = i11 + (i10 >>> 28);
        int i27 = i10 & M28;
        int i28 = i15 + (i14 >>> 28);
        int i29 = i14 & M28;
        int i30 = i19 + (i18 >>> 28);
        int i31 = i18 & M28;
        int i32 = i23 + (i22 >>> 28);
        int i33 = i22 & M28;
        int i34 = i12 + (i26 >>> 28);
        int i35 = i26 & M28;
        int i36 = i16 + (i28 >>> 28);
        int i37 = i28 & M28;
        int i38 = i20 + (i30 >>> 28);
        int i39 = i30 & M28;
        int i40 = i24 + (i32 >>> 28);
        int i41 = i32 & M28;
        int i42 = i13 + (i34 >>> 28);
        int i43 = i34 & M28;
        int i44 = i17 + (i36 >>> 28);
        int i45 = i36 & M28;
        int i46 = i21 + (i38 >>> 28);
        int i47 = i38 & M28;
        int i48 = i25 + (i40 >>> 28);
        int i49 = i40 & M28;
        int i50 = i48 >>> 28;
        int i51 = i48 & M28;
        int i52 = i27 + i50;
        int i53 = i29 + (i42 >>> 28);
        int i54 = i42 & M28;
        int i55 = i31 + i50 + (i44 >>> 28);
        int i56 = i44 & M28;
        int i57 = i33 + (i46 >>> 28);
        int i58 = i46 & M28;
        int i59 = i35 + (i52 >>> 28);
        int i60 = i52 & M28;
        int i61 = i37 + (i53 >>> 28);
        int i62 = i53 & M28;
        int i63 = i39 + (i55 >>> 28);
        int i64 = i55 & M28;
        int i65 = i41 + (i57 >>> 28);
        int i66 = i57 & M28;
        iArr[0] = i60;
        iArr[1] = i59;
        iArr[2] = i43;
        iArr[3] = i54;
        iArr[4] = i62;
        iArr[5] = i61;
        iArr[6] = i45;
        iArr[7] = i56;
        iArr[8] = i64;
        iArr[9] = i63;
        iArr[10] = i47;
        iArr[11] = i58;
        iArr[12] = i66;
        iArr[13] = i65;
        iArr[14] = i49;
        iArr[15] = i51;
    }

    public static void cmov(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        for (int i13 = 0; i13 < 16; i13++) {
            int i14 = i12 + i13;
            int i15 = iArr2[i14];
            iArr2[i14] = i15 ^ ((iArr[i11 + i13] ^ i15) & i10);
        }
    }

    public static void cnegate(int i10, int[] iArr) {
        int[] iArrCreate = create();
        sub(iArrCreate, iArr, iArrCreate);
        cmov(-i10, iArrCreate, 0, iArr, 0);
    }

    public static void copy(int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 16; i12++) {
            iArr2[i11 + i12] = iArr[i10 + i12];
        }
    }

    public static int[] create() {
        return new int[16];
    }

    public static int[] createTable(int i10) {
        return new int[i10 * 16];
    }

    public static void cswap(int i10, int[] iArr, int[] iArr2) {
        int i11 = 0 - i10;
        for (int i12 = 0; i12 < 16; i12++) {
            int i13 = iArr[i12];
            int i14 = iArr2[i12];
            int i15 = (i13 ^ i14) & i11;
            iArr[i12] = i13 ^ i15;
            iArr2[i12] = i14 ^ i15;
        }
    }

    public static void decode(byte[] bArr, int i10, int[] iArr) {
        decode56(bArr, i10, iArr, 0);
        decode56(bArr, i10 + 7, iArr, 2);
        decode56(bArr, i10 + 14, iArr, 4);
        decode56(bArr, i10 + 21, iArr, 6);
        decode56(bArr, i10 + 28, iArr, 8);
        decode56(bArr, i10 + 35, iArr, 10);
        decode56(bArr, i10 + 42, iArr, 12);
        decode56(bArr, i10 + 49, iArr, 14);
    }

    private static void decode224(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        int i16 = iArr[i10 + 4];
        int i17 = iArr[i10 + 5];
        int i18 = iArr[i10 + 6];
        iArr2[i11] = i12 & M28;
        iArr2[i11 + 1] = ((i12 >>> 28) | (i13 << 4)) & M28;
        iArr2[i11 + 2] = ((i13 >>> 24) | (i14 << 8)) & M28;
        iArr2[i11 + 3] = ((i14 >>> 20) | (i15 << 12)) & M28;
        iArr2[i11 + 4] = ((i15 >>> 16) | (i16 << 16)) & M28;
        iArr2[i11 + 5] = ((i16 >>> 12) | (i17 << 20)) & M28;
        iArr2[i11 + 6] = M28 & ((i17 >>> 8) | (i18 << 24));
        iArr2[i11 + 7] = i18 >>> 4;
    }

    private static int decode24(byte[] bArr, int i10) {
        return ((bArr[i10 + 2] & 255) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    private static int decode32(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    private static void decode56(byte[] bArr, int i10, int[] iArr, int i11) {
        int iDecode32 = decode32(bArr, i10);
        int iDecode24 = decode24(bArr, i10 + 4);
        iArr[i11] = M28 & iDecode32;
        iArr[i11 + 1] = (iDecode24 << 4) | (iDecode32 >>> 28);
    }

    public static void encode(int[] iArr, int i10, byte[] bArr, int i11) {
        encode56(iArr, i10, bArr, i11);
        encode56(iArr, i10 + 2, bArr, i11 + 7);
        encode56(iArr, i10 + 4, bArr, i11 + 14);
        encode56(iArr, i10 + 6, bArr, i11 + 21);
        encode56(iArr, i10 + 8, bArr, i11 + 28);
        encode56(iArr, i10 + 10, bArr, i11 + 35);
        encode56(iArr, i10 + 12, bArr, i11 + 42);
        encode56(iArr, i10 + 14, bArr, i11 + 49);
    }

    private static void encode224(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        int i14 = iArr[i10 + 2];
        int i15 = iArr[i10 + 3];
        int i16 = iArr[i10 + 4];
        int i17 = iArr[i10 + 5];
        int i18 = iArr[i10 + 6];
        int i19 = iArr[i10 + 7];
        iArr2[i11] = (i13 << 28) | i12;
        iArr2[i11 + 1] = (i13 >>> 4) | (i14 << 24);
        iArr2[i11 + 2] = (i14 >>> 8) | (i15 << 20);
        iArr2[i11 + 3] = (i15 >>> 12) | (i16 << 16);
        iArr2[i11 + 4] = (i16 >>> 16) | (i17 << 12);
        iArr2[i11 + 5] = (i17 >>> 20) | (i18 << 8);
        iArr2[i11 + 6] = (i19 << 4) | (i18 >>> 24);
    }

    private static void encode24(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
    }

    private static void encode32(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    private static void encode56(int[] iArr, int i10, byte[] bArr, int i11) {
        int i12 = iArr[i10];
        int i13 = iArr[i10 + 1];
        encode32((i13 << 28) | i12, bArr, i11);
        encode24(i13 >>> 4, bArr, i11 + 4);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[14];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        int[] iArr3 = new int[14];
        copy(iArr, 0, iArrCreate, 0);
        normalize(iArrCreate);
        encode(iArrCreate, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i10 = iArr[0] ^ 1;
        for (int i11 = 1; i11 < 16; i11++) {
            i10 |= iArr[i11];
        }
        return (((i10 >>> 1) | (i10 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
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
        int i21 = iArr[10];
        int i22 = iArr[11];
        int i23 = iArr[12];
        int i24 = iArr[13];
        int i25 = iArr[14];
        int i26 = iArr[15];
        long j10 = i12;
        long j11 = i10;
        long j12 = j10 * j11;
        int i27 = ((int) j12) & M28;
        long j13 = i16 * j11;
        int i28 = ((int) j13) & M28;
        long j14 = i20 * j11;
        int i29 = ((int) j14) & M28;
        long j15 = i24 * j11;
        int i30 = ((int) j15) & M28;
        long j16 = (i13 * j11) + (j12 >>> 28);
        iArr2[2] = ((int) j16) & M28;
        long j17 = (i17 * j11) + (j13 >>> 28);
        iArr2[6] = ((int) j17) & M28;
        long j18 = (i21 * j11) + (j14 >>> 28);
        iArr2[10] = ((int) j18) & M28;
        long j19 = (i25 * j11) + (j15 >>> 28);
        iArr2[14] = ((int) j19) & M28;
        long j20 = (i14 * j11) + (j16 >>> 28);
        iArr2[3] = ((int) j20) & M28;
        long j21 = j20 >>> 28;
        long j22 = (i18 * j11) + (j17 >>> 28);
        iArr2[7] = ((int) j22) & M28;
        long j23 = (i22 * j11) + (j18 >>> 28);
        iArr2[11] = ((int) j23) & M28;
        long j24 = j23 >>> 28;
        long j25 = (i26 * j11) + (j19 >>> 28);
        iArr2[15] = ((int) j25) & M28;
        long j26 = j25 >>> 28;
        long j27 = (i15 * j11) + j21;
        iArr2[4] = ((int) j27) & M28;
        long j28 = j27 >>> 28;
        long j29 = (i19 * j11) + (j22 >>> 28) + j26;
        iArr2[8] = ((int) j29) & M28;
        long j30 = j29 >>> 28;
        long j31 = (i23 * j11) + j24;
        iArr2[12] = ((int) j31) & M28;
        long j32 = j31 >>> 28;
        long j33 = (i11 * j11) + j26;
        iArr2[0] = ((int) j33) & M28;
        iArr2[1] = i27 + ((int) (j33 >>> 28));
        iArr2[5] = i28 + ((int) j28);
        iArr2[9] = i29 + ((int) j30);
        iArr2[13] = i30 + ((int) j32);
    }

    public static void negate(int[] iArr, int[] iArr2) {
        sub(create(), iArr, iArr2);
    }

    public static void normalize(int[] iArr) {
        reduce(iArr, 1);
        reduce(iArr, -1);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i10 = 1; i10 < 16; i10++) {
            iArr[i10] = 0;
        }
    }

    private static void powPm3d4(int[] iArr, int[] iArr2) {
        int[] iArrCreate = create();
        sqr(iArr, iArrCreate);
        mul(iArr, iArrCreate, iArrCreate);
        int[] iArrCreate2 = create();
        sqr(iArrCreate, iArrCreate2);
        mul(iArr, iArrCreate2, iArrCreate2);
        int[] iArrCreate3 = create();
        sqr(iArrCreate2, 3, iArrCreate3);
        mul(iArrCreate2, iArrCreate3, iArrCreate3);
        int[] iArrCreate4 = create();
        sqr(iArrCreate3, 3, iArrCreate4);
        mul(iArrCreate2, iArrCreate4, iArrCreate4);
        int[] iArrCreate5 = create();
        sqr(iArrCreate4, 9, iArrCreate5);
        mul(iArrCreate4, iArrCreate5, iArrCreate5);
        int[] iArrCreate6 = create();
        sqr(iArrCreate5, iArrCreate6);
        mul(iArr, iArrCreate6, iArrCreate6);
        int[] iArrCreate7 = create();
        sqr(iArrCreate6, 18, iArrCreate7);
        mul(iArrCreate5, iArrCreate7, iArrCreate7);
        int[] iArrCreate8 = create();
        sqr(iArrCreate7, 37, iArrCreate8);
        mul(iArrCreate7, iArrCreate8, iArrCreate8);
        int[] iArrCreate9 = create();
        sqr(iArrCreate8, 37, iArrCreate9);
        mul(iArrCreate7, iArrCreate9, iArrCreate9);
        int[] iArrCreate10 = create();
        sqr(iArrCreate9, 111, iArrCreate10);
        mul(iArrCreate9, iArrCreate10, iArrCreate10);
        int[] iArrCreate11 = create();
        sqr(iArrCreate10, iArrCreate11);
        mul(iArr, iArrCreate11, iArrCreate11);
        int[] iArrCreate12 = create();
        sqr(iArrCreate11, CarSettingID.Recv.PAA_DVR_TRIGGER, iArrCreate12);
        mul(iArrCreate12, iArrCreate10, iArr2);
    }

    private static void reduce(int[] iArr, int i10) {
        int i11;
        int i12 = iArr[15];
        int i13 = i12 & M28;
        long j10 = (i12 >>> 28) + i10;
        int i14 = 0;
        long j11 = j10;
        while (true) {
            if (i14 >= 8) {
                break;
            }
            long j12 = j11 + (4294967295L & iArr[i14]);
            iArr[i14] = ((int) j12) & M28;
            j11 = j12 >> 28;
            i14++;
        }
        long j13 = j11 + j10;
        for (i11 = 8; i11 < 15; i11++) {
            long j14 = j13 + (iArr[i11] & 4294967295L);
            iArr[i11] = ((int) j14) & M28;
            j13 = j14 >> 28;
        }
        iArr[15] = i13 + ((int) j13);
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
        sqr(iArr, iArrCreate);
        mul(iArrCreate, iArr2, iArrCreate);
        sqr(iArrCreate, iArrCreate2);
        mul(iArrCreate, iArr, iArrCreate);
        mul(iArrCreate2, iArr, iArrCreate2);
        mul(iArrCreate2, iArr2, iArrCreate2);
        int[] iArrCreate3 = create();
        powPm3d4(iArrCreate2, iArrCreate3);
        mul(iArrCreate3, iArrCreate, iArrCreate3);
        int[] iArrCreate4 = create();
        sqr(iArrCreate3, iArrCreate4);
        mul(iArrCreate4, iArr2, iArrCreate4);
        sub(iArr, iArrCreate4, iArrCreate4);
        normalize(iArrCreate4);
        if (!isZeroVar(iArrCreate4)) {
            return false;
        }
        copy(iArrCreate3, 0, iArr3, 0);
        return true;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
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
        int i20 = iArr[10];
        int i21 = iArr[11];
        int i22 = iArr[12];
        int i23 = iArr[13];
        int i24 = iArr[14];
        int i25 = iArr[15];
        int i26 = iArr2[0];
        int i27 = iArr2[1];
        int i28 = iArr2[2];
        int i29 = iArr2[3];
        int i30 = iArr2[4];
        int i31 = iArr2[5];
        int i32 = iArr2[6];
        int i33 = iArr2[7];
        int i34 = iArr2[8];
        int i35 = iArr2[9];
        int i36 = iArr2[10];
        int i37 = iArr2[11];
        int i38 = iArr2[12];
        int i39 = iArr2[13];
        int i40 = iArr2[14];
        int i41 = (i11 + 536870910) - i27;
        int i42 = (i15 + 536870910) - i31;
        int i43 = (i19 + 536870910) - i35;
        int i44 = (i23 + 536870910) - i39;
        int i45 = (i25 + 536870910) - iArr2[15];
        int i46 = ((i12 + 536870910) - i28) + (i41 >>> 28);
        int i47 = i41 & M28;
        int i48 = ((i16 + 536870910) - i32) + (i42 >>> 28);
        int i49 = i42 & M28;
        int i50 = ((i20 + 536870910) - i36) + (i43 >>> 28);
        int i51 = i43 & M28;
        int i52 = ((i24 + 536870910) - i40) + (i44 >>> 28);
        int i53 = i44 & M28;
        int i54 = ((i13 + 536870910) - i29) + (i46 >>> 28);
        int i55 = i46 & M28;
        int i56 = ((i17 + 536870910) - i33) + (i48 >>> 28);
        int i57 = i48 & M28;
        int i58 = ((i21 + 536870910) - i37) + (i50 >>> 28);
        int i59 = i50 & M28;
        int i60 = i45 + (i52 >>> 28);
        int i61 = i52 & M28;
        int i62 = i60 >>> 28;
        int i63 = i60 & M28;
        int i64 = ((i10 + 536870910) - i26) + i62;
        int i65 = ((i14 + 536870910) - i30) + (i54 >>> 28);
        int i66 = i54 & M28;
        int i67 = ((i18 + 536870908) - i34) + i62 + (i56 >>> 28);
        int i68 = i56 & M28;
        int i69 = ((i22 + 536870910) - i38) + (i58 >>> 28);
        int i70 = i58 & M28;
        int i71 = i47 + (i64 >>> 28);
        int i72 = i64 & M28;
        int i73 = i49 + (i65 >>> 28);
        int i74 = i65 & M28;
        int i75 = i51 + (i67 >>> 28);
        int i76 = i67 & M28;
        int i77 = i53 + (i69 >>> 28);
        int i78 = i69 & M28;
        iArr3[0] = i72;
        iArr3[1] = i71;
        iArr3[2] = i55;
        iArr3[3] = i66;
        iArr3[4] = i74;
        iArr3[5] = i73;
        iArr3[6] = i57;
        iArr3[7] = i68;
        iArr3[8] = i76;
        iArr3[9] = i75;
        iArr3[10] = i59;
        iArr3[11] = i70;
        iArr3[12] = i78;
        iArr3[13] = i77;
        iArr3[14] = i61;
        iArr3[15] = i63;
    }

    public static void subOne(int[] iArr) {
        int[] iArrCreate = create();
        iArrCreate[0] = 1;
        sub(iArr, iArrCreate, iArr);
    }

    public static void zero(int[] iArr) {
        for (int i10 = 0; i10 < 16; i10++) {
            iArr[i10] = 0;
        }
    }

    public static void addOne(int[] iArr, int i10) {
        iArr[i10] = iArr[i10] + 1;
    }

    public static void decode(byte[] bArr, int i10, int[] iArr, int i11) {
        decode56(bArr, i10, iArr, i11);
        decode56(bArr, i10 + 7, iArr, i11 + 2);
        decode56(bArr, i10 + 14, iArr, i11 + 4);
        decode56(bArr, i10 + 21, iArr, i11 + 6);
        decode56(bArr, i10 + 28, iArr, i11 + 8);
        decode56(bArr, i10 + 35, iArr, i11 + 10);
        decode56(bArr, i10 + 42, iArr, i11 + 12);
        decode56(bArr, i10 + 49, iArr, i11 + 14);
    }

    public static void encode(int[] iArr, byte[] bArr) {
        encode56(iArr, 0, bArr, 0);
        encode56(iArr, 2, bArr, 7);
        encode56(iArr, 4, bArr, 14);
        encode56(iArr, 6, bArr, 21);
        encode56(iArr, 8, bArr, 28);
        encode56(iArr, 10, bArr, 35);
        encode56(iArr, 12, bArr, 42);
        encode56(iArr, 14, bArr, 49);
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
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
        int i20 = iArr[10];
        int i21 = iArr[11];
        int i22 = iArr[12];
        int i23 = iArr[13];
        int i24 = iArr[14];
        int i25 = iArr[15];
        int i26 = iArr2[0];
        int i27 = iArr2[1];
        int i28 = iArr2[2];
        int i29 = iArr2[3];
        int i30 = iArr2[4];
        int i31 = iArr2[5];
        int i32 = iArr2[6];
        int i33 = iArr2[7];
        int i34 = iArr2[8];
        int i35 = iArr2[9];
        int i36 = iArr2[10];
        int i37 = iArr2[11];
        int i38 = iArr2[12];
        int i39 = iArr2[13];
        int i40 = iArr2[14];
        int i41 = iArr2[15];
        int i42 = i10 + i18;
        int i43 = i12 + i20;
        int i44 = i13 + i21;
        int i45 = i14 + i22;
        int i46 = i15 + i23;
        int i47 = i16 + i24;
        int i48 = i26 + i34;
        int i49 = i27 + i35;
        int i50 = i28 + i36;
        int i51 = i29 + i37;
        int i52 = i30 + i38;
        int i53 = i31 + i39;
        int i54 = i32 + i40;
        int i55 = i33 + i41;
        long j10 = i10;
        long j11 = i26;
        long j12 = j10 * j11;
        long j13 = i17;
        long j14 = i27;
        long j15 = j13 * j14;
        long j16 = i16;
        long j17 = i28;
        long j18 = (j16 * j17) + j15;
        long j19 = i15;
        long j20 = i29;
        long j21 = (j19 * j20) + j18;
        long j22 = i14;
        long j23 = i30;
        long j24 = (j22 * j23) + j21;
        long j25 = i13;
        long j26 = i31;
        long j27 = (j25 * j26) + j24;
        long j28 = i12;
        long j29 = i32;
        long j30 = (j28 * j29) + j27;
        long j31 = i11;
        long j32 = i33;
        long j33 = (j31 * j32) + j30;
        long j34 = i18;
        long j35 = i34;
        long j36 = j34 * j35;
        long j37 = i25;
        long j38 = i35;
        long j39 = j37 * j38;
        long j40 = i24;
        long j41 = i36;
        long j42 = (j40 * j41) + j39;
        long j43 = i23;
        long j44 = i37;
        long j45 = (j43 * j44) + j42;
        long j46 = i22;
        long j47 = i38;
        long j48 = (j46 * j47) + j45;
        long j49 = i21;
        long j50 = i39;
        long j51 = (j49 * j50) + j48;
        long j52 = i20;
        long j53 = i40;
        long j54 = (j52 * j53) + j51;
        long j55 = i19;
        long j56 = i41;
        long j57 = (j55 * j56) + j54;
        long j58 = i42;
        long j59 = i48;
        long j60 = j58 * j59;
        long j61 = i17 + i25;
        long j62 = i49;
        long j63 = j61 * j62;
        long j64 = i47;
        long j65 = i50;
        long j66 = (j64 * j65) + j63;
        long j67 = i46;
        long j68 = i51;
        long j69 = (j67 * j68) + j66;
        long j70 = i45;
        long j71 = i52;
        long j72 = (j70 * j71) + j69;
        long j73 = i44;
        long j74 = i53;
        long j75 = (j73 * j74) + j72;
        long j76 = i43;
        long j77 = i54;
        long j78 = (j76 * j77) + j75;
        long j79 = i11 + i19;
        long j80 = i55;
        long j81 = (j79 * j80) + j78;
        long j82 = ((j12 + j36) + j81) - j33;
        int i56 = ((int) j82) & M28;
        long j83 = j82 >>> 28;
        long j84 = ((j57 + j60) - j12) + j81;
        int i57 = ((int) j84) & M28;
        long j85 = (j10 * j14) + (j31 * j11);
        long j86 = (j52 * j56) + (j49 * j53) + (j46 * j50) + (j43 * j47) + (j40 * j44) + (j37 * j41);
        long j87 = (j58 * j62) + (j79 * j59);
        long j88 = (j76 * j80) + (j73 * j77) + (j70 * j74) + (j67 * j71) + (j64 * j68) + (j61 * j65);
        long j89 = (((j85 + ((j34 * j38) + (j55 * j35))) + j88) - ((j28 * j32) + ((j25 * j29) + ((j22 * j26) + ((j19 * j23) + ((j16 * j20) + (j13 * j17))))))) + j83;
        int i58 = ((int) j89) & M28;
        long j90 = ((j86 + j87) - j85) + j88 + (j84 >>> 28);
        int i59 = ((int) j90) & M28;
        long j91 = (j10 * j17) + (j31 * j14) + (j28 * j11);
        long j92 = (j49 * j56) + (j46 * j53) + (j43 * j50) + (j40 * j47) + (j37 * j44);
        long j93 = (j58 * j65) + (j79 * j62) + (j76 * j59);
        long j94 = (j73 * j80) + (j70 * j77) + (j67 * j74) + (j64 * j71) + (j61 * j68);
        long j95 = (((j91 + ((j34 * j41) + ((j55 * j38) + (j52 * j35)))) + j94) - ((j25 * j32) + ((j22 * j29) + ((j19 * j26) + ((j16 * j23) + (j13 * j20)))))) + (j89 >>> 28);
        int i60 = ((int) j95) & M28;
        long j96 = ((j92 + j93) - j91) + j94 + (j90 >>> 28);
        int i61 = ((int) j96) & M28;
        long j97 = (j10 * j20) + (j31 * j17) + (j28 * j14) + (j25 * j11);
        long j98 = (j46 * j56) + (j43 * j53) + (j40 * j50) + (j37 * j47);
        long j99 = (j58 * j68) + (j79 * j65) + (j76 * j62) + (j73 * j59);
        long j100 = (j70 * j80) + (j67 * j77) + (j64 * j74) + (j61 * j71);
        long j101 = (((j97 + ((j34 * j44) + ((j55 * j41) + ((j52 * j38) + (j49 * j35))))) + j100) - ((j22 * j32) + ((j19 * j29) + ((j16 * j26) + (j13 * j23))))) + (j95 >>> 28);
        int i62 = ((int) j101) & M28;
        long j102 = ((j98 + j99) - j97) + j100 + (j96 >>> 28);
        int i63 = ((int) j102) & M28;
        long j103 = (j10 * j23) + (j31 * j20) + (j28 * j17) + (j25 * j14) + (j22 * j11);
        long j104 = (j43 * j56) + (j40 * j53) + (j37 * j50);
        long j105 = (j58 * j71) + (j79 * j68) + (j76 * j65) + (j73 * j62) + (j70 * j59);
        long j106 = (j67 * j80) + (j64 * j77) + (j61 * j74);
        long j107 = (((j103 + ((j34 * j47) + ((j55 * j44) + ((j52 * j41) + ((j49 * j38) + (j46 * j35)))))) + j106) - ((j19 * j32) + ((j16 * j29) + (j13 * j26)))) + (j101 >>> 28);
        int i64 = ((int) j107) & M28;
        long j108 = ((j104 + j105) - j103) + j106 + (j102 >>> 28);
        int i65 = ((int) j108) & M28;
        long j109 = (j10 * j26) + (j31 * j23) + (j28 * j20) + (j25 * j17) + (j22 * j14) + (j19 * j11);
        long j110 = (j40 * j56) + (j37 * j53);
        long j111 = (j58 * j74) + (j79 * j71) + (j76 * j68) + (j73 * j65) + (j70 * j62) + (j67 * j59);
        long j112 = (j64 * j80) + (j61 * j77);
        long j113 = (((j109 + ((j34 * j50) + ((j55 * j47) + ((j52 * j44) + ((j49 * j41) + ((j46 * j38) + (j43 * j35))))))) + j112) - ((j16 * j32) + (j13 * j29))) + (j107 >>> 28);
        int i66 = ((int) j113) & M28;
        long j114 = ((j110 + j111) - j109) + j112 + (j108 >>> 28);
        int i67 = ((int) j114) & M28;
        long j115 = (j10 * j29) + (j31 * j26) + (j28 * j23) + (j25 * j20) + (j22 * j17) + (j19 * j14) + (j16 * j11);
        long j116 = j37 * j56;
        long j117 = (j58 * j77) + (j79 * j74) + (j76 * j71) + (j73 * j68) + (j70 * j65) + (j67 * j62) + (j64 * j59);
        long j118 = j61 * j80;
        long j119 = (((j115 + ((j34 * j53) + ((j55 * j50) + ((j52 * j47) + ((j49 * j44) + ((j46 * j41) + ((j43 * j38) + (j40 * j35)))))))) + j118) - (j13 * j32)) + (j113 >>> 28);
        int i68 = ((int) j119) & M28;
        long j120 = ((j116 + j117) - j115) + j118 + (j114 >>> 28);
        int i69 = ((int) j120) & M28;
        long j121 = (j10 * j32) + (j31 * j29) + (j28 * j26) + (j25 * j23) + (j22 * j20) + (j19 * j17) + (j14 * j16) + (j11 * j13);
        long j122 = (j34 * j56) + (j55 * j53) + (j52 * j50) + (j49 * j47) + (j46 * j44) + (j41 * j43) + (j38 * j40) + (j37 * j35);
        long j123 = j121 + j122 + (j119 >>> 28);
        int i70 = ((int) j123) & M28;
        long j124 = (((j58 * j80) + ((j79 * j77) + ((j76 * j74) + ((j73 * j71) + ((j70 * j68) + ((j67 * j65) + ((j64 * j62) + (j61 * j59)))))))) - j121) + (j120 >>> 28);
        int i71 = ((int) j124) & M28;
        long j125 = j124 >>> 28;
        long j126 = (j123 >>> 28) + j125 + i57;
        int i72 = ((int) j126) & M28;
        long j127 = j125 + i56;
        iArr3[0] = ((int) j127) & M28;
        iArr3[1] = i58 + ((int) (j127 >>> 28));
        iArr3[2] = i60;
        iArr3[3] = i62;
        iArr3[4] = i64;
        iArr3[5] = i66;
        iArr3[6] = i68;
        iArr3[7] = i70;
        iArr3[8] = i72;
        iArr3[9] = i59 + ((int) (j126 >>> 28));
        iArr3[10] = i61;
        iArr3[11] = i63;
        iArr3[12] = i65;
        iArr3[13] = i67;
        iArr3[14] = i69;
        iArr3[15] = i71;
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
        int i20 = iArr[10];
        int i21 = iArr[11];
        int i22 = iArr[12];
        int i23 = iArr[13];
        int i24 = iArr[14];
        int i25 = iArr[15];
        int i26 = i10 * 2;
        int i27 = i11 * 2;
        int i28 = i12 * 2;
        int i29 = i13 * 2;
        int i30 = i14 * 2;
        int i31 = i15 * 2;
        int i32 = i16 * 2;
        int i33 = i18 * 2;
        int i34 = i19 * 2;
        int i35 = i20 * 2;
        int i36 = i21 * 2;
        int i37 = i22 * 2;
        int i38 = i23 * 2;
        int i39 = i24 * 2;
        int i40 = i10 + i18;
        int i41 = i11 + i19;
        int i42 = i12 + i20;
        int i43 = i13 + i21;
        int i44 = i14 + i22;
        int i45 = i15 + i23;
        int i46 = i16 + i24;
        int i47 = i17 + i25;
        int i48 = i40 * 2;
        int i49 = i41 * 2;
        int i50 = i42 * 2;
        int i51 = i43 * 2;
        int i52 = i45 * 2;
        long j10 = i10;
        long j11 = j10 * j10;
        long j12 = i17;
        long j13 = i27;
        long j14 = j12 * j13;
        long j15 = i16;
        long j16 = i28;
        long j17 = (j15 * j16) + j14;
        long j18 = i15;
        long j19 = i29;
        long j20 = i14;
        long j21 = (j20 * j20) + (j18 * j19) + j17;
        long j22 = i18;
        long j23 = i25;
        long j24 = i34;
        long j25 = j23 * j24;
        long j26 = i24;
        long j27 = i35;
        long j28 = (j26 * j27) + j25;
        long j29 = i23;
        long j30 = i36;
        long j31 = (j29 * j30) + j28;
        long j32 = i22;
        long j33 = i40;
        long j34 = i47;
        long j35 = i49 & 4294967295L;
        long j36 = j34 * j35;
        long j37 = i46;
        long j38 = i50 & 4294967295L;
        long j39 = (j37 * j38) + j36;
        long j40 = i45;
        long j41 = i51 & 4294967295L;
        long j42 = (j40 * j41) + j39;
        long j43 = i44;
        long j44 = (j43 * j43) + j42;
        long j45 = ((j11 + (j22 * j22)) + j44) - j21;
        int i53 = ((int) j45) & M28;
        long j46 = ((((j32 * j32) + j31) + (j33 * j33)) - j11) + j44;
        int i54 = ((int) j46) & M28;
        long j47 = j46 >>> 28;
        long j48 = i11;
        long j49 = i26;
        long j50 = j48 * j49;
        long j51 = j15 * j19;
        long j52 = i30;
        long j53 = j18 * j52;
        long j54 = i19;
        long j55 = i33;
        long j56 = j54 * j55;
        long j57 = (j26 * j30) + (j23 * j27);
        long j58 = i37;
        long j59 = (j29 * j58) + j57;
        long j60 = i41;
        long j61 = i48 & 4294967295L;
        long j62 = (j37 * j41) + (j34 * j38);
        long j63 = (i44 * 2) & 4294967295L;
        long j64 = (j40 * j63) + j62;
        long j65 = (((j50 + j56) + j64) - (j53 + (j51 + (j12 * j16)))) + (j45 >>> 28);
        int i55 = ((int) j65) & M28;
        long j66 = ((j59 + (j60 * j61)) - j50) + j64 + j47;
        int i56 = ((int) j66) & M28;
        long j67 = j66 >>> 28;
        long j68 = i12;
        long j69 = (j48 * j48) + (j68 * j49);
        long j70 = i20;
        long j71 = (j54 * j54) + (j70 * j55);
        long j72 = i42;
        long j73 = (j40 * j40) + (j37 * j63) + (j34 * j41);
        long j74 = (((j69 + j71) + j73) - ((j18 * j18) + ((j15 * j52) + (j12 * j19)))) + (j65 >>> 28);
        int i57 = ((int) j74) & M28;
        long j75 = ((((j29 * j29) + ((j26 * j58) + (j23 * j30))) + ((j60 * j60) + (j72 * j61))) - j69) + j73 + j67;
        int i58 = ((int) j75) & M28;
        long j76 = i13;
        long j77 = (j68 * j13) + (j76 * j49);
        long j78 = i31;
        long j79 = i21;
        long j80 = (j70 * j24) + (j79 * j55);
        long j81 = i38;
        long j82 = j26 * j81;
        long j83 = i43;
        long j84 = j72 * j35;
        long j85 = j63 * j34;
        long j86 = i52 & 4294967295L;
        long j87 = (j37 * j86) + j85;
        long j88 = (((j77 + j80) + j87) - ((j15 * j78) + (j12 * j52))) + (j74 >>> 28);
        int i59 = ((int) j88) & M28;
        long j89 = j88 >>> 28;
        long j90 = (((j82 + (j23 * j58)) + (j84 + (j83 * j61))) - j77) + j87 + (j75 >>> 28);
        int i60 = ((int) j90) & M28;
        long j91 = (j68 * j68) + (j76 * j13) + (j20 * j49);
        long j92 = (j15 * j15) + (j78 * j12);
        long j93 = (j70 * j70) + (j79 * j24) + (j32 * j55);
        long j94 = (j37 * j37) + (j86 * j34);
        long j95 = (((j91 + j93) + j94) - j92) + j89;
        int i61 = ((int) j95) & M28;
        long j96 = j95 >>> 28;
        long j97 = ((((j26 * j26) + (j23 * j81)) + ((j72 * j72) + ((j83 * j35) + (j43 * j61)))) - j91) + j94 + (j90 >>> 28);
        int i62 = ((int) j97) & M28;
        long j98 = (j76 * j16) + (j20 * j13) + (j18 * j49);
        long j99 = (j79 * j27) + (j32 * j24) + (j29 * j55);
        long j100 = (j83 * j38) + (j43 * j35) + (j40 * j61);
        long j101 = ((i46 * 2) & 4294967295L) * j34;
        long j102 = (((j98 + j99) + j101) - (i32 * j12)) + j96;
        int i63 = ((int) j102) & M28;
        long j103 = (((i39 * j23) + j100) - j98) + j101 + (j97 >>> 28);
        int i64 = ((int) j103) & M28;
        long j104 = (j76 * j76) + (j20 * j16) + (j18 * j13) + (j15 * j49);
        long j105 = j34 * j34;
        long j106 = (((j104 + ((j79 * j79) + ((j32 * j27) + ((j29 * j24) + (j26 * j55))))) + j105) - (j12 * j12)) + (j102 >>> 28);
        int i65 = ((int) j106) & M28;
        long j107 = (((j23 * j23) + ((j83 * j83) + ((j43 * j38) + ((j40 * j35) + (j37 * j61))))) - j104) + j105 + (j103 >>> 28);
        int i66 = ((int) j107) & M28;
        long j108 = (j20 * j19) + (j18 * j16) + (j15 * j13) + (j12 * j49);
        long j109 = (j32 * j30) + (j29 * j27) + (j26 * j24) + (j55 * j23) + j108 + (j106 >>> 28);
        int i67 = ((int) j109) & M28;
        long j110 = (((j43 * j41) + ((j40 * j38) + ((j37 * j35) + (j34 * j61)))) - j108) + (j107 >>> 28);
        int i68 = ((int) j110) & M28;
        long j111 = j110 >>> 28;
        long j112 = (j109 >>> 28) + j111 + i54;
        int i69 = ((int) j112) & M28;
        long j113 = j111 + i53;
        iArr2[0] = ((int) j113) & M28;
        iArr2[1] = i55 + ((int) (j113 >>> 28));
        iArr2[2] = i57;
        iArr2[3] = i59;
        iArr2[4] = i61;
        iArr2[5] = i63;
        iArr2[6] = i65;
        iArr2[7] = i67;
        iArr2[8] = i69;
        iArr2[9] = i56 + ((int) (j112 >>> 28));
        iArr2[10] = i58;
        iArr2[11] = i60;
        iArr2[12] = i62;
        iArr2[13] = i64;
        iArr2[14] = i66;
        iArr2[15] = i68;
    }

    public static void decode(byte[] bArr, int[] iArr) {
        decode56(bArr, 0, iArr, 0);
        decode56(bArr, 7, iArr, 2);
        decode56(bArr, 14, iArr, 4);
        decode56(bArr, 21, iArr, 6);
        decode56(bArr, 28, iArr, 8);
        decode56(bArr, 35, iArr, 10);
        decode56(bArr, 42, iArr, 12);
        decode56(bArr, 49, iArr, 14);
    }

    public static void encode(int[] iArr, byte[] bArr, int i10) {
        encode56(iArr, 0, bArr, i10);
        encode56(iArr, 2, bArr, i10 + 7);
        encode56(iArr, 4, bArr, i10 + 14);
        encode56(iArr, 6, bArr, i10 + 21);
        encode56(iArr, 8, bArr, i10 + 28);
        encode56(iArr, 10, bArr, i10 + 35);
        encode56(iArr, 12, bArr, i10 + 42);
        encode56(iArr, 14, bArr, i10 + 49);
    }

    public static void decode(int[] iArr, int i10, int[] iArr2) {
        decode224(iArr, i10, iArr2, 0);
        decode224(iArr, i10 + 7, iArr2, 8);
    }

    public static void encode(int[] iArr, int[] iArr2, int i10) {
        encode224(iArr, 0, iArr2, i10);
        encode224(iArr, 8, iArr2, i10 + 7);
    }
}
