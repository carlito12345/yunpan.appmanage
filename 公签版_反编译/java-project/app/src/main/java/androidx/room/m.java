package androidx.room;

import android.os.IInterface;
import android.os.RemoteCallbackList;

/* loaded from: classes.dex */
public final class m extends RemoteCallbackList {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f2421a;

    public m(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f2421a = multiInstanceInvalidationService;
    }

    @Override // android.os.RemoteCallbackList
    public final void onCallbackDied(IInterface iInterface, Object obj) {
        ue.d.e((g) iInterface, "callback");
        ue.d.e(obj, "cookie");
        this.f2421a.f2391b.remove((Integer) obj);
    }
}
