package ec;

import oc.l;

/* loaded from: classes.dex */
public final class f implements gc.b, Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final y7.b f4907a;

    /* renamed from: b, reason: collision with root package name */
    public final i f4908b;

    /* renamed from: c, reason: collision with root package name */
    public Thread f4909c;

    public f(y7.b bVar, i iVar) {
        this.f4907a = bVar;
        this.f4908b = iVar;
    }

    @Override // gc.b
    public final void c() {
        if (this.f4909c == Thread.currentThread()) {
            i iVar = this.f4908b;
            if (iVar instanceof l) {
                l lVar = (l) iVar;
                if (lVar.f11737b) {
                    return;
                }
                lVar.f11737b = true;
                lVar.f11736a.shutdown();
                return;
            }
        }
        this.f4908b.c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4909c = Thread.currentThread();
        try {
            this.f4907a.run();
        } finally {
            c();
            this.f4909c = null;
        }
    }
}
