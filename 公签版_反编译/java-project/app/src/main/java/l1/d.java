package l1;

import android.util.Log;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final c f10386a = c.f10385a;

    public static c a(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                ue.d.d(fragment.getParentFragmentManager(), "declaringFragment.parentFragmentManager");
            }
            fragment = fragment.getParentFragment();
        }
        return f10386a;
    }

    public static void b(h hVar) {
        if (Log.isLoggable("FragmentManager", 3)) {
            hVar.f10387a.getClass();
        }
    }

    public static final void c(Fragment fragment, String str) {
        ue.d.e(fragment, "fragment");
        ue.d.e(str, "previousFragmentId");
        b(new a(fragment, str));
        a(fragment).getClass();
    }
}
