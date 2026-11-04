package b4;

import android.os.Bundle;
import androidx.lifecycle.m;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import androidx.lifecycle.t;
import androidx.lifecycle.v;
import androidx.savedstate.Recreator;
import java.util.Map;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final g f2549a;

    /* renamed from: b, reason: collision with root package name */
    public final e f2550b = new e();

    /* renamed from: c, reason: collision with root package name */
    public boolean f2551c;

    public f(g gVar) {
        this.f2549a = gVar;
    }

    public final void a() {
        g gVar = this.f2549a;
        o lifecycle = gVar.getLifecycle();
        if (((v) lifecycle).f1818c != n.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new Recreator(gVar));
        final e eVar = this.f2550b;
        eVar.getClass();
        if (eVar.f2544b) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.a(new r() { // from class: b4.b
            @Override // androidx.lifecycle.r
            public final void a(t tVar, m mVar) {
                e eVar2 = eVar;
                ue.d.e(eVar2, "this$0");
                if (mVar == m.ON_START) {
                    eVar2.f2548f = true;
                } else if (mVar == m.ON_STOP) {
                    eVar2.f2548f = false;
                }
            }
        });
        eVar.f2544b = true;
        this.f2551c = true;
    }

    public final void b(Bundle bundle) {
        if (!this.f2551c) {
            a();
        }
        v vVar = (v) this.f2549a.getLifecycle();
        if (vVar.f1818c.compareTo(n.STARTED) >= 0) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + vVar.f1818c).toString());
        }
        e eVar = this.f2550b;
        if (!eVar.f2544b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (eVar.f2546d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        eVar.f2545c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        eVar.f2546d = true;
    }

    public final void c(Bundle bundle) {
        ue.d.e(bundle, "outBundle");
        e eVar = this.f2550b;
        eVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = eVar.f2545c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        y.f fVar = eVar.f2543a;
        fVar.getClass();
        y.d dVar = new y.d(fVar);
        fVar.f18528c.put(dVar, Boolean.FALSE);
        while (dVar.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar.next();
            bundle2.putBundle((String) entry.getKey(), ((d) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
