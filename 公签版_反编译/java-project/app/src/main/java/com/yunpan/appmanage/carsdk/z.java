package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.autolink.adapterinterface.IPower;

/* loaded from: classes.dex */
public final class z implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h0 f3918a;

    public z(h0 h0Var) {
        this.f3918a = h0Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        h0 h0Var = this.f3918a;
        try {
            IPower iPowerAsInterface = IPower.Stub.asInterface(iBinder);
            h0Var.f3815d = iPowerAsInterface;
            iPowerAsInterface.registerPowerCallback(h0Var.f3829t);
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f3918a.f3815d = null;
    }
}
