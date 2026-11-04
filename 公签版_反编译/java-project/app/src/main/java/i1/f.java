package i1;

import a2.g1;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
import ha.j2;

/* loaded from: classes.dex */
public final class f implements KeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final KeyListener f8415a;

    /* renamed from: b, reason: collision with root package name */
    public final j2 f8416b;

    public f(KeyListener keyListener) {
        j2 j2Var = new j2(8);
        this.f8415a = keyListener;
        this.f8416b = j2Var;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i10) {
        this.f8415a.clearMetaKeyState(view, editable, i10);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f8415a.getInputType();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    @Override // android.text.method.KeyListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
        boolean z;
        this.f8416b.getClass();
        if (Build.VERSION.SDK_INT < 19) {
            z = false;
        } else {
            if (i10 != 67 ? i10 != 112 ? false : g1.O(editable, keyEvent, true) : g1.O(editable, keyEvent, false)) {
                MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
                z = true;
            }
        }
        return z || this.f8415a.onKeyDown(view, editable, i10, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f8415a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f8415a.onKeyUp(view, editable, i10, keyEvent);
    }
}
