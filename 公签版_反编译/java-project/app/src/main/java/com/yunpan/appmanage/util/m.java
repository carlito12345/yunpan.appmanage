package com.yunpan.appmanage.util;

import android.os.Handler;
import android.os.Looper;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.FileCopyBean;
import java.io.PrintStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f4081a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f4082b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f4083c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f4084d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f4085e;

    public m(int i10) {
        switch (i10) {
            case 1:
                this.f4081a = Executors.newCachedThreadPool();
                this.f4082b = Executors.newFixedThreadPool(5);
                this.f4083c = new AtomicInteger(0);
                this.f4084d = new Handler(Looper.getMainLooper());
                this.f4085e = new AtomicBoolean(false);
                break;
            default:
                this.f4081a = Executors.newCachedThreadPool();
                this.f4082b = Executors.newFixedThreadPool(5);
                this.f4083c = new AtomicInteger(0);
                this.f4084d = new Handler(Looper.getMainLooper());
                this.f4085e = new AtomicBoolean(false);
                break;
        }
    }

    public void a(FileCopyBean fileCopyBean, ea.b bVar) {
        PrintStream printStream = System.out;
        a0.d(fileCopyBean.toDir);
        printStream.getClass();
        if (a0.d(fileCopyBean.toDir) && a0.b(fileCopyBean.fromPaths.get(0).f18365b) && ((!fileCopyBean.toDir.startsWith("/data/") || fileCopyBean.toDir.contains(AppStart.f3772h.getPackageName())) && !fileCopyBean.toDir.startsWith("/system/"))) {
            this.f4081a.execute(new a2.e0(this, fileCopyBean, bVar, 6));
        } else {
            AtomicBoolean atomicBoolean = this.f4085e;
            atomicBoolean.set(true);
            bVar.f(atomicBoolean.get());
        }
    }
}
