package org.bouncycastle.pqc.legacy.math.linearalgebra;

import android.support.v4.media.session.a;
import g.b;

/* loaded from: classes3.dex */
public final class IntUtils {
    private IntUtils() {
    }

    public static int[] clone(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static boolean equals(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = iArr.length - 1; length >= 0; length--) {
            z &= iArr[length] == iArr2[length];
        }
        return z;
    }

    public static void fill(int[] iArr, int i10) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = i10;
        }
    }

    private static int partition(int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[i12];
        iArr[i12] = iArr[i11];
        iArr[i11] = i13;
        int i14 = i10;
        while (i10 < i11) {
            int i15 = iArr[i10];
            if (i15 <= i13) {
                int i16 = iArr[i14];
                iArr[i14] = i15;
                iArr[i10] = i16;
                i14++;
            }
            i10++;
        }
        int i17 = iArr[i14];
        iArr[i14] = iArr[i11];
        iArr[i11] = i17;
        return i14;
    }

    public static void quicksort(int[] iArr) {
        quicksort(iArr, 0, iArr.length - 1);
    }

    public static int[] subArray(int[] iArr, int i10, int i11) {
        int i12 = i11 - i10;
        int[] iArr2 = new int[i12];
        System.arraycopy(iArr, i10, iArr2, 0, i12);
        return iArr2;
    }

    public static String toHexString(int[] iArr) {
        return ByteUtils.toHexString(BigEndianConversions.toByteArray(iArr));
    }

    public static String toString(int[] iArr) {
        String strS = "";
        for (int i10 : iArr) {
            strS = a.s(b.m(strS), i10, " ");
        }
        return strS;
    }

    public static void quicksort(int[] iArr, int i10, int i11) {
        if (i11 > i10) {
            int iPartition = partition(iArr, i10, i11, i11);
            quicksort(iArr, i10, iPartition - 1);
            quicksort(iArr, iPartition + 1, i11);
        }
    }
}
