package com.yunpan.appmanage.httpserver;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.util.d;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class HttpMdns {
    private boolean mRegistered = false;
    private boolean mRunning = false;
    private final NsdManager mNsdManager = (NsdManager) AppStart.f3772h.getSystemService("servicediscovery");
    private final NsdManager.DiscoveryListener mDiscoveryListener = new DiscoveryListener(this, 0);

    public static class DiscoveryListener implements NsdManager.DiscoveryListener {
        private final HttpMdns mHttpMdns;

        public /* synthetic */ DiscoveryListener(HttpMdns httpMdns, int i10) {
            this(httpMdns);
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onDiscoveryStarted(String str) {
            this.mHttpMdns.mRegistered = true;
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onDiscoveryStopped(String str) {
            this.mHttpMdns.mRegistered = false;
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onServiceFound(NsdServiceInfo nsdServiceInfo) {
            if (this.mHttpMdns.mRunning) {
                this.mHttpMdns.mNsdManager.resolveService(nsdServiceInfo, new NsdManager.ResolveListener() { // from class: com.yunpan.appmanage.httpserver.HttpMdns.DiscoveryListener.1
                    @Override // android.net.nsd.NsdManager.ResolveListener
                    public void onResolveFailed(NsdServiceInfo nsdServiceInfo2, int i10) {
                    }

                    @Override // android.net.nsd.NsdManager.ResolveListener
                    public void onServiceResolved(NsdServiceInfo nsdServiceInfo2) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
                        w wVar;
                        int i10 = 0;
                        if (!DiscoveryListener.this.mHttpMdns.mRunning || nsdServiceInfo2 == null) {
                            return;
                        }
                        try {
                            String serviceName = nsdServiceInfo2.getServiceName();
                            if (serviceName.length() < 14) {
                                return;
                            }
                            String strSubstring = serviceName.substring(13);
                            String hostAddress = nsdServiceInfo2.getHost().getHostAddress();
                            int port = nsdServiceInfo2.getPort();
                            d dVar = new d(Long.valueOf(serviceName.substring(0, 13)).longValue(), strSubstring, hostAddress, port);
                            if (port >= 9898 && port <= 9999) {
                                DecimalFormat decimalFormat = k.f4034u0;
                                k kVar = j.f4033a;
                                if (hostAddress.equals(kVar.f4052i0) || kVar.f4056k0 == dVar.f4006d || dVar.f4004b.equals("127.0.0.1")) {
                                    return;
                                }
                                try {
                                    Socket socket = new Socket();
                                    try {
                                        socket.connect(new InetSocketAddress(dVar.f4004b, dVar.f4005c), 500);
                                        socket.close();
                                        synchronized (kVar.f4043e) {
                                            while (true) {
                                                try {
                                                    try {
                                                        wVar = v.f4106a;
                                                        if (i10 >= wVar.f4119g.size()) {
                                                            wVar.f4119g.add(dVar);
                                                            if (!wVar.f4116e0) {
                                                                Toaster.show((CharSequence) ("发现设备：" + dVar.f4003a + "\nIP：" + dVar.f4004b));
                                                            }
                                                        } else if (((d) wVar.f4119g.get(i10)).f4004b.equals(dVar.f4004b) || ((d) wVar.f4119g.get(i10)).f4006d == dVar.f4006d) {
                                                            break;
                                                        } else {
                                                            i10++;
                                                        }
                                                    } catch (Throwable th2) {
                                                        throw th2;
                                                    }
                                                } catch (Exception unused) {
                                                }
                                            }
                                            ((d) wVar.f4119g.get(i10)).f4003a = dVar.f4003a;
                                            ((d) wVar.f4119g.get(i10)).f4004b = dVar.f4004b;
                                            ((d) wVar.f4119g.get(i10)).f4005c = dVar.f4005c;
                                            ((d) wVar.f4119g.get(i10)).f4006d = dVar.f4006d;
                                        }
                                    } catch (Throwable th3) {
                                        try {
                                            socket.close();
                                        } catch (Throwable th4) {
                                            try {
                                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        throw th3;
                                    }
                                } catch (Exception unused3) {
                                }
                            }
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                });
            }
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onServiceLost(NsdServiceInfo nsdServiceInfo) {
            if (nsdServiceInfo == null || nsdServiceInfo.getServiceName().length() < 14) {
                return;
            }
            String serviceName = nsdServiceInfo.getServiceName();
            DecimalFormat decimalFormat = k.f4034u0;
            synchronized (j.f4033a.f4043e) {
                try {
                    String strSubstring = serviceName.substring(13);
                    long jLongValue = Long.valueOf(serviceName.substring(0, 13)).longValue();
                    for (int size = v.f4106a.f4119g.size() - 1; size >= 0; size--) {
                        w wVar = v.f4106a;
                        if (((d) wVar.f4119g.get(size)).f4006d == jLongValue) {
                            wVar.f4119g.remove(size);
                            if (!wVar.f4116e0) {
                                Toaster.show((CharSequence) ("设备离开：" + strSubstring));
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onStartDiscoveryFailed(String str, int i10) {
        }

        @Override // android.net.nsd.NsdManager.DiscoveryListener
        public void onStopDiscoveryFailed(String str, int i10) {
        }

        private DiscoveryListener(HttpMdns httpMdns) {
            this.mHttpMdns = httpMdns;
        }
    }

    public void start() {
        if (this.mRunning) {
            return;
        }
        this.mRunning = true;
        if (this.mRegistered) {
            return;
        }
        this.mNsdManager.discoverServices("_http._tcp", 1, this.mDiscoveryListener);
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
