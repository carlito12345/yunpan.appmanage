package fg;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class o extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public c0 f5858a;

    public o(c0 c0Var) {
        ue.d.e(c0Var, "delegate");
        this.f5858a = c0Var;
    }

    @Override // fg.c0
    public final c0 clearDeadline() {
        return this.f5858a.clearDeadline();
    }

    @Override // fg.c0
    public final c0 clearTimeout() {
        return this.f5858a.clearTimeout();
    }

    @Override // fg.c0
    public final long deadlineNanoTime() {
        return this.f5858a.deadlineNanoTime();
    }

    @Override // fg.c0
    public final boolean hasDeadline() {
        return this.f5858a.hasDeadline();
    }

    @Override // fg.c0
    public final void throwIfReached() throws InterruptedIOException {
        this.f5858a.throwIfReached();
    }

    @Override // fg.c0
    public final c0 timeout(long j10, TimeUnit timeUnit) {
        ue.d.e(timeUnit, "unit");
        return this.f5858a.timeout(j10, timeUnit);
    }

    @Override // fg.c0
    public final long timeoutNanos() {
        return this.f5858a.timeoutNanos();
    }

    @Override // fg.c0
    public final c0 deadlineNanoTime(long j10) {
        return this.f5858a.deadlineNanoTime(j10);
    }
}
