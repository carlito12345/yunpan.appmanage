package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.google.android.material.datepicker.i;
import g7.a;
import w.w;
import x0.b1;

/* loaded from: classes.dex */
public class CheckableImageButton extends w implements Checkable {

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f3615g = {R.attr.state_checked};

    /* renamed from: d, reason: collision with root package name */
    public boolean f3616d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3617e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3618f;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.yunpan.appmanage.R.attr.imageButtonStyle);
        this.f3617e = true;
        this.f3618f = true;
        b1.x(this, new i(1, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f3616d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        return this.f3616d ? View.mergeDrawableStates(super.onCreateDrawableState(i10 + 1), f3615g) : super.onCreateDrawableState(i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.f4709a);
        setChecked(aVar.f6057c);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f6057c = this.f3616d;
        return aVar;
    }

    public void setCheckable(boolean z) {
        if (this.f3617e != z) {
            this.f3617e = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.f3617e || this.f3616d == z) {
            return;
        }
        this.f3616d = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z) {
        this.f3618f = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f3618f) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f3616d);
    }
}
