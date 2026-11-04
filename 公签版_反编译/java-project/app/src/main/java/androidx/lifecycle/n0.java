package androidx.lifecycle;

import android.os.Bundle;
import java.util.Map;

/* loaded from: classes.dex */
public final class n0 implements b4.d {

    /* renamed from: a, reason: collision with root package name */
    public final b4.e f1793a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1794b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f1795c;

    /* renamed from: d, reason: collision with root package name */
    public final ie.d f1796d;

    public n0(b4.e eVar, w0 w0Var) {
        ue.d.e(eVar, "savedStateRegistry");
        this.f1793a = eVar;
        this.f1796d = new ie.d(new m0(0, w0Var));
    }

    @Override // b4.d
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1795c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((o0) this.f1796d.a()).f1797d.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleA = ((j0) entry.getValue()).f1779e.a();
            if (!ue.d.a(bundleA, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleA);
            }
        }
        this.f1794b = false;
        return bundle;
    }

    public final void b() {
        if (this.f1794b) {
            return;
        }
        Bundle bundleA = this.f1793a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1795c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleA != null) {
            bundle.putAll(bundleA);
        }
        this.f1795c = bundle;
        this.f1794b = true;
    }
}
