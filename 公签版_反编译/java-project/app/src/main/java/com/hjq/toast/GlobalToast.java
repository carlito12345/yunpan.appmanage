package com.hjq.toast;

import android.app.Application;

/* loaded from: classes.dex */
public class GlobalToast extends CustomToast {
    private final ToastImpl mToastImpl;

    public GlobalToast(Application application) {
        super(application);
        this.mToastImpl = new ToastImpl(application, this);
    }

    @Override // com.hjq.toast.config.IToast
    public void cancel() {
        this.mToastImpl.cancel();
    }

    @Override // com.hjq.toast.config.IToast
    public void show() {
        this.mToastImpl.show();
    }
}
