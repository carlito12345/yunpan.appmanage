package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.a1;

/* loaded from: classes.dex */
public final class v extends a1 {
    public v(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.a1
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }
}
