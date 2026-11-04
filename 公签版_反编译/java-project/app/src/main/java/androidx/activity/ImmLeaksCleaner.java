package androidx.activity;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements androidx.lifecycle.r {

    /* renamed from: b, reason: collision with root package name */
    public static int f775b;

    /* renamed from: c, reason: collision with root package name */
    public static Field f776c;

    /* renamed from: d, reason: collision with root package name */
    public static Field f777d;

    /* renamed from: e, reason: collision with root package name */
    public static Field f778e;

    /* renamed from: a, reason: collision with root package name */
    public final m f779a;

    public ImmLeaksCleaner(m mVar) {
        this.f779a = mVar;
    }

    @Override // androidx.lifecycle.r
    public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (mVar != androidx.lifecycle.m.ON_DESTROY) {
            return;
        }
        if (f775b == 0) {
            try {
                f775b = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f777d = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f778e = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f776c = declaredField3;
                declaredField3.setAccessible(true);
                f775b = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f775b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f779a.getSystemService("input_method");
            try {
                Object obj = f776c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f777d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f778e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused2) {
                            }
                        } catch (ClassCastException unused3) {
                        } catch (IllegalAccessException unused4) {
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
