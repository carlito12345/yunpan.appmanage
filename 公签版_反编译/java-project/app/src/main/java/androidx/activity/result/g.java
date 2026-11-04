package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.m;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import androidx.lifecycle.t;
import androidx.lifecycle.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f843a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f844b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f845c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f846d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final transient HashMap f847e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f848f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f849g = new Bundle();

    public final boolean a(int i10, int i11, Intent intent) {
        b bVar;
        String str = (String) this.f843a.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        e eVar = (e) this.f847e.get(str);
        if (eVar == null || (bVar = eVar.f839a) == null || !this.f846d.contains(str)) {
            this.f848f.remove(str);
            this.f849g.putParcelable(str, new a(intent, i11));
            return true;
        }
        bVar.a(eVar.f840b.c(intent, i11));
        this.f846d.remove(str);
        return true;
    }

    public abstract void b(int i10, n.a aVar, Object obj);

    public final d c(final String str, t tVar, final n.a aVar, final b bVar) {
        o lifecycle = tVar.getLifecycle();
        v vVar = (v) lifecycle;
        if (vVar.f1818c.compareTo(n.STARTED) >= 0) {
            throw new IllegalStateException("LifecycleOwner " + tVar + " is attempting to register while current state is " + vVar.f1818c + ". LifecycleOwners must call register before they are STARTED.");
        }
        e(str);
        HashMap map = this.f845c;
        f fVar = (f) map.get(str);
        if (fVar == null) {
            fVar = new f(lifecycle);
        }
        r rVar = new r() { // from class: androidx.activity.result.ActivityResultRegistry$1
            @Override // androidx.lifecycle.r
            public final void a(t tVar2, m mVar) {
                boolean zEquals = m.ON_START.equals(mVar);
                String str2 = str;
                g gVar = this.f832d;
                if (!zEquals) {
                    if (m.ON_STOP.equals(mVar)) {
                        gVar.f847e.remove(str2);
                        return;
                    } else {
                        if (m.ON_DESTROY.equals(mVar)) {
                            gVar.f(str2);
                            return;
                        }
                        return;
                    }
                }
                HashMap map2 = gVar.f847e;
                b bVar2 = bVar;
                n.a aVar2 = aVar;
                map2.put(str2, new e(aVar2, bVar2));
                HashMap map3 = gVar.f848f;
                if (map3.containsKey(str2)) {
                    Object obj = map3.get(str2);
                    map3.remove(str2);
                    bVar2.a(obj);
                }
                Bundle bundle = gVar.f849g;
                a aVar3 = (a) bundle.getParcelable(str2);
                if (aVar3 != null) {
                    bundle.remove(str2);
                    bVar2.a(aVar2.c(aVar3.f834b, aVar3.f833a));
                }
            }
        };
        fVar.f841a.a(rVar);
        fVar.f842b.add(rVar);
        map.put(str, fVar);
        return new d(this, str, aVar, 0);
    }

    public final d d(String str, n.a aVar, b bVar) {
        e(str);
        this.f847e.put(str, new e(aVar, bVar));
        HashMap map = this.f848f;
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            map.remove(str);
            bVar.a(obj);
        }
        Bundle bundle = this.f849g;
        a aVar2 = (a) bundle.getParcelable(str);
        if (aVar2 != null) {
            bundle.remove(str);
            bVar.a(aVar.c(aVar2.f834b, aVar2.f833a));
        }
        return new d(this, str, aVar, 1);
    }

    public final void e(String str) {
        HashMap map = this.f844b;
        if (((Integer) map.get(str)) != null) {
            return;
        }
        we.d.f17885a.getClass();
        int iNextInt = we.d.f17886b.a().nextInt(2147418112);
        while (true) {
            int i10 = iNextInt + 65536;
            HashMap map2 = this.f843a;
            if (!map2.containsKey(Integer.valueOf(i10))) {
                map2.put(Integer.valueOf(i10), str);
                map.put(str, Integer.valueOf(i10));
                return;
            } else {
                we.d.f17885a.getClass();
                iNextInt = we.d.f17886b.a().nextInt(2147418112);
            }
        }
    }

    public final void f(String str) {
        Integer num;
        if (!this.f846d.contains(str) && (num = (Integer) this.f844b.remove(str)) != null) {
            this.f843a.remove(num);
        }
        this.f847e.remove(str);
        HashMap map = this.f848f;
        if (map.containsKey(str)) {
            Object obj = map.get(str);
            if (obj != null) {
                obj.toString();
            }
            map.remove(str);
        }
        Bundle bundle = this.f849g;
        if (bundle.containsKey(str)) {
            Parcelable parcelable = bundle.getParcelable(str);
            if (parcelable != null) {
                parcelable.toString();
            }
            bundle.remove(str);
        }
        HashMap map2 = this.f845c;
        f fVar = (f) map2.get(str);
        if (fVar != null) {
            ArrayList arrayList = fVar.f842b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                fVar.f841a.b((r) it.next());
            }
            arrayList.clear();
            map2.remove(str);
        }
    }
}
