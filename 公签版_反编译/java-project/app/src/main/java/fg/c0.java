package fg;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import net.engio.mbassy.listener.MessageHandler;

/* loaded from: classes.dex */
public class c0 {
    public static final b0 Companion = new b0();
    public static final c0 NONE = new a0();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public final void awaitSignal(Condition condition) throws InterruptedException, InterruptedIOException {
        ue.d.e(condition, MessageHandler.Properties.Condition);
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                condition.await();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                condition.await(jTimeoutNanos, TimeUnit.NANOSECONDS);
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public c0 clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public c0 clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final c0 deadline(long j10, TimeUnit timeUnit) {
        ue.d.e(timeUnit, "unit");
        if (j10 <= 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "duration <= 0: ").toString());
        }
        return deadlineNanoTime(timeUnit.toNanos(j10) + System.nanoTime());
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final <T> T intersectWith(c0 c0Var, te.a aVar) {
        ue.d.e(c0Var, "other");
        ue.d.e(aVar, "block");
        long jTimeoutNanos = timeoutNanos();
        b0 b0Var = Companion;
        long jTimeoutNanos2 = c0Var.timeoutNanos();
        long jTimeoutNanos3 = timeoutNanos();
        b0Var.getClass();
        if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
            jTimeoutNanos2 = jTimeoutNanos3;
        }
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(jTimeoutNanos2, timeUnit);
        if (!hasDeadline()) {
            if (c0Var.hasDeadline()) {
                deadlineNanoTime(c0Var.deadlineNanoTime());
            }
            try {
                T t10 = (T) aVar.b();
                timeout(jTimeoutNanos, timeUnit);
                if (c0Var.hasDeadline()) {
                    clearDeadline();
                }
                return t10;
            } catch (Throwable th2) {
                timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (c0Var.hasDeadline()) {
                    clearDeadline();
                }
                throw th2;
            }
        }
        long jDeadlineNanoTime = deadlineNanoTime();
        if (c0Var.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), c0Var.deadlineNanoTime()));
        }
        try {
            T t11 = (T) aVar.b();
            timeout(jTimeoutNanos, timeUnit);
            if (c0Var.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
            return t11;
        } catch (Throwable th3) {
            timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (c0Var.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
            throw th3;
        }
    }

    public void throwIfReached() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public c0 timeout(long j10, TimeUnit timeUnit) {
        ue.d.e(timeUnit, "unit");
        if (j10 < 0) {
            throw new IllegalArgumentException(ta.q.j(j10, "timeout < 0: ").toString());
        }
        this.timeoutNanos = timeUnit.toNanos(j10);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedException, InterruptedIOException {
        ue.d.e(obj, "monitor");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j10 = jTimeoutNanos / 1000000;
                Long.signum(j10);
                obj.wait(j10, (int) (jTimeoutNanos - (1000000 * j10)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public c0 deadlineNanoTime(long j10) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j10;
        return this;
    }
}
