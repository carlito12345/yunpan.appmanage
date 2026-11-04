package androidx.fragment.app;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1396a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1397b;

    public /* synthetic */ t(int i10, Object obj) {
        this.f1396a = i10;
        this.f1397b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1396a) {
            case 0:
                Fragment fragment = (Fragment) this.f1397b;
                w1 w1Var = fragment.mViewLifecycleOwner;
                w1Var.f1421e.b(fragment.mSavedViewRegistryState);
                fragment.mSavedViewRegistryState = null;
                break;
            default:
                n1.a(4, (ArrayList) this.f1397b);
                break;
        }
    }
}
