package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.autolink.adapterinterface.clusterinteraction.IClusterInteraction;

/* loaded from: classes.dex */
public final class y implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h0 f3917a;

    public y(h0 h0Var) {
        this.f3917a = h0Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f3917a.f3817f = IClusterInteraction.Stub.asInterface(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f3917a.getClass();
    }
}
