package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f3844a;

    public k(m mVar) {
        this.f3844a = mVar;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        if (componentName != null) {
            componentName.toString();
        }
        this.f3844a.f3855a = null;
    }

    @Override // android.content.ServiceConnection
    public final void onNullBinding(ComponentName componentName) {
        if (componentName != null) {
            componentName.toString();
        }
        this.f3844a.f3855a = null;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        int i10 = 0;
        m mVar = this.f3844a;
        if (componentName != null) {
            componentName.toString();
        }
        try {
            mVar.f3855a = new a1.i(11, iBinder);
            iBinder.linkToDeath(new j(i10, this), 0);
            a1.i iVar = mVar.f3855a;
            if (iVar == null) {
                return;
            }
            int[] iArr = {1};
            try {
                int i11 = m.f3854e;
                iVar.B(mVar.f3858d, iArr);
            } catch (RemoteException unused) {
            }
            a1.i iVar2 = mVar.f3855a;
            int i12 = m.f3854e;
            int[] iArrA = iVar2.A();
            if (iArrA == null || iArrA.length <= 0) {
                return;
            }
            wa.s.c().i(iArrA[0] == 1 ? 504 : 505);
        } catch (RemoteException unused2) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (componentName != null) {
            componentName.toString();
        }
        this.f3844a.f3855a = null;
    }
}
