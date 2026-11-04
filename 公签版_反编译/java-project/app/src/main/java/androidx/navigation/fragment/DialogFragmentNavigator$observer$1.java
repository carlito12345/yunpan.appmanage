package androidx.navigation.fragment;

import androidx.fragment.app.s;
import androidx.lifecycle.m;
import androidx.lifecycle.r;
import androidx.lifecycle.t;
import x3.a;

/* loaded from: classes.dex */
public final class DialogFragmentNavigator$observer$1 implements r {
    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) {
        int i10 = a.f18115a[mVar.ordinal()];
        if (i10 == 1) {
            throw null;
        }
        if (i10 == 2) {
            throw null;
        }
        if (i10 == 3) {
            if (!((s) tVar).h().isShowing()) {
                throw null;
            }
        } else {
            if (i10 != 4) {
                return;
            }
            throw null;
        }
    }
}
