package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.l0;
import androidx.lifecycle.m;
import androidx.lifecycle.r;
import androidx.lifecycle.r0;
import androidx.lifecycle.t;
import androidx.lifecycle.v0;
import androidx.lifecycle.w0;
import b4.c;
import b4.e;
import b4.g;
import da.b;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import ue.d;

/* loaded from: classes.dex */
public final class Recreator implements r {

    /* renamed from: a, reason: collision with root package name */
    public final g f2441a;

    public Recreator(g gVar) {
        this.f2441a = gVar;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (mVar != m.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        tVar.getLifecycle().b(this);
        g gVar = this.f2441a;
        Bundle bundleA = gVar.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(c.class);
                d.d(clsAsSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object objNewInstance = declaredConstructor.newInstance(null);
                        d.d(objNewInstance, "{\n                constr…wInstance()\n            }");
                        if (!(gVar instanceof w0)) {
                            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
                        }
                        v0 viewModelStore = ((w0) gVar).getViewModelStore();
                        e savedStateRegistry = gVar.getSavedStateRegistry();
                        viewModelStore.getClass();
                        LinkedHashMap linkedHashMap = viewModelStore.f1824a;
                        Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            d.e(str2, "key");
                            r0 r0Var = (r0) linkedHashMap.get(str2);
                            d.b(r0Var);
                            l0.a(r0Var, savedStateRegistry, gVar.getLifecycle());
                        }
                        if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                            savedStateRegistry.d();
                        }
                    } catch (Exception e7) {
                        throw new RuntimeException(b.c("Failed to instantiate ", str), e7);
                    }
                } catch (NoSuchMethodException e10) {
                    throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
                }
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException(g.b.A("Class ", str, " wasn't found"), e11);
            }
        }
    }
}
