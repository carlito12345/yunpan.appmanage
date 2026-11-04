package com.yunpan.appmanage.carsdk;

import android.os.Build;

/* loaded from: classes.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3862a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f3863b;

    public /* synthetic */ p(r rVar, int i10) {
        this.f3862a = i10;
        this.f3863b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3862a) {
            case 0:
                r rVar = this.f3863b;
                try {
                    r.b(rVar);
                    r.a(rVar);
                    break;
                } catch (Throwable th2) {
                    rVar.s("start", th2);
                    return;
                }
            default:
                try {
                    r.p(this.f3863b);
                    r rVar2 = this.f3863b;
                    if (rVar2.f3873h != null) {
                        r.r(rVar2.f3873h, "clearListener", new Object[0]);
                    }
                } catch (Throwable unused) {
                }
                try {
                    if (this.f3863b.f3871f != null) {
                        r.r(this.f3863b.f3871f, "disconnect", new Object[0]);
                    }
                } catch (Throwable unused2) {
                }
                this.f3863b.f3887x.clear();
                this.f3863b.f3888y.clear();
                this.f3863b.z.clear();
                this.f3863b.A.clear();
                this.f3863b.f3872g = null;
                this.f3863b.f3873h = null;
                this.f3863b.f3871f = null;
                this.f3863b.f3874i = null;
                this.f3863b.f3875j = null;
                this.f3863b.f3876k = null;
                this.f3863b.l = null;
                this.f3863b.f3877m = null;
                this.f3863b.f3878n = null;
                this.f3863b.f3879o = null;
                this.f3863b.f3880p = null;
                this.f3863b.f3881q = null;
                this.f3863b.r = null;
                this.f3863b.f3882s = null;
                this.f3863b.f3883t = null;
                this.f3863b.f3884u = null;
                this.f3863b.f3885v = null;
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f3863b.f3868c.quitSafely();
                    break;
                }
                break;
        }
    }
}
