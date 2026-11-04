package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class t0 extends s0 {

    /* renamed from: e, reason: collision with root package name */
    public static t0 f1812e;

    /* renamed from: d, reason: collision with root package name */
    public final Application f1813d;

    public t0(Application application) {
        this.f1813d = application;
    }

    public final r0 a(Class cls, Application application) {
        if (!a.class.isAssignableFrom(cls)) {
            return super.b(cls);
        }
        try {
            r0 r0Var = (r0) cls.getConstructor(Application.class).newInstance(application);
            ue.d.d(r0Var, "{\n                try {\n…          }\n            }");
            return r0Var;
        } catch (IllegalAccessException e7) {
            throw new RuntimeException("Cannot create an instance of " + cls, e7);
        } catch (InstantiationException e10) {
            throw new RuntimeException("Cannot create an instance of " + cls, e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException("Cannot create an instance of " + cls, e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("Cannot create an instance of " + cls, e12);
        }
    }

    @Override // androidx.lifecycle.s0, androidx.lifecycle.u0
    public final r0 b(Class cls) {
        Application application = this.f1813d;
        if (application != null) {
            return a(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.lifecycle.s0, androidx.lifecycle.u0
    public final r0 e(Class cls, p1.c cVar) {
        if (this.f1813d != null) {
            return b(cls);
        }
        Application application = (Application) cVar.f12565a.get(s0.f1809a);
        if (application != null) {
            return a(cls, application);
        }
        if (a.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return super.b(cls);
    }
}
