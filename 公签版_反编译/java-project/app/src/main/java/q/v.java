package q;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class v {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, a0 a0Var) {
        Objects.requireNonNull(a0Var);
        androidx.activity.q qVar = new androidx.activity.q(1, a0Var);
        a2.e.i(obj).registerOnBackInvokedCallback(1000000, qVar);
        return qVar;
    }

    public static void c(Object obj, Object obj2) {
        a2.e.i(obj).unregisterOnBackInvokedCallback(a2.e.f(obj2));
    }
}
