package fc;

import android.os.Handler;
import android.os.Message;
import ec.i;
import ec.j;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class e extends j {

    /* renamed from: c, reason: collision with root package name */
    public final Handler f5771c;

    public e(Handler handler) {
        this.f5771c = handler;
    }

    @Override // ec.j
    public final i a() {
        return new c(this.f5771c);
    }

    @Override // ec.j
    public final gc.b b(y7.b bVar, TimeUnit timeUnit) {
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        Handler handler = this.f5771c;
        d dVar = new d(handler, bVar);
        handler.sendMessageDelayed(Message.obtain(handler, dVar), timeUnit.toMillis(0L));
        return dVar;
    }
}
