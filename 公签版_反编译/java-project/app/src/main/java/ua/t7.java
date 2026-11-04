package ua;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.system.ErrnoException;

/* loaded from: classes.dex */
public abstract /* synthetic */ class t7 {
    public static /* bridge */ /* synthetic */ ErrnoException i(Throwable th2) {
        return (ErrnoException) th2;
    }

    public static /* bridge */ /* synthetic */ boolean u(Drawable drawable) {
        return drawable instanceof RippleDrawable;
    }

    public static /* bridge */ /* synthetic */ boolean y(Throwable th2) {
        return th2 instanceof ErrnoException;
    }
}
