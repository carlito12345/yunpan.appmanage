package com.hjq.toast;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.hjq.toast.config.IToast;

/* loaded from: classes.dex */
public class SystemToast extends Toast implements IToast {
    private final Application mApplication;
    private TextView mMessageView;

    public SystemToast(Application application) {
        super(application);
        this.mApplication = application;
    }

    @Override // com.hjq.toast.config.IToast
    public final /* synthetic */ TextView findMessageView(View view) {
        return t8.a.a(this, view);
    }

    @Override // com.hjq.toast.config.IToast
    public Context getContext() {
        return this.mApplication;
    }

    @Override // android.widget.Toast, com.hjq.toast.config.IToast
    public void setText(CharSequence charSequence) {
        TextView textView = this.mMessageView;
        if (textView != null) {
            textView.setText(charSequence);
            return;
        }
        try {
            super.setText(charSequence);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    @Override // android.widget.Toast, com.hjq.toast.config.IToast
    public void setView(View view) {
        super.setView(view);
        if (view == null) {
            this.mMessageView = null;
        } else {
            this.mMessageView = t8.a.a(this, view);
        }
    }
}
