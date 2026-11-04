package j5;

import a6.q;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f9754a;

    public c(int i10) {
        switch (i10) {
            case 1:
                this.f9754a = new ArrayDeque();
                break;
            case 2:
                char[] cArr = q.f446a;
                this.f9754a = new ArrayDeque(0);
                break;
            default:
                this.f9754a = new ArrayDeque();
                break;
        }
    }

    public b a() {
        b bVar;
        synchronized (this.f9754a) {
            bVar = (b) this.f9754a.poll();
        }
        return bVar == null ? new b() : bVar;
    }

    public void b(b bVar) {
        synchronized (this.f9754a) {
            try {
                if (this.f9754a.size() < 10) {
                    this.f9754a.offer(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized void c(e5.c cVar) {
        cVar.f4794b = null;
        cVar.f4795c = null;
        this.f9754a.offer(cVar);
    }
}
