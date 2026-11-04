package com.bumptech.glide.manager;

import android.net.ConnectivityManager;
import android.net.Network;

/* loaded from: classes.dex */
public final class p extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.room.i f3399a;

    public p(androidx.room.i iVar) {
        this.f3399a = iVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        a6.q.f().post(new o(this, true, 0));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        a6.q.f().post(new o(this, false, 0));
    }
}
