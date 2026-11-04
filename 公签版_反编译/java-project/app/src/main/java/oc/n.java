package oc;

/* loaded from: classes.dex */
public final class n extends a implements Runnable {
    public n(mc.i iVar) {
        super(iVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11695b = Thread.currentThread();
        try {
            this.f11694a.run();
            this.f11695b = null;
        } catch (Throwable th2) {
            this.f11695b = null;
            lazySet(a.f11692c);
            qf.c.P(th2);
        }
    }
}
