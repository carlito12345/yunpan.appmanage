package t0;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14631a;

    /* renamed from: b, reason: collision with root package name */
    public f f14632b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14633c;

    public final void a(f fVar) {
        synchronized (this) {
            while (this.f14633c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f14632b == fVar) {
                return;
            }
            this.f14632b = fVar;
            if (this.f14631a) {
                fVar.c();
            }
        }
    }
}
