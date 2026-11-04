package h5;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final class c0 implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6536a;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f6536a) {
            case 0:
                if (message.what != 1) {
                    return false;
                }
                ((z) message.obj).recycle();
                return true;
            default:
                int i10 = message.what;
                if (i10 == 0) {
                    g.b.t(message.obj);
                    throw null;
                }
                if (i10 != 1) {
                    return false;
                }
                g.b.t(message.obj);
                throw null;
        }
    }
}
