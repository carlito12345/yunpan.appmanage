package b4;

import android.os.Bundle;
import androidx.lifecycle.j;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: b, reason: collision with root package name */
    public boolean f2544b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f2545c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2546d;

    /* renamed from: e, reason: collision with root package name */
    public a f2547e;

    /* renamed from: a, reason: collision with root package name */
    public final y.f f2543a = new y.f();

    /* renamed from: f, reason: collision with root package name */
    public boolean f2548f = true;

    public final Bundle a(String str) {
        if (!this.f2546d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f2545c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f2545c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f2545c;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f2545c = null;
        }
        return bundle2;
    }

    public final d b() {
        String str;
        d dVar;
        Iterator it = this.f2543a.iterator();
        do {
            y.b bVar = (y.b) it;
            if (!bVar.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            ue.d.d(entry, "components");
            str = (String) entry.getKey();
            dVar = (d) entry.getValue();
        } while (!ue.d.a(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return dVar;
    }

    public final void c(String str, d dVar) {
        Object obj;
        ue.d.e(dVar, "provider");
        y.f fVar = this.f2543a;
        y.c cVarA = fVar.a(str);
        if (cVarA != null) {
            obj = cVarA.f18520b;
        } else {
            y.c cVar = new y.c(str, dVar);
            fVar.f18529d++;
            y.c cVar2 = fVar.f18527b;
            if (cVar2 == null) {
                fVar.f18526a = cVar;
                fVar.f18527b = cVar;
            } else {
                cVar2.f18521c = cVar;
                cVar.f18522d = cVar2;
                fVar.f18527b = cVar;
            }
            obj = null;
        }
        if (((d) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void d() throws NoSuchMethodException, SecurityException {
        if (!this.f2548f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        a aVar = this.f2547e;
        if (aVar == null) {
            aVar = new a(this);
        }
        this.f2547e = aVar;
        try {
            j.class.getDeclaredConstructor(null);
            a aVar2 = this.f2547e;
            if (aVar2 != null) {
                ((LinkedHashSet) aVar2.f2541b).add(j.class.getName());
            }
        } catch (NoSuchMethodException e7) {
            throw new IllegalArgumentException("Class " + j.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e7);
        }
    }
}
