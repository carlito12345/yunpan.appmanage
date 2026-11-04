package x0;

import android.view.KeyEvent;
import android.view.View;
import android.view.autofill.AutofillId;
import com.yunpan.appmanage.R;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class u0 {
    public static void a(View view, z0 z0Var) {
        a0.t tVar = (a0.t) view.getTag(R.id.tag_unhandled_key_listeners);
        if (tVar == null) {
            tVar = new a0.t(0);
            view.setTag(R.id.tag_unhandled_key_listeners, tVar);
        }
        Objects.requireNonNull(z0Var);
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: x0.t0
            @Override // android.view.View.OnUnhandledKeyEventListener
            public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                throw null;
            }
        };
        tVar.put(z0Var, onUnhandledKeyEventListener);
        view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, z0 z0Var) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        a0.t tVar = (a0.t) view.getTag(R.id.tag_unhandled_key_listeners);
        if (tVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) tVar.get(z0Var)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i10) {
        return (T) view.requireViewById(i10);
    }

    public static void g(View view, boolean z) {
        view.setAccessibilityHeading(z);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, AutofillId autofillId) {
        view.setAutofillId(autofillId);
    }

    public static void j(View view, boolean z) {
        view.setScreenReaderFocusable(z);
    }
}
