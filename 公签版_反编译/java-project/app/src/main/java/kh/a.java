package kh;

import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final kf.d f10322a = new kf.d(1, false);

    /* renamed from: b, reason: collision with root package name */
    public final e f10323b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f10324c;

    public a(e eVar) {
        this.f10323b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                try {
                    i iVarM = this.f10322a.M();
                    if (iVarM == null) {
                        synchronized (this) {
                            iVarM = this.f10322a.L();
                            if (iVarM == null) {
                                this.f10324c = false;
                                this.f10324c = false;
                                return;
                            }
                        }
                    }
                    this.f10323b.d(iVarM);
                } catch (InterruptedException e7) {
                    this.f10323b.f10346o.g(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e7);
                    this.f10324c = false;
                    return;
                }
            } catch (Throwable th2) {
                this.f10324c = false;
                throw th2;
            }
        }
    }
}
