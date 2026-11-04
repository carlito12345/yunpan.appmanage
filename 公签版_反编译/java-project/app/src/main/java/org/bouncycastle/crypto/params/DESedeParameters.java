package org.bouncycastle.crypto.params;

/* loaded from: classes3.dex */
public class DESedeParameters extends DESParameters {
    public static final int DES_EDE_KEY_LENGTH = 24;

    public DESedeParameters(byte[] bArr) {
        super(bArr);
        if (isWeakKey(bArr, 0, bArr.length)) {
            throw new IllegalArgumentException("attempt to create weak DESede key");
        }
    }

    public static boolean isReal2Key(byte[] bArr, int i10) {
        boolean z = false;
        for (int i11 = i10; i11 != i10 + 8; i11++) {
            if (bArr[i11] != bArr[i11 + 8]) {
                z = true;
            }
        }
        return z;
    }

    public static boolean isReal3Key(byte[] bArr, int i10) {
        int i11 = i10;
        boolean z = false;
        boolean z4 = false;
        boolean z10 = false;
        while (true) {
            boolean z11 = true;
            if (i11 == i10 + 8) {
                break;
            }
            byte b10 = bArr[i11];
            byte b11 = bArr[i11 + 8];
            z |= b10 != b11;
            byte b12 = bArr[i11 + 16];
            z4 |= b10 != b12;
            if (b11 == b12) {
                z11 = false;
            }
            z10 |= z11;
            i11++;
        }
        return z && z4 && z10;
    }

    public static boolean isRealEDEKey(byte[] bArr, int i10) {
        return bArr.length == 16 ? isReal2Key(bArr, i10) : isReal3Key(bArr, i10);
    }

    public static boolean isWeakKey(byte[] bArr, int i10) {
        return isWeakKey(bArr, i10, bArr.length - i10);
    }

    public static boolean isWeakKey(byte[] bArr, int i10, int i11) {
        while (i10 < i11) {
            if (DESParameters.isWeakKey(bArr, i10)) {
                return true;
            }
            i10 += 8;
        }
        return false;
    }
}
