package com.yunpan.appmanage.util;

import com.yunpan.appmanage.R;
import ha.r7;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4021a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f4022b;

    public /* synthetic */ g(h hVar, int i10) {
        this.f4021a = i10;
        this.f4022b = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4021a) {
            case 0:
                h hVar = this.f4022b;
                ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(hVar.f4026b);
                try {
                    try {
                        String strA = h.a();
                        if (strA == null) {
                            v.f4106a.f4119g.clear();
                        } else {
                            w wVar = v.f4106a;
                            if (!wVar.f4119g.isEmpty()) {
                                boolean z = false;
                                for (int size = wVar.f4119g.size() - 1; size >= 0; size--) {
                                    w wVar2 = v.f4106a;
                                    if (h.b((d) wVar2.f4119g.get(size))) {
                                        wVar2.f4119g.remove(size);
                                        z = true;
                                    }
                                }
                                if (z) {
                                    hVar.f4029e.post(new g(hVar, 1));
                                }
                            }
                            String strSubstring = strA.substring(0, strA.lastIndexOf(46) + 1);
                            CountDownLatch countDownLatch = new CountDownLatch(254);
                            for (int i10 = 1; i10 <= 254 && !hVar.f4027c.get(); i10++) {
                                String str = strSubstring + i10;
                                if (!str.equals(strA)) {
                                    executorServiceNewFixedThreadPool.execute(new a2.e0(hVar, str, countDownLatch, 5));
                                }
                            }
                            while (true) {
                                if (!countDownLatch.await(100L, TimeUnit.MILLISECONDS)) {
                                    if (hVar.f4027c.get()) {
                                        executorServiceNewFixedThreadPool.shutdownNow();
                                    }
                                }
                            }
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                    return;
                } finally {
                    executorServiceNewFixedThreadPool.shutdownNow();
                    hVar.f4030f = false;
                    hVar.c();
                }
            case 1:
                h5.m mVar = this.f4022b.f4028d;
                if (mVar != null) {
                    ((r7) mVar.f6611b).f7688i.r(v.f4106a.f4119g);
                    return;
                }
                return;
            default:
                h5.m mVar2 = this.f4022b.f4028d;
                if (mVar2 != null) {
                    r7 r7Var = (r7) mVar2.f6611b;
                    if (r7Var.isShowing()) {
                        r7Var.f7689j.setText("搜寻");
                    }
                    if (v.f4106a.f4119g.isEmpty()) {
                        a0.u("未找到其它设备，需打开" + r7Var.f6725b.getString(R.string.app_name));
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
