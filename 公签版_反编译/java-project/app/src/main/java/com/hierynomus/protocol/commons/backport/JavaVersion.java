package com.hierynomus.protocol.commons.backport;

/* loaded from: classes.dex */
public class JavaVersion {
    public static boolean isJava7OrEarlier() {
        return ((double) (Float.parseFloat(System.getProperty("java.specification.version")) - 1.7f)) < 0.01d;
    }
}
