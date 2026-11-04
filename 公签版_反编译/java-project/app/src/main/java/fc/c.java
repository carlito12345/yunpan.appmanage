package fc;

import android.os.Handler;
import android.os.Message;
import ec.i;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class c extends i {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f5767a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f5768b;

    public c(Handler handler) {
        this.f5767a = handler;
    }

    @Override // gc.b
    public final void c() {
        this.f5768b = true;
        this.f5767a.removeCallbacksAndMessages(this);
    }

    @Override // ec.i
    public final gc.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        boolean z = this.f5768b;
        ic.b bVar = ic.b.INSTANCE;
        if (z) {
            return bVar;
        }
        Handler handler = this.f5767a;
        d dVar = new d(handler, runnable);
        Message messageObtain = Message.obtain(handler, dVar);
        messageObtain.obj = this;
        this.f5767a.sendMessageDelayed(messageObtain, timeUnit.toMillis(j10));
        if (!this.f5768b) {
            return dVar;
        }
        this.f5767a.removeCallbacks(dVar);
        return bVar;
    }
}
