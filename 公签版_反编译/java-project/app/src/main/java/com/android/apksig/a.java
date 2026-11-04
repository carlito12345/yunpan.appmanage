package com.android.apksig;

import com.android.apksig.util.RunnablesExecutor;
import java.util.Set;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static byte[] a(ApkSignerEngine apkSignerEngine) {
        return new byte[0];
    }

    public static Set b(ApkSignerEngine apkSignerEngine, byte[] bArr, Set set) {
        throw new UnsupportedOperationException("initWith method is not implemented");
    }

    public static boolean c(ApkSignerEngine apkSignerEngine) {
        return false;
    }

    public static void d(ApkSignerEngine apkSignerEngine, RunnablesExecutor runnablesExecutor) {
        throw new UnsupportedOperationException("setExecutor method is not implemented");
    }
}
