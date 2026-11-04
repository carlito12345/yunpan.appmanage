package androidx.activity;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public static final r f828a = new r();

    public final OnBackInvokedCallback a(te.a aVar) {
        ue.d.e(aVar, "onBackInvoked");
        return new q(0, aVar);
    }

    public final void b(Object obj, int i10, Object obj2) {
        ue.d.e(obj, "dispatcher");
        ue.d.e(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i10, (OnBackInvokedCallback) obj2);
    }

    public final void c(Object obj, Object obj2) {
        ue.d.e(obj, "dispatcher");
        ue.d.e(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
