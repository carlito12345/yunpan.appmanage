package oc;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f11746a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f11747b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference f11748c = new AtomicReference();

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f11749d = new ConcurrentHashMap();

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    static {
        String property;
        int i10;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
        String property2;
        try {
            property2 = System.getProperty("rx2.purge-enabled");
        } catch (Throwable unused) {
        }
        boolean zEquals = property2 == null ? true : "true".equals(property2);
        f11746a = zEquals;
        if (zEquals) {
            try {
                property = System.getProperty("rx2.purge-period-seconds");
            } catch (Throwable unused2) {
            }
            i10 = property == null ? 1 : Integer.parseInt(property);
        }
        f11747b = i10;
        if (!f11746a) {
            return;
        }
        while (true) {
            AtomicReference atomicReference = f11748c;
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new m("RxSchedulerPurge"));
            while (!atomicReference.compareAndSet(scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                if (atomicReference.get() != scheduledExecutorService) {
                    break;
                }
            }
            androidx.emoji2.text.o oVar = new androidx.emoji2.text.o(2);
            long j10 = f11747b;
            scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(oVar, j10, j10, TimeUnit.SECONDS);
            return;
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }
}
