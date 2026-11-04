package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.autolink.adapterinterface.IHardKeyService;

/* loaded from: classes.dex */
public final class d0 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h0 f3791a;

    public d0(h0 h0Var) {
        this.f3791a = h0Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        h0 h0Var = this.f3791a;
        try {
            IHardKeyService iHardKeyServiceAsInterface = IHardKeyService.Stub.asInterface(iBinder);
            h0Var.f3813b = iHardKeyServiceAsInterface;
            iHardKeyServiceAsInterface.enableDispatch(true);
            h0Var.f3813b.registerHardKeyEvent(h0Var.B);
        } catch (RemoteException unused) {
            h0Var.getClass();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        h0 h0Var = this.f3791a;
        h0Var.f3813b = null;
        h0Var.getClass();
    }
}
