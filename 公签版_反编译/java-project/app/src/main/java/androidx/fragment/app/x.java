package androidx.fragment.app;

import android.view.View;

/* loaded from: classes.dex */
public final class x extends m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f1422a;

    public x(Fragment fragment) {
        this.f1422a = fragment;
    }

    @Override // androidx.fragment.app.m0
    public final View n(int i10) {
        Fragment fragment = this.f1422a;
        View view = fragment.mView;
        if (view != null) {
            return view.findViewById(i10);
        }
        throw new IllegalStateException("Fragment " + fragment + " does not have a view");
    }

    @Override // androidx.fragment.app.m0
    public final boolean o() {
        return this.f1422a.mView != null;
    }
}
