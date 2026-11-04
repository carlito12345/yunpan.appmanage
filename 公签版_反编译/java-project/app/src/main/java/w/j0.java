package w;

import android.content.res.Resources;
import android.widget.ThemedSpinnerAdapter;

/* loaded from: classes.dex */
public abstract class j0 {
    public static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
        if (qf.c.o(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
            return;
        }
        themedSpinnerAdapter.setDropDownViewTheme(theme);
    }
}
