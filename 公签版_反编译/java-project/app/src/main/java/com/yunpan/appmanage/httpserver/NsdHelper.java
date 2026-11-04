package com.yunpan.appmanage.httpserver;

import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class NsdHelper {
    private NsdManager mNsdManager;
    private NsdManager.RegistrationListener mRegistrationListener;

    public NsdHelper(Context context) {
        this.mNsdManager = (NsdManager) context.getSystemService("servicediscovery");
    }

    public void registerService(int i10) {
        NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = k.f4034u0;
        sb2.append(j.f4033a.f4056k0);
        sb2.append(Build.PRODUCT);
        nsdServiceInfo.setServiceName(sb2.toString());
        nsdServiceInfo.setServiceType("_http._tcp");
        nsdServiceInfo.setPort(i10);
        NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.yunpan.appmanage.httpserver.NsdHelper.1
            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i11) {
            }

            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                nsdServiceInfo2.getServiceName();
            }

            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                nsdServiceInfo2.getServiceName();
            }

            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i11) {
            }
        };
        this.mRegistrationListener = registrationListener;
        this.mNsdManager.registerService(nsdServiceInfo, 1, registrationListener);
    }

    public void unregisterService() {
        this.mNsdManager.unregisterService(this.mRegistrationListener);
    }
}
