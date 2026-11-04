package com.hjq.toast.style;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.hjq.toast.config.IToastStyle;
import t8.b;

/* loaded from: classes.dex */
public class BlackToastStyle implements IToastStyle<View> {
    @Override // com.hjq.toast.config.IToastStyle
    public View createView(Context context) {
        TextView textView = new TextView(context);
        textView.setId(R.id.message);
        textView.setGravity(getTextGravity(context));
        textView.setTextColor(getTextColor(context));
        textView.setTextSize(0, getTextSize(context));
        int horizontalPadding = getHorizontalPadding(context);
        int verticalPadding = getVerticalPadding(context);
        int i10 = Build.VERSION.SDK_INT;
        textView.setPaddingRelative(horizontalPadding, verticalPadding, horizontalPadding, verticalPadding);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setBackground(getBackgroundDrawable(context));
        if (i10 >= 21) {
            textView.setZ(getTranslationZ(context));
        }
        return textView;
    }

    public Drawable getBackgroundDrawable(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1291845632);
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        return gradientDrawable;
    }

    @Override // com.hjq.toast.config.IToastStyle
    public final /* synthetic */ int getGravity() {
        return b.a(this);
    }

    @Override // com.hjq.toast.config.IToastStyle
    public final /* synthetic */ float getHorizontalMargin() {
        return b.b(this);
    }

    public int getHorizontalPadding(Context context) {
        return (int) TypedValue.applyDimension(1, 24.0f, context.getResources().getDisplayMetrics());
    }

    public int getTextColor(Context context) {
        return -285212673;
    }

    public int getTextGravity(Context context) {
        return 17;
    }

    public float getTextSize(Context context) {
        return TypedValue.applyDimension(2, 14.0f, context.getResources().getDisplayMetrics());
    }

    public float getTranslationZ(Context context) {
        return TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics());
    }

    @Override // com.hjq.toast.config.IToastStyle
    public final /* synthetic */ float getVerticalMargin() {
        return b.c(this);
    }

    public int getVerticalPadding(Context context) {
        return (int) TypedValue.applyDimension(1, 16.0f, context.getResources().getDisplayMetrics());
    }

    @Override // com.hjq.toast.config.IToastStyle
    public final /* synthetic */ int getXOffset() {
        return b.d(this);
    }

    @Override // com.hjq.toast.config.IToastStyle
    public final /* synthetic */ int getYOffset() {
        return b.e(this);
    }
}
