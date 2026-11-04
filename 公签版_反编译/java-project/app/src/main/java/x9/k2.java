package x9;

import androidx.fragment.app.Fragment;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k2 extends k4.a {

    /* renamed from: b, reason: collision with root package name */
    public final androidx.fragment.app.e1 f18254b;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18258f;

    /* renamed from: g, reason: collision with root package name */
    public final androidx.fragment.app.e1 f18259g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f18260h;

    /* renamed from: d, reason: collision with root package name */
    public androidx.fragment.app.a f18256d = null;

    /* renamed from: e, reason: collision with root package name */
    public Fragment f18257e = null;

    /* renamed from: c, reason: collision with root package name */
    public final int f18255c = 1;

    public k2(androidx.fragment.app.e1 e1Var, ArrayList arrayList) {
        this.f18254b = e1Var;
        this.f18259g = e1Var;
        this.f18260h = arrayList;
    }

    @Override // k4.a
    public final void a(int i10) {
        androidx.fragment.app.e1 e1Var = this.f18259g;
        e1Var.getClass();
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(e1Var);
        aVar.h((Fragment) this.f18260h.get(i10));
        aVar.d(true);
    }

    @Override // k4.a
    public final void b() {
        androidx.fragment.app.a aVar = this.f18256d;
        if (aVar != null) {
            if (!this.f18258f) {
                try {
                    this.f18258f = true;
                    if (aVar.f1167g) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    aVar.f1175p.z(aVar, true);
                } finally {
                    this.f18258f = false;
                }
            }
            this.f18256d = null;
        }
    }

    @Override // k4.a
    public final int c() {
        ArrayList arrayList = this.f18260h;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // k4.a
    public final void e(k4.g gVar) {
        if (gVar.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }
}
