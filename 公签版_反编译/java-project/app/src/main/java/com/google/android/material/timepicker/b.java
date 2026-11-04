package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.view.ViewTreeObserver;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f3730a;

    public b(ClockFaceView clockFaceView) {
        this.f3730a = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() throws IllegalAccessException, NoSuchMethodException, Resources.NotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ClockFaceView clockFaceView = this.f3730a;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = ((clockFaceView.getHeight() / 2) - clockFaceView.f3713x.f3718d) - clockFaceView.F;
        if (height != clockFaceView.f3733v) {
            clockFaceView.f3733v = height;
            clockFaceView.k();
            int i10 = clockFaceView.f3733v;
            ClockHandView clockHandView = clockFaceView.f3713x;
            clockHandView.l = i10;
            clockHandView.invalidate();
        }
        return true;
    }
}
