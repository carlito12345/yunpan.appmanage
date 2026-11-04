package com.hjq.toast.config;

import com.hjq.toast.ToastParams;

/* loaded from: classes.dex */
public interface IToastStrategy {
    void cancelToast();

    int computeShowDuration(CharSequence charSequence);

    IToast createToast(ToastParams toastParams);

    void showToast(ToastParams toastParams);
}
