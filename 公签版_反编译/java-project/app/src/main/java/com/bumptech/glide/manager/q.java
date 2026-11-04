package com.bumptech.glide.manager;

import android.content.IntentFilter;
import android.util.Log;

/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3400a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f3401b;

    public /* synthetic */ q(r rVar, int i10) {
        this.f3400a = i10;
        this.f3401b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3400a) {
            case 0:
                r rVar = this.f3401b;
                rVar.f3406d = rVar.c();
                try {
                    r rVar2 = this.f3401b;
                    rVar2.f3403a.registerReceiver(rVar2.f3408f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f3401b.f3407e = true;
                    break;
                } catch (SecurityException unused) {
                    this.f3401b.f3407e = false;
                    return;
                }
            case 1:
                if (this.f3401b.f3407e) {
                    this.f3401b.f3407e = false;
                    r rVar3 = this.f3401b;
                    rVar3.f3403a.unregisterReceiver(rVar3.f3408f);
                    break;
                }
                break;
            default:
                boolean z = this.f3401b.f3406d;
                r rVar4 = this.f3401b;
                rVar4.f3406d = rVar4.c();
                if (z != this.f3401b.f3406d) {
                    if (Log.isLoggable("ConnectivityMonitor", 3)) {
                        boolean z4 = this.f3401b.f3406d;
                    }
                    r rVar5 = this.f3401b;
                    a6.q.f().post(new o(rVar5, rVar5.f3406d, 1));
                    break;
                }
                break;
        }
    }
}
