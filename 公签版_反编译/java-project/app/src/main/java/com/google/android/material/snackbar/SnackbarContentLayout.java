package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.Resources;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.d;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import r6.a;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public TextView f3643a;

    /* renamed from: b, reason: collision with root package name */
    public Button f3644b;

    /* renamed from: c, reason: collision with root package name */
    public int f3645c;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) throws NumberFormatException {
        super(context, attributeSet);
        d.c0(context, R.attr.motionEasingEmphasizedInterpolator, a.f13711b);
    }

    public final boolean a(int i10, int i11, int i12) {
        boolean z;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z = true;
        } else {
            z = false;
        }
        if (this.f3643a.getPaddingTop() == i11 && this.f3643a.getPaddingBottom() == i12) {
            return z;
        }
        TextView textView = this.f3643a;
        WeakHashMap weakHashMap = b1.f17953a;
        if (k0.g(textView)) {
            k0.k(textView, k0.f(textView), i11, k0.e(textView), i12);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i11, textView.getPaddingRight(), i12);
        return true;
    }

    public Button getActionView() {
        return this.f3644b;
    }

    public TextView getMessageView() {
        return this.f3643a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f3643a = (TextView) findViewById(R.id.snackbar_text);
        this.f3644b = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) throws Resources.NotFoundException {
        super.onMeasure(i10, i11);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f3643a.getLayout();
        boolean z = layout != null && layout.getLineCount() > 1;
        if (!z || this.f3645c <= 0 || this.f3644b.getMeasuredWidth() <= this.f3645c) {
            if (!z) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i10, i11);
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f3645c = i10;
    }
}
