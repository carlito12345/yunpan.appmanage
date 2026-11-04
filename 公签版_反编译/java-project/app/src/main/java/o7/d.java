package o7;

import android.os.Handler;
import android.os.Message;
import kh.h;
import s5.e;
import s5.g;

/* loaded from: classes.dex */
public final class d implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11658a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11659b;

    public /* synthetic */ d(int i10, Object obj) {
        this.f11658a = i10;
        this.f11659b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f11658a) {
            case 0:
                if (message.what != 0) {
                    return false;
                }
                h hVar = (h) this.f11659b;
                g.b.t(message.obj);
                synchronized (hVar.f10353a) {
                    throw null;
                }
            default:
                int i10 = message.what;
                g gVar = (g) this.f11659b;
                if (i10 == 1) {
                    gVar.b((e) message.obj);
                    return true;
                }
                if (i10 == 2) {
                    gVar.f14439d.o((e) message.obj);
                }
                return false;
        }
    }
}
