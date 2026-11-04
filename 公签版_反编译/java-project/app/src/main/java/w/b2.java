package w;

import android.view.View;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public abstract class b2 {
    public static int a(PopupWindow popupWindow, View view, int i10, boolean z) {
        return popupWindow.getMaxAvailableHeight(view, i10, z);
    }
}
