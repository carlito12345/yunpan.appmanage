package x0;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public class k2 extends s5.c {

    /* renamed from: b, reason: collision with root package name */
    public final Window f18008b;

    public k2(Window window, s9.a aVar) {
        super(23);
        this.f18008b = window;
    }

    public final void H(int i10) {
        View decorView = this.f18008b.getDecorView();
        decorView.setSystemUiVisibility((i10 ^ (-1)) & decorView.getSystemUiVisibility());
    }
}
