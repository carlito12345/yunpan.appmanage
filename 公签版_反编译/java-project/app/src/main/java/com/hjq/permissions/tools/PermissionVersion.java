package com.hjq.permissions.tools;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;

@SuppressLint({"AnnotateVersionCheck"})
/* loaded from: classes.dex */
public final class PermissionVersion {
    public static final int ANDROID_10 = 29;
    public static final int ANDROID_11 = 30;
    public static final int ANDROID_12 = 31;
    public static final int ANDROID_12_L = 32;
    public static final int ANDROID_13 = 33;
    public static final int ANDROID_14 = 34;
    public static final int ANDROID_15 = 35;
    public static final int ANDROID_16 = 36;
    public static final int ANDROID_17 = 37;
    public static final int ANDROID_2_0 = 5;
    public static final int ANDROID_2_0_1 = 6;
    public static final int ANDROID_2_1 = 7;
    public static final int ANDROID_2_2 = 8;
    public static final int ANDROID_2_3 = 9;
    public static final int ANDROID_2_3_3 = 10;
    public static final int ANDROID_3_0 = 11;
    public static final int ANDROID_3_1 = 12;
    public static final int ANDROID_3_2 = 13;
    public static final int ANDROID_4_0 = 14;
    public static final int ANDROID_4_1 = 16;
    public static final int ANDROID_4_2 = 17;
    public static final int ANDROID_4_3 = 18;
    public static final int ANDROID_4_4 = 19;
    public static final int ANDROID_5 = 21;
    public static final int ANDROID_5_1 = 22;
    public static final int ANDROID_6 = 23;
    public static final int ANDROID_7 = 24;
    public static final int ANDROID_7_1 = 25;
    public static final int ANDROID_8 = 26;
    public static final int ANDROID_8_1 = 27;
    public static final int ANDROID_9 = 28;

    public static int getSdkVersion() {
        return Build.VERSION.SDK_INT;
    }

    public static int getTargetSdkVersion(Context context) {
        return context.getApplicationInfo().targetSdkVersion;
    }

    public static boolean isAndroid10() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean isAndroid11() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isAndroid12() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static boolean isAndroid13() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public static boolean isAndroid14() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public static boolean isAndroid15() {
        return Build.VERSION.SDK_INT >= 35;
    }

    public static boolean isAndroid16() {
        return Build.VERSION.SDK_INT >= 36;
    }

    public static boolean isAndroid17() {
        return Build.VERSION.SDK_INT >= 37;
    }

    public static boolean isAndroid4_3() {
        return Build.VERSION.SDK_INT >= 18;
    }

    public static boolean isAndroid4_4() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static boolean isAndroid5() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isAndroid5_1() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean isAndroid6() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isAndroid7() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isAndroid7_1() {
        return Build.VERSION.SDK_INT >= 25;
    }

    public static boolean isAndroid8() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isAndroid8_1() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public static boolean isAndroid9() {
        return Build.VERSION.SDK_INT >= 28;
    }
}
