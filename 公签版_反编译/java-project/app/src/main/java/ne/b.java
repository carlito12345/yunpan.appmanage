package ne;

import android.os.Build;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Method f11351a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f11352b;

    /* renamed from: c, reason: collision with root package name */
    public final Method f11353c;

    public b(Method method, Method method2, Method method3) {
        this.f11351a = method;
        this.f11352b = method2;
        this.f11353c = method3;
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }

    public b() throws NoSuchMethodException, SecurityException {
        this.f11351a = null;
        this.f11352b = null;
        this.f11353c = null;
        a();
        try {
            Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
            this.f11351a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        try {
            Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
            this.f11352b = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
            this.f11353c = method;
            method.setAccessible(true);
        } catch (NoSuchMethodException unused3) {
        }
    }
}
