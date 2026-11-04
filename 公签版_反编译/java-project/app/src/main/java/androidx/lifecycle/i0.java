package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class i0 extends Fragment {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f1772b = 0;

    /* renamed from: a, reason: collision with root package name */
    public a1.i f1773a;

    public final void a(m mVar) {
        if (Build.VERSION.SDK_INT < 29) {
            Activity activity = getActivity();
            ue.d.d(activity, "activity");
            l0.d(activity, mVar);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(m.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        a(m.ON_DESTROY);
        this.f1773a = null;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        a(m.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        a1.i iVar = this.f1773a;
        if (iVar != null) {
            ((f0) iVar.f76b).b();
        }
        a(m.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        a1.i iVar = this.f1773a;
        if (iVar != null) {
            f0 f0Var = (f0) iVar.f76b;
            int i10 = f0Var.f1764a + 1;
            f0Var.f1764a = i10;
            if (i10 == 1 && f0Var.f1767d) {
                f0Var.f1769f.e(m.ON_START);
                f0Var.f1767d = false;
            }
        }
        a(m.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        a(m.ON_STOP);
    }
}
