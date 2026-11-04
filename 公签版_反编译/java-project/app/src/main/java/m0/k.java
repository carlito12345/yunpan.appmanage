package m0;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;

/* loaded from: classes.dex */
public abstract class k extends Activity implements androidx.lifecycle.t, x0.o {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.v f10765a = new androidx.lifecycle.v(this);

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !android.support.v4.media.session.b.d(decorView, keyEvent)) {
            return android.support.v4.media.session.b.e(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !android.support.v4.media.session.b.d(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // x0.o
    public final boolean j(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i10 = androidx.lifecycle.i0.f1772b;
        androidx.lifecycle.l0.g(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.v vVar = this.f10765a;
        vVar.getClass();
        vVar.d("markState");
        vVar.g();
        super.onSaveInstanceState(bundle);
    }
}
