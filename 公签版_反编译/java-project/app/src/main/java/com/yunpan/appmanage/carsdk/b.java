package com.yunpan.appmanage.carsdk;

import com.desay_svautomotive.libsvcarinfo.CarInfoProxy;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f3787a;

    public b(e eVar) {
        this.f3787a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f3787a;
        if (eVar.f3799g && eVar.f3797e <= 0 && CarInfoProxy.getInstance().getItemValue(0, 143) != 1) {
            CarInfoProxy.getInstance().sendItemValue(0, 111, 2);
            eVar.f3795c.postDelayed(eVar.f3800h, 200L);
        }
    }
}
