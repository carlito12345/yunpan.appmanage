package ec;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4913a;

    /* renamed from: b, reason: collision with root package name */
    public final gc.c f4914b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4915c;

    /* renamed from: d, reason: collision with root package name */
    public long f4916d;

    /* renamed from: e, reason: collision with root package name */
    public long f4917e;

    /* renamed from: f, reason: collision with root package name */
    public long f4918f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ i f4919g;

    public h(i iVar, long j10, Runnable runnable, long j11, gc.c cVar, long j12) {
        this.f4919g = iVar;
        this.f4913a = runnable;
        this.f4914b = cVar;
        this.f4915c = j12;
        this.f4917e = j11;
        this.f4918f = j10;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.lang.Runnable] */
    @Override // java.lang.Runnable
    public final void run() {
        long j10;
        this.f4913a.run();
        gc.c cVar = this.f4914b;
        if (((gc.b) cVar.get()) == ic.a.f8651a) {
            return;
        }
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        i iVar = this.f4919g;
        iVar.getClass();
        long jB = i.b(timeUnit);
        long j11 = j.f4921b;
        long j12 = jB + j11;
        long j13 = this.f4917e;
        long j14 = this.f4915c;
        if (j12 < j13 || jB >= j13 + j14 + j11) {
            j10 = jB + j14;
            long j15 = this.f4916d + 1;
            this.f4916d = j15;
            this.f4918f = j10 - (j14 * j15);
        } else {
            long j16 = this.f4918f;
            long j17 = this.f4916d + 1;
            this.f4916d = j17;
            j10 = (j17 * j14) + j16;
        }
        this.f4917e = jB;
        cVar.b(iVar.d(this, j10 - jB, timeUnit));
    }
}
