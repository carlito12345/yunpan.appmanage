package u1;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final z f15204a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15205b;

    public e() {
        this(z.f15315a);
    }

    public final synchronized void a() {
        while (!this.f15205b) {
            this.f15204a.getClass();
            wait();
        }
    }

    public final synchronized void b() {
        boolean z = false;
        while (!this.f15205b) {
            try {
                this.f15204a.getClass();
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean c(long j10) {
        if (j10 <= 0) {
            return this.f15205b;
        }
        this.f15204a.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j11 = j10 + jElapsedRealtime;
        if (j11 < jElapsedRealtime) {
            b();
        } else {
            boolean z = false;
            while (!this.f15205b && jElapsedRealtime < j11) {
                try {
                    this.f15204a.getClass();
                    wait(j11 - jElapsedRealtime);
                } catch (InterruptedException unused) {
                    z = true;
                }
                this.f15204a.getClass();
                jElapsedRealtime = SystemClock.elapsedRealtime();
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        return this.f15205b;
    }

    public final synchronized void d() {
        this.f15205b = false;
    }

    public final synchronized boolean e() {
        if (this.f15205b) {
            return false;
        }
        this.f15205b = true;
        notifyAll();
        return true;
    }

    public e(z zVar) {
        this.f15204a = zVar;
    }
}
