package com.yunpan.appmanage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import k4.g;

/* loaded from: classes.dex */
public class NoScrollViewPager extends g {
    public NoScrollViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
