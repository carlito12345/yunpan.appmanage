package x0;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public final class m2 extends l2 {
    public m2(Window window, s9.a aVar) {
        super(window, aVar);
    }

    @Override // s5.c
    public final void F(boolean z) {
        if (!z) {
            H(16);
            return;
        }
        Window window = this.f18008b;
        window.clearFlags(134217728);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(16 | decorView.getSystemUiVisibility());
    }
}
