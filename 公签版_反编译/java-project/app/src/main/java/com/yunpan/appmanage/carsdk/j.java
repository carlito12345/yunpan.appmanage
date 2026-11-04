package com.yunpan.appmanage.carsdk;

import android.os.IBinder;
import ha.db;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3841a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3842b;

    public /* synthetic */ j(int i10, Object obj) {
        this.f3841a = i10;
        this.f3842b = obj;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        switch (this.f3841a) {
            case 0:
                ((k) this.f3842b).f3844a.f3855a = null;
                break;
            default:
                hi.e eVar = (hi.e) this.f3842b;
                if (!eVar.f8226g) {
                    eVar.f8226g = true;
                    hi.e.f8223h.post(new db(6, eVar));
                    break;
                }
                break;
        }
    }
}
