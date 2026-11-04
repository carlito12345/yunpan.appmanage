package androidx.fragment.app;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class n0 {
    public static WindowInsets a(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener, FragmentContainerView fragmentContainerView, WindowInsets windowInsets) {
        ue.d.e(onApplyWindowInsetsListener, "onApplyWindowInsetsListener");
        ue.d.e(windowInsets, "insets");
        WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(fragmentContainerView, windowInsets);
        ue.d.d(windowInsetsOnApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
        return windowInsetsOnApplyWindowInsets;
    }
}
