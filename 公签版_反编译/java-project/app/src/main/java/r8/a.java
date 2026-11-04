package r8;

import android.app.usage.NetworkStatsManager;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* bridge */ /* synthetic */ NetworkStatsManager d(Object obj) {
        return (NetworkStatsManager) obj;
    }

    public static /* bridge */ /* synthetic */ ThemedSpinnerAdapter h(SpinnerAdapter spinnerAdapter) {
        return (ThemedSpinnerAdapter) spinnerAdapter;
    }

    public static /* bridge */ /* synthetic */ boolean s(SpinnerAdapter spinnerAdapter) {
        return spinnerAdapter instanceof ThemedSpinnerAdapter;
    }
}
