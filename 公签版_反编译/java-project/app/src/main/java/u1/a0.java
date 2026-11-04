package u1;

import android.os.Message;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public Message f15183a;

    public final void a() {
        this.f15183a = null;
        ArrayList arrayList = b0.f15187b;
        synchronized (arrayList) {
            if (arrayList.size() < 50) {
                arrayList.add(this);
            }
        }
    }

    public final void b() {
        Message message = this.f15183a;
        message.getClass();
        message.sendToTarget();
        a();
    }
}
