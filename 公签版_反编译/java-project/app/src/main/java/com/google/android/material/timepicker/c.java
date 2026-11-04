package com.google.android.material.timepicker;

import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.yunpan.appmanage.R;
import y0.m;
import y0.n;

/* loaded from: classes.dex */
public final class c extends x0.c {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f3731d;

    public c(ClockFaceView clockFaceView) {
        this.f3731d = clockFaceView;
    }

    @Override // x0.c
    public final void d(View view, n nVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f17971a;
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (iIntValue > 0) {
            View view2 = (View) this.f3731d.B.get(iIntValue - 1);
            if (Build.VERSION.SDK_INT >= 22) {
                accessibilityNodeInfo.setTraversalAfter(view2);
            }
        }
        nVar.l(m.a(0, 1, iIntValue, 1, view.isSelected()));
        accessibilityNodeInfo.setClickable(true);
        nVar.b(y0.f.f18534e);
    }

    @Override // x0.c
    public final boolean g(View view, int i10, Bundle bundle) {
        if (i10 != 16) {
            return super.g(view, i10, bundle);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        ClockFaceView clockFaceView = this.f3731d;
        view.getHitRect(clockFaceView.f3714y);
        float fCenterX = clockFaceView.f3714y.centerX();
        float fCenterY = clockFaceView.f3714y.centerY();
        clockFaceView.f3713x.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
        clockFaceView.f3713x.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
        return true;
    }
}
