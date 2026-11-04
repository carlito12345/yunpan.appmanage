package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.view.Surface;

/* loaded from: classes.dex */
public final class o extends Surface {

    /* renamed from: d, reason: collision with root package name */
    public static int f1946d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f1947e;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1948a;

    /* renamed from: b, reason: collision with root package name */
    public final n f1949b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1950c;

    public o(n nVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f1949b = nVar;
        this.f1948a = z;
    }

    public static int a(Context context) {
        try {
            int i10 = Build.VERSION.SDK_INT;
            if ((i10 >= 24 && (i10 >= 26 || !("samsung".equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) && (i10 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance"))) ? u1.a.l("EGL_EXT_protected_content") : false) {
                return u1.a.l("EGL_KHR_surfaceless_context") ? 1 : 2;
            }
            return 0;
        } catch (u1.h e7) {
            u1.a.f("Failed to determine secure mode due to GL error: " + e7.getMessage());
            return 0;
        }
    }

    public static synchronized boolean b(Context context) {
        try {
            if (!f1947e) {
                f1946d = a(context);
                f1947e = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f1946d != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f1949b) {
            try {
                if (!this.f1950c) {
                    n nVar = this.f1949b;
                    nVar.f1942b.getClass();
                    nVar.f1942b.sendEmptyMessage(2);
                    this.f1950c = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
