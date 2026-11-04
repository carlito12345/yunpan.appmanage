package oc;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public final class o extends a implements Callable {
    public o(y7.b bVar) {
        super(bVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        FutureTask futureTask = a.f11692c;
        this.f11695b = Thread.currentThread();
        try {
            this.f11694a.run();
            return null;
        } finally {
            lazySet(futureTask);
            this.f11695b = null;
        }
    }
}
