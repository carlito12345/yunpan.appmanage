package com.owen.tvrecyclerview.utils;

/* loaded from: classes.dex */
public class MathUtil {
    public static int commonDivisor(int i10, int i11) {
        while (true) {
            int i12 = i10 % i11;
            if (i12 == 0) {
                return i11;
            }
            int i13 = i11;
            i11 = i12;
            i10 = i13;
        }
    }

    public static int commonMultiple(int i10, int i11) {
        return (i10 * i11) / commonDivisor(i10, i11);
    }

    public static int commonMultiple(int[] iArr) {
        int iCommonMultiple = iArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            iCommonMultiple = commonMultiple(iCommonMultiple, iArr[i10]);
        }
        return iCommonMultiple;
    }
}
