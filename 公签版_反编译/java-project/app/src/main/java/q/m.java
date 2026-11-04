package q;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static final g0 f12855a = new g0(new a6.g(2));

    /* renamed from: b, reason: collision with root package name */
    public static final int f12856b = -100;

    /* renamed from: c, reason: collision with root package name */
    public static t0.j f12857c = null;

    /* renamed from: d, reason: collision with root package name */
    public static t0.j f12858d = null;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f12859e = null;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f12860f = false;

    /* renamed from: g, reason: collision with root package name */
    public static final a0.f f12861g = new a0.f(0);

    /* renamed from: h, reason: collision with root package name */
    public static final Object f12862h = new Object();

    /* renamed from: i, reason: collision with root package name */
    public static final Object f12863i = new Object();

    public static boolean a(Context context) {
        if (f12859e == null) {
            try {
                int i10 = f0.f12833a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) f0.class), Build.VERSION.SDK_INT >= 24 ? e0.a() | 128 : 640).metaData;
                if (bundle != null) {
                    f12859e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f12859e = Boolean.FALSE;
            }
        }
        return f12859e.booleanValue();
    }

    public static void d(a0 a0Var) {
        synchronized (f12862h) {
            try {
                a0.f fVar = f12861g;
                fVar.getClass();
                a0.a aVar = new a0.a(fVar);
                while (aVar.hasNext()) {
                    m mVar = (m) ((WeakReference) aVar.next()).get();
                    if (mVar == a0Var || mVar == null) {
                        aVar.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public abstract void b();

    public abstract void c();

    public abstract boolean g(int i10);

    public abstract void h(int i10);

    public abstract void i(View view);

    public abstract void j(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void k(CharSequence charSequence);
}
