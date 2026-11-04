package vb;

import android.graphics.Outline;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes.dex */
public final class d extends ViewOutlineProvider {
    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), TypedValue.applyDimension(1, 8.0f, view.getContext().getResources().getDisplayMetrics()));
    }
}
