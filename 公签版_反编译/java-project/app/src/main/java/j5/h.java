package j5;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import h5.m;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: e, reason: collision with root package name */
    public static final int f9761e;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9762a;

    /* renamed from: b, reason: collision with root package name */
    public final ActivityManager f9763b;

    /* renamed from: c, reason: collision with root package name */
    public final m f9764c;

    /* renamed from: d, reason: collision with root package name */
    public final float f9765d;

    static {
        f9761e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public h(Context context) {
        this.f9765d = f9761e;
        this.f9762a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f9763b = activityManager;
        this.f9764c = new m(24, context.getResources().getDisplayMetrics());
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            if (i10 >= 19 ? activityManager.isLowRamDevice() : true) {
                this.f9765d = 0.0f;
            }
        }
    }
}
