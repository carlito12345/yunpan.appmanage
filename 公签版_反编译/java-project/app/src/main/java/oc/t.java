package oc;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f11755a;

    /* renamed from: b, reason: collision with root package name */
    public final v f11756b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11757c;

    public t(Runnable runnable, v vVar, long j10) {
        this.f11755a = runnable;
        this.f11756b = vVar;
        this.f11757c = j10;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        if (this.f11756b.f11765d) {
            return;
        }
        v vVar = this.f11756b;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        vVar.getClass();
        long jB = ec.i.b(timeUnit);
        long j10 = this.f11757c;
        if (j10 > jB) {
            try {
                Thread.sleep(j10 - jB);
            } catch (InterruptedException e7) {
                Thread.currentThread().interrupt();
                qf.c.P(e7);
                return;
            }
        }
        if (this.f11756b.f11765d) {
            return;
        }
        this.f11755a.run();
    }
}
