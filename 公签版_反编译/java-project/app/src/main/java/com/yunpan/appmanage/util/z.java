package com.yunpan.appmanage.util;

import com.yunpan.appmanage.db.MyDb;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4156a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f4157b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f4158c = Executors.newFixedThreadPool(6);

    /* renamed from: d, reason: collision with root package name */
    public final AtomicInteger f4159d = new AtomicInteger(0);

    /* renamed from: e, reason: collision with root package name */
    public final ExecutorService f4160e = Executors.newFixedThreadPool(1);

    /* renamed from: f, reason: collision with root package name */
    public final AtomicInteger f4161f = new AtomicInteger(0);

    /* renamed from: g, reason: collision with root package name */
    public final File f4162g;

    public z(File file) {
        this.f4162g = file;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean z = false;
        File file = this.f4162g;
        if (!a0.f(file)) {
            MyDb.get().getFileInfoDao().deleteDir(file.getPath());
            return;
        }
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        if (kVar.f4074w) {
            Iterator it = kVar.f4073v.iterator();
            while (it.hasNext()) {
                if (file.getPath().startsWith((String) it.next())) {
                    return;
                }
            }
        }
        PrintStream printStream = System.out;
        if (file != null) {
            file.toString();
        }
        printStream.getClass();
        if (file.getPath().startsWith(fa.g0.f5682a.d())) {
            k kVar2 = j.f4033a;
            kVar2.f4042d0 = true;
            kVar2.f4044e0 = false;
        } else {
            k kVar3 = j.f4033a;
            kVar3.f4042d0 = false;
            kVar3.f4044e0 = true;
        }
        System.currentTimeMillis();
        AtomicInteger atomicInteger = this.f4159d;
        atomicInteger.incrementAndGet();
        y7.b bVar = new y7.b(5, this, file, z);
        ExecutorService executorService = this.f4158c;
        executorService.execute(bVar);
        while (atomicInteger.get() != 0) {
            try {
                Thread.sleep(200L);
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList = this.f4157b;
        boolean zIsEmpty = arrayList.isEmpty();
        ExecutorService executorService2 = this.f4160e;
        AtomicInteger atomicInteger2 = this.f4161f;
        if (!zIsEmpty) {
            atomicInteger2.incrementAndGet();
            executorService2.execute(new y7.b(4, this, arrayList, z));
        }
        while (atomicInteger2.get() != 0) {
            try {
                Thread.sleep(200L);
            } catch (Exception unused2) {
            }
            PrintStream printStream2 = System.out;
            atomicInteger2.get();
            printStream2.getClass();
        }
        arrayList.clear();
        PrintStream printStream3 = System.out;
        System.currentTimeMillis();
        printStream3.getClass();
        MyDb.get().getFileInfoDao().getCount();
        MyDb.get().getFileInfoDao().getDirCount();
        MyDb.get().getFileInfoDao().getFileCount();
        executorService.shutdown();
        executorService2.shutdown();
        System.gc();
        if (file.getPath().startsWith(fa.g0.f5682a.d())) {
            j.f4033a.f4042d0 = false;
        } else {
            j.f4033a.f4044e0 = false;
        }
    }
}
