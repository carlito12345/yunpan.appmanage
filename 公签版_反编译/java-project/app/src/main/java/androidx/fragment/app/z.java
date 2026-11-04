package androidx.fragment.app;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class z extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1431a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f1432b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n.a f1433c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.activity.result.b f1434d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f1435e;

    public z(Fragment fragment, y yVar, AtomicReference atomicReference, n.a aVar, androidx.activity.result.b bVar) {
        this.f1435e = fragment;
        this.f1431a = yVar;
        this.f1432b = atomicReference;
        this.f1433c = aVar;
        this.f1434d = bVar;
    }

    @Override // androidx.fragment.app.c0
    public final void a() {
        androidx.activity.result.g gVarE;
        Fragment fragment = this.f1435e;
        String strGenerateActivityResultKey = fragment.generateActivityResultKey();
        y yVar = this.f1431a;
        switch (yVar.f1425a) {
            case 0:
                Fragment fragment2 = (Fragment) yVar.f1426b;
                Object obj = fragment2.mHost;
                if (!(obj instanceof androidx.activity.result.h)) {
                    gVarE = fragment2.requireActivity().f813k;
                    break;
                } else {
                    gVarE = ((androidx.activity.result.h) obj).e();
                    break;
                }
            default:
                gVarE = (androidx.activity.result.g) yVar.f1426b;
                break;
        }
        this.f1432b.set(gVarE.c(strGenerateActivityResultKey, fragment, this.f1433c, this.f1434d));
    }
}
