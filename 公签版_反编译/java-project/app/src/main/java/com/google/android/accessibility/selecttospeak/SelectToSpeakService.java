package com.google.android.accessibility.selecttospeak;

import android.accessibilityservice.AccessibilityService;
import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import qf.c;

/* loaded from: classes.dex */
public class SelectToSpeakService extends AccessibilityService {
    @Override // android.accessibilityservice.AccessibilityService
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onServiceConnected() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        super.onServiceConnected();
        setServiceInfo(getServiceInfo());
        c.U(this);
        if (Build.VERSION.SDK_INT >= 24) {
            disableSelf();
        }
    }
}
