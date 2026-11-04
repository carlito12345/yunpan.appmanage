package com.gj.server;

import android.os.IBinder;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3435a;

    public /* synthetic */ b(int i10) {
        this.f3435a = i10;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        switch (this.f3435a) {
            case 0:
                GjService.lambda$sendBinder_$1();
                break;
            default:
                hi.b.f8215h = false;
                hi.b.g(null, null);
                break;
        }
    }
}
