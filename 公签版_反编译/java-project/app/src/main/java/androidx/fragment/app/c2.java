package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* loaded from: classes.dex */
public enum c2 {
    REMOVED,
    VISIBLE,
    GONE,
    INVISIBLE;

    public final void a(View view) {
        ue.d.e(view, "view");
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    view.toString();
                    viewGroup.toString();
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iOrdinal == 1) {
            if (Log.isLoggable("FragmentManager", 2)) {
                view.toString();
            }
            view.setVisibility(0);
        } else if (iOrdinal == 2) {
            if (Log.isLoggable("FragmentManager", 2)) {
                view.toString();
            }
            view.setVisibility(8);
        } else {
            if (iOrdinal != 3) {
                return;
            }
            if (Log.isLoggable("FragmentManager", 2)) {
                view.toString();
            }
            view.setVisibility(4);
        }
    }
}
