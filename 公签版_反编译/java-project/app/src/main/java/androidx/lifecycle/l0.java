package androidx.lifecycle;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public abstract class l0 {

    /* renamed from: a, reason: collision with root package name */
    public static final s0 f1782a = new s0();

    /* renamed from: b, reason: collision with root package name */
    public static final s0 f1783b = new s0();

    /* renamed from: c, reason: collision with root package name */
    public static final s0 f1784c = new s0();

    public static final void a(r0 r0Var, b4.e eVar, o oVar) throws NoSuchMethodException, SecurityException {
        Object obj;
        ue.d.e(eVar, "registry");
        ue.d.e(oVar, RequestParameters.SUBRESOURCE_LIFECYCLE);
        HashMap map = r0Var.f1806a;
        if (map == null) {
            obj = null;
        } else {
            synchronized (map) {
                obj = r0Var.f1806a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || savedStateHandleController.f1754c) {
            return;
        }
        savedStateHandleController.c(oVar, eVar);
        n nVar = ((v) oVar).f1818c;
        if (nVar == n.INITIALIZED || nVar.compareTo(n.STARTED) >= 0) {
            eVar.d();
        } else {
            oVar.a(new LegacySavedStateHandleController$tryToAddRecreator$1(oVar, eVar));
        }
    }

    public static j0 b(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            if (bundle2 == null) {
                return new j0();
            }
            HashMap map = new HashMap();
            for (String str : bundle2.keySet()) {
                ue.d.d(str, "key");
                map.put(str, bundle2.get(str));
            }
            return new j0(map);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = parcelableArrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = parcelableArrayList.get(i10);
            ue.d.c(obj, "null cannot be cast to non-null type kotlin.String");
            linkedHashMap.put((String) obj, parcelableArrayList2.get(i10));
        }
        return new j0(linkedHashMap);
    }

    public static final j0 c(p1.c cVar) {
        s0 s0Var = f1782a;
        LinkedHashMap linkedHashMap = cVar.f12565a;
        b4.g gVar = (b4.g) linkedHashMap.get(s0Var);
        if (gVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        w0 w0Var = (w0) linkedHashMap.get(f1783b);
        if (w0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) linkedHashMap.get(f1784c);
        String str = (String) linkedHashMap.get(s0.f1810b);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        b4.d dVarB = gVar.getSavedStateRegistry().b();
        n0 n0Var = dVarB instanceof n0 ? (n0) dVarB : null;
        if (n0Var == null) {
            throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
        }
        LinkedHashMap linkedHashMap2 = f(w0Var).f1797d;
        j0 j0Var = (j0) linkedHashMap2.get(str);
        if (j0Var != null) {
            return j0Var;
        }
        Class[] clsArr = j0.f1774f;
        n0Var.b();
        Bundle bundle2 = n0Var.f1795c;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle(str) : null;
        Bundle bundle4 = n0Var.f1795c;
        if (bundle4 != null) {
            bundle4.remove(str);
        }
        Bundle bundle5 = n0Var.f1795c;
        if (bundle5 != null && bundle5.isEmpty()) {
            n0Var.f1795c = null;
        }
        j0 j0VarB = b(bundle3, bundle);
        linkedHashMap2.put(str, j0VarB);
        return j0VarB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(Activity activity, m mVar) {
        ue.d.e(activity, "activity");
        ue.d.e(mVar, "event");
        if (activity instanceof t) {
            o lifecycle = ((t) activity).getLifecycle();
            if (lifecycle instanceof v) {
                ((v) lifecycle).e(mVar);
            }
        }
    }

    public static final void e(b4.g gVar) {
        n nVar = ((v) gVar.getLifecycle()).f1818c;
        if (nVar != n.INITIALIZED && nVar != n.CREATED) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (gVar.getSavedStateRegistry().b() == null) {
            n0 n0Var = new n0(gVar.getSavedStateRegistry(), (w0) gVar);
            gVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", n0Var);
            gVar.getLifecycle().a(new SavedStateHandleAttacher(n0Var));
        }
    }

    public static final o0 f(w0 w0Var) {
        ArrayList arrayList = new ArrayList();
        ue.g.f16110a.getClass();
        Class clsA = new ue.b(o0.class).a();
        ue.d.c(clsA, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        arrayList.add(new p1.d(clsA));
        p1.d[] dVarArr = (p1.d[]) arrayList.toArray(new p1.d[0]);
        return (o0) new v3.f(w0Var.getViewModelStore(), new l5.y((p1.d[]) Arrays.copyOf(dVarArr, dVarArr.length)), w0Var instanceof i ? ((i) w0Var).getDefaultViewModelCreationExtras() : p1.a.f12564b).w(o0.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }

    public static void g(Activity activity) {
        ue.d.e(activity, "activity");
        if (Build.VERSION.SDK_INT >= 29) {
            h0.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new h0());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new i0(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public static final void h(View view, t tVar) {
        ue.d.e(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, tVar);
    }
}
