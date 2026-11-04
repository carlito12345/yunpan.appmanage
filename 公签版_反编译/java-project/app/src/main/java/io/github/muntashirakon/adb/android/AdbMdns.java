package io.github.muntashirakon.adb.android;

import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import j$.util.Objects;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.SocketException;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public class AdbMdns {
    public static final String SERVICE_TYPE_ADB = "adb";
    public static final String SERVICE_TYPE_TELNET = "telnet";
    public static final String SERVICE_TYPE_TLS_CONNECT = "adb-tls-connect";
    public static final String SERVICE_TYPE_TLS_PAIRING = "adb-tls-pairing";
    private final OnAdbDaemonDiscoveredListener mAdbDaemonDiscoveredListener;
    private final Context mContext;
    private final NsdManager.DiscoveryListener mDiscoveryListener;
    private final NsdManager mNsdManager;
    private boolean mRegistered;
    private boolean mRunning;
    private String mServiceName;
    private final String mServiceType;

    public static class DiscoveryListener implements NsdManager.DiscoveryListener {
        private final AdbMdns mAdbMdns;

        public /* synthetic */ DiscoveryListener(AdbMdns adbMdns, int i10) {
            this(adbMdns);
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onDiscoveryStarted(String str) {
            this.mAdbMdns.onDiscoveryStart();
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onDiscoveryStopped(String str) {
            this.mAdbMdns.onDiscoverStop();
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
            this.mAdbMdns.onServiceFound(nsdServiceInfo);
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
            this.mAdbMdns.onServiceLost(nsdServiceInfo);
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onStartDiscoveryFailed(String str, int i10) {
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onStopDiscoveryFailed(String str, int i10) {
        }

        private DiscoveryListener(AdbMdns adbMdns) {
            this.mAdbMdns = adbMdns;
        }
    }

    public interface OnAdbDaemonDiscoveredListener {
        void onPortChanged(InetAddress inetAddress, int i10, String str);
    }

    public static class ResolveListener implements NsdManager.ResolveListener {
        private final AdbMdns mAdbMdns;

        public /* synthetic */ ResolveListener(AdbMdns adbMdns, int i10) {
            this(adbMdns);
        }

        @Override // android.net.nsd.NsdManager.ResolveListener
        public void onResolveFailed(NsdServiceInfo nsdServiceInfo, int i10) {
        }

        @Override // android.net.nsd.NsdManager.ResolveListener
        public void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
            this.mAdbMdns.onServiceResolved(nsdServiceInfo);
        }

        private ResolveListener(AdbMdns adbMdns) {
            this.mAdbMdns = adbMdns;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ServiceType {
    }

    public AdbMdns(Context context, String str, OnAdbDaemonDiscoveredListener onAdbDaemonDiscoveredListener) {
        Objects.requireNonNull(context);
        this.mContext = context;
        Objects.requireNonNull(str);
        this.mServiceType = "_" + str + "._tcp";
        Objects.requireNonNull(onAdbDaemonDiscoveredListener);
        this.mAdbDaemonDiscoveredListener = onAdbDaemonDiscoveredListener;
        this.mNsdManager = (NsdManager) context.getSystemService("servicediscovery");
        this.mDiscoveryListener = new DiscoveryListener(this, 0);
    }

    private boolean isPortAvailable(int i10) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        try {
            ServerSocket serverSocket = new ServerSocket();
            try {
                serverSocket.bind(new InetSocketAddress(AndroidUtils.getHostIpAddress(this.mContext), i10), 1);
                serverSocket.close();
                return false;
            } catch (Throwable th2) {
                try {
                    serverSocket.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused2) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiscoverStop() {
        this.mRegistered = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDiscoveryStart() {
        this.mRegistered = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
        this.mNsdManager.resolveService(nsdServiceInfo, new ResolveListener(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
        String str = this.mServiceName;
        if (str == null || !str.equals(nsdServiceInfo.getServiceName())) {
            return;
        }
        this.mAdbDaemonDiscoveredListener.onPortChanged(nsdServiceInfo.getHost(), -1, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceResolved(NsdServiceInfo nsdServiceInfo) {
        if (this.mRunning) {
            try {
                Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                while (it.hasNext()) {
                    Iterator it2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses()).iterator();
                    while (it2.hasNext()) {
                        if (Objects.equals(((InetAddress) it2.next()).getHostAddress(), nsdServiceInfo.getHost().getHostAddress()) && isPortAvailable(nsdServiceInfo.getPort())) {
                            this.mServiceName = nsdServiceInfo.getServiceName();
                            this.mAdbDaemonDiscoveredListener.onPortChanged(nsdServiceInfo.getHost(), nsdServiceInfo.getPort(), this.mServiceName);
                        }
                    }
                }
            } catch (SocketException e7) {
                e7.printStackTrace();
            }
        }
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    public void start() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        if (this.mRegistered) {
            return;
        }
        this.mNsdManager.discoverServices(this.mServiceType, 1, this.mDiscoveryListener);
    }

    public void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            if (this.mRegistered) {
                this.mNsdManager.stopServiceDiscovery(this.mDiscoveryListener);
            }
        }
    }
}
