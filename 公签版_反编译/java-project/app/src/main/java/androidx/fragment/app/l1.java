package androidx.fragment.app;

import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class l1 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1333a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1334b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1335c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public g1 f1336d;

    public final void a(Fragment fragment) {
        if (this.f1333a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1333a) {
            this.f1333a.add(fragment);
        }
        fragment.mAdded = true;
    }

    public final Fragment b(String str) {
        k1 k1Var = (k1) this.f1334b.get(str);
        if (k1Var != null) {
            return k1Var.f1320c;
        }
        return null;
    }

    public final Fragment c(String str) {
        Fragment fragmentFindFragmentByWho;
        for (k1 k1Var : this.f1334b.values()) {
            if (k1Var != null && (fragmentFindFragmentByWho = k1Var.f1320c.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (k1 k1Var : this.f1334b.values()) {
            if (k1Var != null) {
                arrayList.add(k1Var);
            }
        }
        return arrayList;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (k1 k1Var : this.f1334b.values()) {
            if (k1Var != null) {
                arrayList.add(k1Var.f1320c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.f1333a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1333a) {
            arrayList = new ArrayList(this.f1333a);
        }
        return arrayList;
    }

    public final void g(k1 k1Var) {
        Fragment fragment = k1Var.f1320c;
        String str = fragment.mWho;
        HashMap map = this.f1334b;
        if (map.get(str) != null) {
            return;
        }
        map.put(fragment.mWho, k1Var);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f1336d.c(fragment);
            } else {
                this.f1336d.e(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            fragment.toString();
        }
    }

    public final void h(k1 k1Var) {
        Fragment fragment = k1Var.f1320c;
        if (fragment.mRetainInstance) {
            this.f1336d.e(fragment);
        }
        HashMap map = this.f1334b;
        if (map.get(fragment.mWho) == k1Var && ((k1) map.put(fragment.mWho, null)) != null && Log.isLoggable("FragmentManager", 2)) {
            fragment.toString();
        }
    }

    public final Bundle i(String str, Bundle bundle) {
        HashMap map = this.f1335c;
        return bundle != null ? (Bundle) map.put(str, bundle) : (Bundle) map.remove(str);
    }
}
