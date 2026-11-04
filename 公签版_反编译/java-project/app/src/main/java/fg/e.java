package fg;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class e extends c0 {
    public static final a Companion = new a();
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static final Condition condition;
    private static e head;
    private static final ReentrantLock lock;
    private boolean inQueue;
    private e next;
    private long timeoutAt;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        ue.d.d(conditionNewCondition, "lock.newCondition()");
        condition = conditionNewCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public static final long access$remainingNanos(e eVar, long j10) {
        return eVar.timeoutAt - j10;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            a aVar = Companion;
            aVar.getClass();
            aVar.getClass();
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (this.inQueue) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.inQueue = true;
                if (head == null) {
                    head = new e();
                    new b().start();
                }
                long jNanoTime = System.nanoTime();
                if (jTimeoutNanos != 0 && zHasDeadline) {
                    this.timeoutAt = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime) + jNanoTime;
                } else if (jTimeoutNanos != 0) {
                    this.timeoutAt = jTimeoutNanos + jNanoTime;
                } else {
                    if (!zHasDeadline) {
                        throw new AssertionError();
                    }
                    this.timeoutAt = deadlineNanoTime();
                }
                long jAccess$remainingNanos = access$remainingNanos(this, jNanoTime);
                e eVar = head;
                ue.d.b(eVar);
                while (eVar.next != null) {
                    e eVar2 = eVar.next;
                    ue.d.b(eVar2);
                    if (jAccess$remainingNanos < access$remainingNanos(eVar2, jNanoTime)) {
                        break;
                    }
                    eVar = eVar.next;
                    ue.d.b(eVar);
                }
                this.next = eVar.next;
                eVar.next = this;
                if (eVar == head) {
                    Companion.getClass();
                    condition.signal();
                }
                reentrantLock.unlock();
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
    }

    public final boolean exit() {
        a aVar = Companion;
        aVar.getClass();
        aVar.getClass();
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            if (!this.inQueue) {
                return false;
            }
            this.inQueue = false;
            for (e eVar = head; eVar != null; eVar = eVar.next) {
                if (eVar.next == this) {
                    eVar.next = this.next;
                    this.next = null;
                    return false;
                }
            }
            reentrantLock.unlock();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final x sink(x xVar) {
        ue.d.e(xVar, "sink");
        return new c(this, 0, xVar);
    }

    public final z source(z zVar) {
        ue.d.e(zVar, "source");
        return new d(this, zVar);
    }

    public final <T> T withTimeout(te.a aVar) throws IOException {
        ue.d.e(aVar, "block");
        enter();
        try {
            T t10 = (T) aVar.b();
            if (exit()) {
                throw access$newTimeoutException(null);
            }
            return t10;
        } catch (IOException e7) {
            if (exit()) {
                throw access$newTimeoutException(e7);
            }
            throw e7;
        } finally {
            exit();
        }
    }

    public void timedOut() {
    }
}
