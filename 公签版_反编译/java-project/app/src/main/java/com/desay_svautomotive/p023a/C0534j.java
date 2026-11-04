package com.desay_svautomotive.p023a;

import android.util.SparseArray;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class C0534j {
    private a f314c;
    private String f312a = "Lib-MultiTaskTimer";
    private ScheduledThreadPoolExecutor f313b = new ScheduledThreadPoolExecutor(1);
    private SparseArray<b> f315d = new SparseArray<>();
    private SparseArray<ScheduledFuture<?>> f316e = new SparseArray<>();
    private final int f317f = -65535;

    public interface a {
        void mo239a(int i10);
    }

    public class b implements Runnable {
        private int f319b;

        public b(int i10) {
            this.f319b = i10;
        }

        public int m271a() {
            return this.f319b;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            C0534j c0534j;
            if (C0534j.this.f315d.get(this.f319b) == null) {
                c0534j = C0534j.this;
                i10 = this.f319b;
            } else {
                if (C0534j.this.f314c == null) {
                    return;
                }
                i10 = -65535;
                if (-65535 != this.f319b) {
                    C0534j.this.f314c.mo239a(this.f319b);
                    return;
                }
                c0534j = C0534j.this;
            }
            c0534j.m270b(i10);
        }
    }

    public C0534j(a aVar) {
        this.f314c = aVar;
        m268a(-65535, 1);
    }

    public void finalize() throws Throwable {
        super.finalize();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f313b;
        if (scheduledThreadPoolExecutor != null) {
            scheduledThreadPoolExecutor.shutdown();
            this.f313b.purge();
            this.f313b = null;
        }
        this.f314c = null;
    }

    public void m268a(int i10, int i11) {
        m270b(i10);
        b bVar = new b(i10);
        long j10 = i11;
        this.f316e.put(bVar.m271a(), this.f313b.scheduleWithFixedDelay(bVar, j10, j10, TimeUnit.MILLISECONDS));
        this.f315d.put(bVar.m271a(), bVar);
    }

    public boolean m269a(int i10) {
        ScheduledFuture<?> scheduledFuture = this.f316e.get(i10);
        if (scheduledFuture == null) {
            return false;
        }
        if (!scheduledFuture.isCancelled()) {
            return true;
        }
        m270b(i10);
        return false;
    }

    public void m270b(int i10) {
        ScheduledFuture<?> scheduledFuture = this.f316e.get(i10);
        if (scheduledFuture != null) {
            if (scheduledFuture.cancel(true)) {
                this.f316e.remove(i10);
            }
            if (this.f315d.get(i10) != null) {
                this.f313b.remove(this.f315d.get(i10));
                this.f315d.remove(i10);
            }
        }
    }
}
