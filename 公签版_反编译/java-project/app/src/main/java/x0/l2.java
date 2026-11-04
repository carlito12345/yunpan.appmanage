package x0;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public class l2 extends k2 {
    public l2(Window window, s9.a aVar) {
        super(window, aVar);
    }

    @Override // s5.c
    public final void G(boolean z) {
        if (!z) {
            H(8192);
            return;
        }
        Window window = this.f18008b;
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(8192 | decorView.getSystemUiVisibility());
    }
}
