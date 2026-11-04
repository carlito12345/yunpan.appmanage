package com.hjq.toast;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.hjq.toast.config.IToast;
import com.hsae.autosdk.core.NoConst;

/* loaded from: classes.dex */
public abstract class CustomToast implements IToast {
    private final Context mContext;
    private int mDuration;
    private int mGravity;
    private float mHorizontalMargin;
    private TextView mMessageView;
    private float mVerticalMargin;
    private View mView;
    private int mXOffset;
    private int mYOffset;
    private int mAnimationsId = android.R.style.Animation.Toast;
    private int mShortDuration = NoConst.MIN_HEARTBEAT_INTERVAL;
    private int mLongDuration = 3500;

    public CustomToast(Context context) {
        this.mContext = context;
    }

    @Override // com.hjq.toast.config.IToast
    public final /* synthetic */ TextView findMessageView(View view) {
        return t8.a.a(this, view);
    }

    public int getAnimationsId() {
        return this.mAnimationsId;
    }

    @Override // com.hjq.toast.config.IToast
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.hjq.toast.config.IToast
    public int getDuration() {
        return this.mDuration;
    }

    @Override // com.hjq.toast.config.IToast
    public int getGravity() {
        return this.mGravity;
    }

    @Override // com.hjq.toast.config.IToast
    public float getHorizontalMargin() {
        return this.mHorizontalMargin;
    }

    public int getLongDuration() {
        return this.mLongDuration;
    }

    public int getShortDuration() {
        return this.mShortDuration;
    }

    @Override // com.hjq.toast.config.IToast
    public float getVerticalMargin() {
        return this.mVerticalMargin;
    }

    @Override // com.hjq.toast.config.IToast
    public View getView() {
        return this.mView;
    }

    @Override // com.hjq.toast.config.IToast
    public int getXOffset() {
        return this.mXOffset;
    }

    @Override // com.hjq.toast.config.IToast
    public int getYOffset() {
        return this.mYOffset;
    }

    public void setAnimationsId(int i10) {
        this.mAnimationsId = i10;
    }

    @Override // com.hjq.toast.config.IToast
    public void setDuration(int i10) {
        this.mDuration = i10;
    }

    @Override // com.hjq.toast.config.IToast
    public void setGravity(int i10, int i11, int i12) {
        this.mGravity = i10;
        this.mXOffset = i11;
        this.mYOffset = i12;
    }

    public void setLongDuration(int i10) {
        this.mLongDuration = i10;
    }

    @Override // com.hjq.toast.config.IToast
    public void setMargin(float f10, float f11) {
        this.mHorizontalMargin = f10;
        this.mVerticalMargin = f11;
    }

    public void setShortDuration(int i10) {
        this.mShortDuration = i10;
    }

    @Override // com.hjq.toast.config.IToast
    public void setText(int i10) {
        Resources resources = this.mContext.getResources();
        if (resources == null) {
            return;
        }
        try {
            setText(resources.getString(i10));
        } catch (Resources.NotFoundException unused) {
        }
    }

    @Override // com.hjq.toast.config.IToast
    public void setView(View view) {
        this.mView = view;
        if (view == null) {
            this.mMessageView = null;
        } else {
            this.mMessageView = t8.a.a(this, view);
        }
    }

    @Override // com.hjq.toast.config.IToast
    public void setText(CharSequence charSequence) {
        TextView textView = this.mMessageView;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }
}
