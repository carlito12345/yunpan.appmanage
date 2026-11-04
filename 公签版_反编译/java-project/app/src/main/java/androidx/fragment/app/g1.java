package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g1 extends androidx.lifecycle.r0 {

    /* renamed from: j, reason: collision with root package name */
    public static final m7.e f1277j = new m7.e(5);

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1281g;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f1278d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f1279e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f1280f = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public boolean f1282h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1283i = false;

    public g1(boolean z) {
        this.f1281g = z;
    }

    @Override // androidx.lifecycle.r0
    public final void b() {
        if (Log.isLoggable("FragmentManager", 3)) {
            toString();
        }
        this.f1282h = true;
    }

    public final void c(Fragment fragment) {
        if (this.f1283i) {
            return;
        }
        HashMap map = this.f1278d;
        if (map.containsKey(fragment.mWho)) {
            return;
        }
        map.put(fragment.mWho, fragment);
        if (Log.isLoggable("FragmentManager", 2)) {
            fragment.toString();
        }
    }

    public final void d(String str, boolean z) {
        HashMap map = this.f1279e;
        g1 g1Var = (g1) map.get(str);
        if (g1Var != null) {
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(g1Var.f1279e.keySet());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    g1Var.d((String) it.next(), true);
                }
            }
            g1Var.b();
            map.remove(str);
        }
        HashMap map2 = this.f1280f;
        androidx.lifecycle.v0 v0Var = (androidx.lifecycle.v0) map2.get(str);
        if (v0Var != null) {
            v0Var.a();
            map2.remove(str);
        }
    }

    public final void e(Fragment fragment) {
        if (this.f1283i || this.f1278d.remove(fragment.mWho) == null || !Log.isLoggable("FragmentManager", 2)) {
            return;
        }
        fragment.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g1.class != obj.getClass()) {
            return false;
        }
        g1 g1Var = (g1) obj;
        return this.f1278d.equals(g1Var.f1278d) && this.f1279e.equals(g1Var.f1279e) && this.f1280f.equals(g1Var.f1280f);
    }

    public final int hashCode() {
        return this.f1280f.hashCode() + ((this.f1279e.hashCode() + (this.f1278d.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FragmentManagerViewModel{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} Fragments (");
        Iterator it = this.f1278d.values().iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") Child Non Config (");
        Iterator it2 = this.f1279e.keySet().iterator();
        while (it2.hasNext()) {
            sb2.append((String) it2.next());
            if (it2.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") ViewModelStores (");
        Iterator it3 = this.f1280f.keySet().iterator();
        while (it3.hasNext()) {
            sb2.append((String) it3.next());
            if (it3.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(')');
        return sb2.toString();
    }
}
