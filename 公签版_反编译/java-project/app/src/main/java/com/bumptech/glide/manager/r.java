package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class r implements n {

    /* renamed from: g, reason: collision with root package name */
    public static final Executor f3402g = AsyncTask.SERIAL_EXECUTOR;

    /* renamed from: a, reason: collision with root package name */
    public final Context f3403a;

    /* renamed from: b, reason: collision with root package name */
    public final m f3404b;

    /* renamed from: c, reason: collision with root package name */
    public final a6.i f3405c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f3406d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f3407e;

    /* renamed from: f, reason: collision with root package name */
    public final a2.k f3408f = new a2.k(1, this);

    public r(Context context, a6.i iVar, m mVar) {
        this.f3403a = context.getApplicationContext();
        this.f3405c = iVar;
        this.f3404b = mVar;
    }

    @Override // com.bumptech.glide.manager.n
    public final boolean a() {
        f3402g.execute(new q(this, 0));
        return true;
    }

    @Override // com.bumptech.glide.manager.n
    public final void b() {
        f3402g.execute(new q(this, 1));
    }

    public final boolean c() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f3405c.get()).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException unused) {
            return true;
        }
    }
}
