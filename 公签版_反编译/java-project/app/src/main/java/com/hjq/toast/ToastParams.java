package com.hjq.toast;

import com.hjq.toast.config.IToastInterceptor;
import com.hjq.toast.config.IToastStrategy;
import com.hjq.toast.config.IToastStyle;

/* loaded from: classes.dex */
public class ToastParams {
    public static final int PRIORITY_TYPE_DEFAULT = 0;
    public static final int PRIORITY_TYPE_GLOBAL = 1;
    public static final int PRIORITY_TYPE_LOCAL = 2;
    public IToastInterceptor interceptor;
    public IToastStrategy strategy;
    public IToastStyle<?> style;
    public CharSequence text;
    public int duration = -1;
    public long delayMillis = 0;
    public int priorityType = 0;
}
