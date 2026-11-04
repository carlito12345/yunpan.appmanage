package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.yunpan.appmanage.service.AccService;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: e, reason: collision with root package name */
    public static final int f3854e;

    /* renamed from: a, reason: collision with root package name */
    public a1.i f3855a;

    /* renamed from: b, reason: collision with root package name */
    public final AccService f3856b;

    /* renamed from: c, reason: collision with root package name */
    public final k f3857c;

    /* renamed from: d, reason: collision with root package name */
    public final l f3858d;

    static {
        int i10 = 0;
        int[] iArr = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 251, 252, 253, 254, 255, 256, 257};
        while (true) {
            if (i10 >= 25) {
                i10 = -1;
                break;
            } else if (iArr[i10] == 254) {
                break;
            } else {
                i10++;
            }
        }
        f3854e = i10;
    }

    public m(AccService accService) {
        new Handler(Looper.getMainLooper());
        new AtomicBoolean(false);
        k kVar = new k(this);
        this.f3857c = kVar;
        this.f3858d = new l();
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.desay.svcarinfo", "com.desay.svcarinfo.CarInfoService"));
            if (accService.bindService(intent, kVar, 1)) {
                this.f3856b = accService;
            }
        } catch (Exception unused) {
        }
    }
}
