package com.hierynomus.smbj.common;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Check {
    public static void ensure(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static void ensureEquals(byte[] bArr, byte[] bArr2, String str) {
        if (!Arrays.equals(bArr, bArr2)) {
            throw new IllegalArgumentException(str);
        }
    }
}
