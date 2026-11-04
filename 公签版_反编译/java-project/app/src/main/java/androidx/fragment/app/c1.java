package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c1 implements b1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f1217a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d1 f1218b;

    public c1(d1 d1Var, int i10) {
        this.f1218b = d1Var;
        this.f1217a = i10;
    }

    @Override // androidx.fragment.app.b1
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        d1 d1Var = this.f1218b;
        Fragment fragment = d1Var.f1249w;
        int i10 = this.f1217a;
        if (fragment == null || i10 >= 0 || !fragment.getChildFragmentManager().O(-1, 0)) {
            return d1Var.P(arrayList, arrayList2, i10, 1);
        }
        return false;
    }
}
