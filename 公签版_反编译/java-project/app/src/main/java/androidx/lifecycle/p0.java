package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class p0 implements u0 {

    /* renamed from: a, reason: collision with root package name */
    public final Application f1798a;

    /* renamed from: b, reason: collision with root package name */
    public final t0 f1799b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f1800c;

    /* renamed from: d, reason: collision with root package name */
    public final o f1801d;

    /* renamed from: e, reason: collision with root package name */
    public final b4.e f1802e;

    public p0(Application application, Fragment fragment, Bundle bundle) {
        t0 t0Var;
        this.f1802e = fragment.getSavedStateRegistry();
        this.f1801d = fragment.getLifecycle();
        this.f1800c = bundle;
        this.f1798a = application;
        if (application != null) {
            if (t0.f1812e == null) {
                t0.f1812e = new t0(application);
            }
            t0Var = t0.f1812e;
            ue.d.b(t0Var);
        } else {
            t0Var = new t0(null);
        }
        this.f1799b = t0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final r0 a(Class cls, String str) throws NoSuchMethodException, IOException, SecurityException {
        Object obj;
        Application application;
        o oVar = this.f1801d;
        if (oVar == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || this.f1798a == null) ? q0.a(cls, q0.f1805b) : q0.a(cls, q0.f1804a);
        if (constructorA == null) {
            if (this.f1798a != null) {
                return this.f1799b.b(cls);
            }
            if (s0.f1811c == null) {
                s0.f1811c = new s0();
            }
            s0 s0Var = s0.f1811c;
            ue.d.b(s0Var);
            return s0Var.b(cls);
        }
        b4.e eVar = this.f1802e;
        ue.d.b(eVar);
        Bundle bundle = this.f1800c;
        Bundle bundleA = eVar.a(str);
        Class[] clsArr = j0.f1774f;
        j0 j0VarB = l0.b(bundleA, bundle);
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, j0VarB);
        savedStateHandleController.c(oVar, eVar);
        n nVar = ((v) oVar).f1818c;
        if (nVar == n.INITIALIZED || nVar.compareTo(n.STARTED) >= 0) {
            eVar.d();
        } else {
            oVar.a(new LegacySavedStateHandleController$tryToAddRecreator$1(oVar, eVar));
        }
        r0 r0VarB = (!zIsAssignableFrom || (application = this.f1798a) == null) ? q0.b(cls, constructorA, j0VarB) : q0.b(cls, constructorA, application, j0VarB);
        synchronized (r0VarB.f1806a) {
            try {
                obj = r0VarB.f1806a.get("androidx.lifecycle.savedstate.vm.tag");
                if (obj == 0) {
                    r0VarB.f1806a.put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (obj != 0) {
            savedStateHandleController = obj;
        }
        if (r0VarB.f1808c) {
            r0.a(savedStateHandleController);
        }
        return r0VarB;
    }

    @Override // androidx.lifecycle.u0
    public final r0 b(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return a(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.u0
    public final r0 e(Class cls, p1.c cVar) {
        s0 s0Var = s0.f1810b;
        LinkedHashMap linkedHashMap = cVar.f12565a;
        String str = (String) linkedHashMap.get(s0Var);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (linkedHashMap.get(l0.f1782a) == null || linkedHashMap.get(l0.f1783b) == null) {
            if (this.f1801d != null) {
                return a(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) linkedHashMap.get(s0.f1809a);
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? q0.a(cls, q0.f1805b) : q0.a(cls, q0.f1804a);
        return constructorA == null ? this.f1799b.e(cls, cVar) : (!zIsAssignableFrom || application == null) ? q0.b(cls, constructorA, l0.c(cVar)) : q0.b(cls, constructorA, application, l0.c(cVar));
    }
}
