package com.yunpan.appmanage.magica;

/* loaded from: classes.dex */
public abstract class MagicaNative {
    static {
        System.loadLibrary("magica");
    }

    public static native boolean adbRoot();

    public static native boolean root();
}
