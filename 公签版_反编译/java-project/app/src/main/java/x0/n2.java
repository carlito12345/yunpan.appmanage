package x0;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public final class n2 extends s5.c {

    /* renamed from: b, reason: collision with root package name */
    public final WindowInsetsController f18031b;

    /* renamed from: c, reason: collision with root package name */
    public Window f18032c;

    public n2(WindowInsetsController windowInsetsController, s9.a aVar) {
        super(23);
        this.f18031b = windowInsetsController;
    }

    @Override // s5.c
    public final void F(boolean z) {
        Window window = this.f18032c;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.f18031b.setSystemBarsAppearance(16, 16);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.f18031b.setSystemBarsAppearance(0, 16);
    }

    @Override // s5.c
    public final void G(boolean z) {
        Window window = this.f18032c;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            this.f18031b.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.f18031b.setSystemBarsAppearance(0, 8);
    }
}
