package com.yunpan.appmanage.util;

import android.os.Handler;
import android.os.Looper;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: d, reason: collision with root package name */
    public final h5.m f4028d;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f4027c = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    public final Handler f4029e = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f4030f = false;

    /* renamed from: a, reason: collision with root package name */
    public final int f4025a = 9898;

    /* renamed from: b, reason: collision with root package name */
    public final int f4026b = Math.max(1, 20);

    public h(h5.m mVar) {
        this.f4028d = mVar;
    }

    public static String a() throws SocketException {
        String str = null;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                    String lowerCase = networkInterfaceNextElement.getName() == null ? "" : networkInterfaceNextElement.getName().toLowerCase();
                    boolean z = lowerCase.startsWith("wlan") || lowerCase.startsWith("eth") || lowerCase.startsWith("en");
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if ((inetAddressNextElement instanceof Inet4Address) && !inetAddressNextElement.isLoopbackAddress()) {
                            String hostAddress = inetAddressNextElement.getHostAddress();
                            if (z) {
                                return hostAddress;
                            }
                            if (str == null) {
                                str = hostAddress;
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public static boolean b(d dVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient okHttpClientBuild = builder.callTimeout(1L, timeUnit).connectTimeout(1L, timeUnit).readTimeout(1L, timeUnit).writeTimeout(1L, timeUnit).build();
        StringBuilder sb2 = new StringBuilder("http://");
        sb2.append(dVar.f4004b);
        sb2.append(":");
        try {
            Response responseExecute = okHttpClientBuild.newCall(new Request.Builder().url(android.support.v4.media.session.a.s(sb2, dVar.f4005c, "/isonline")).get().build()).execute();
            try {
                if (responseExecute.isSuccessful() && responseExecute.body() != null) {
                    String strString = responseExecute.body().string();
                    if (strString.length() > 15 && strString.contains("----")) {
                        dVar.f4006d = Long.parseLong(strString.substring(0, 13));
                        dVar.f4003a = strString.substring(17);
                        responseExecute.close();
                        return true;
                    }
                }
                responseExecute.close();
            } catch (Throwable th2) {
                if (responseExecute != null) {
                    try {
                        responseExecute.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
        return false;
    }

    public final void c() {
        this.f4029e.post(new g(this, 2));
    }
}
