package androidx.fragment.app;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class w extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1414a;

    public w(Fragment fragment) {
        this.f1414a = fragment;
    }

    @Override // androidx.fragment.app.c0
    public final void a() {
        Fragment fragment = this.f1414a;
        fragment.mSavedStateRegistryController.a();
        androidx.lifecycle.l0.e(fragment);
        Bundle bundle = fragment.mSavedFragmentState;
        fragment.mSavedStateRegistryController.b(bundle != null ? bundle.getBundle("registryState") : null);
    }
}
