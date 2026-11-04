package io.github.muntashirakon.adb.android;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes.dex */
public class AndroidUtils {
    private static final String GOLDFISH = "goldfish";
    private static final String RANCHU = "ranchu";
    private static final String SDK = "sdk";

    public static String getHostIpAddress(Context context) {
        String hostAddress;
        if (isEmulator(context)) {
            return "10.0.2.2";
        }
        if (Build.VERSION.SDK_INT >= 19) {
            hostAddress = InetAddress.getLoopbackAddress().getHostAddress();
        } else {
            try {
                hostAddress = InetAddress.getLocalHost().getHostAddress();
            } catch (UnknownHostException unused) {
                hostAddress = null;
            }
        }
        return (hostAddress == null || hostAddress.equals("::1")) ? "127.0.0.1" : hostAddress;
    }

    public static boolean isEmulator(Context context) {
        if (Build.PRODUCT.contains(SDK)) {
            return true;
        }
        String str = Build.HARDWARE;
        return str.contains(GOLDFISH) || str.contains(RANCHU) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }
}
