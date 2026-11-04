package u1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Thread f15243a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f15244b;

    /* renamed from: c, reason: collision with root package name */
    public final k f15245c;

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArraySet f15246d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f15247e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayDeque f15248f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f15249g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f15250h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f15251i;

    public m(Thread thread) {
        this(new CopyOnWriteArraySet(), null, thread, null, null, true);
    }

    public final void a(Object obj) {
        obj.getClass();
        synchronized (this.f15249g) {
            try {
                if (this.f15250h) {
                    return;
                }
                this.f15246d.add(new l(obj));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b() {
        if (this.f15251i) {
            a9.o.t(Thread.currentThread() == this.f15243a);
        }
        ArrayDeque arrayDeque = this.f15248f;
        if (arrayDeque.isEmpty()) {
            return;
        }
        if (this.f15245c != null) {
            b0 b0Var = this.f15244b;
            b0Var.getClass();
            Handler handler = b0Var.f15188a;
            if (!handler.hasMessages(1)) {
                a0 a0VarA = b0Var.a(1);
                Message message = a0VarA.f15183a;
                message.getClass();
                handler.sendMessageAtFrontOfQueue(message);
                a0VarA.a();
            }
        }
        ArrayDeque arrayDeque2 = this.f15247e;
        boolean zIsEmpty = arrayDeque2.isEmpty();
        arrayDeque2.addAll(arrayDeque);
        arrayDeque.clear();
        if (zIsEmpty) {
            while (!arrayDeque2.isEmpty()) {
                ((Runnable) arrayDeque2.peekFirst()).run();
                arrayDeque2.removeFirst();
            }
        }
    }

    public final void c(int i10, j jVar) {
        if (this.f15251i) {
            a9.o.t(Thread.currentThread() == this.f15243a);
        }
        this.f15248f.add(new fa.v(new CopyOnWriteArraySet(this.f15246d), i10, jVar, 2));
    }

    public final void d() {
        if (this.f15251i) {
            a9.o.t(Thread.currentThread() == this.f15243a);
        }
        synchronized (this.f15249g) {
            this.f15250h = true;
        }
        Iterator it = this.f15246d.iterator();
        while (it.hasNext()) {
            l lVar = (l) it.next();
            k kVar = this.f15245c;
            lVar.f15242d = true;
            if (kVar != null && lVar.f15241c) {
                lVar.f15241c = false;
                kVar.h(lVar.f15239a, lVar.f15240b.b());
            }
        }
        this.f15246d.clear();
    }

    public final void e(int i10, j jVar) {
        c(i10, jVar);
        b();
    }

    public m(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, Thread thread, z zVar, k kVar, boolean z) {
        this.f15243a = thread;
        this.f15246d = copyOnWriteArraySet;
        this.f15245c = kVar;
        this.f15249g = new Object();
        this.f15247e = new ArrayDeque();
        this.f15248f = new ArrayDeque();
        if (looper == null || zVar == null || kVar == null) {
            this.f15244b = null;
        } else {
            this.f15244b = zVar.a(looper, new i(0, this));
        }
        this.f15251i = z;
    }
}
