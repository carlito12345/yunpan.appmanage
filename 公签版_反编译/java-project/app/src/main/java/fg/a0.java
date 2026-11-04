package fg;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class a0 extends c0 {
    @Override // fg.c0
    public final c0 timeout(long j10, TimeUnit timeUnit) {
        ue.d.e(timeUnit, "unit");
        return this;
    }

    @Override // fg.c0
    public final void throwIfReached() {
    }

    @Override // fg.c0
    public final c0 deadlineNanoTime(long j10) {
        return this;
    }
}
