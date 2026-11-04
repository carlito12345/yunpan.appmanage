package com.yunpan.appmanage.util;

import ha.qc;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4010a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f4011b;

    public /* synthetic */ e(f fVar, int i10) {
        this.f4010a = i10;
        this.f4011b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4010a) {
            case 0:
                f fVar = this.f4011b;
                ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(fVar.f4014b);
                try {
                    try {
                        String strA = f.a();
                        if (strA == null) {
                            v.f4106a.f4119g.clear();
                        } else {
                            String strSubstring = strA.substring(0, strA.lastIndexOf(46) + 1);
                            CountDownLatch countDownLatch = new CountDownLatch(254);
                            for (int i10 = 1; i10 <= 254 && !fVar.f4015c.get(); i10++) {
                                String str = strSubstring + i10;
                                if (!str.equals(strA)) {
                                    executorServiceNewFixedThreadPool.execute(new a2.e0(fVar, str, countDownLatch, 4));
                                }
                            }
                            while (true) {
                                if (!countDownLatch.await(100L, TimeUnit.MILLISECONDS)) {
                                    if (fVar.f4015c.get()) {
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
                    fVar.f4018f = false;
                    fVar.b();
                }
            default:
                h5.m mVar = this.f4011b.f4016d;
                if (mVar != null) {
                    qc qcVar = (qc) mVar.f6611b;
                    try {
                        if (qcVar.isShowing() && qcVar.f7635i.b() == 0) {
                            a0.u("未找到smb服务器");
                            return;
                        }
                        return;
                    } catch (Exception unused2) {
                        return;
                    }
                }
                return;
        }
    }
}
