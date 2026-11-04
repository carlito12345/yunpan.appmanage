package com.yunpan.appmanage.util;

import android.os.Handler;
import android.os.Looper;
import com.hierynomus.smbj.SMBClient;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: d, reason: collision with root package name */
    public final h5.m f4016d;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f4015c = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    public final Handler f4017e = new Handler(Looper.getMainLooper());

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f4018f = false;

    /* renamed from: a, reason: collision with root package name */
    public final int f4013a = SMBClient.DEFAULT_PORT;

    /* renamed from: b, reason: collision with root package name */
    public final int f4014b = Math.max(1, 20);

    public f(h5.m mVar) {
        this.f4016d = mVar;
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

    public final void b() {
        this.f4017e.post(new e(this, 1));
    }
}
