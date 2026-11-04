package ec;

/* loaded from: classes.dex */
public final class g implements gc.b, Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final mc.i f4910a;

    /* renamed from: b, reason: collision with root package name */
    public final i f4911b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f4912c;

    public g(mc.i iVar, i iVar2) {
        this.f4910a = iVar;
        this.f4911b = iVar2;
    }

    @Override // gc.b
    public final void c() {
        this.f4912c = true;
        this.f4911b.c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4912c) {
            return;
        }
        try {
            this.f4910a.run();
        } catch (Throwable th2) {
            p000if.a.K0(th2);
            this.f4911b.c();
            throw pc.c.a(th2);
        }
    }
}
