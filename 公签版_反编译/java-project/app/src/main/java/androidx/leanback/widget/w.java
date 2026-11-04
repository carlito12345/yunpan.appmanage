package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public abstract class w extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f1730a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1731b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1732c;

    public w(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1732c = new Rect();
        if (context.getApplicationInfo().targetSdkVersion < 23 || Build.VERSION.SDK_INT < 23) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.foreground});
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 23) {
                    if (i10 >= 23) {
                        setForeground(drawable);
                    }
                } else if (this.f1730a != drawable) {
                    this.f1730a = drawable;
                    this.f1731b = true;
                    setWillNotDraw(false);
                    this.f1730a.setCallback(this);
                    if (this.f1730a.isStateful()) {
                        this.f1730a.setState(getDrawableState());
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f1730a;
        if (drawable != null) {
            if (this.f1731b) {
                this.f1731b = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                Rect rect = this.f1732c;
                rect.set(0, 0, right, bottom);
                drawable.setBounds(rect);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1730a;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f1730a.setState(getDrawableState());
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1730a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        this.f1731b = z | this.f1731b;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1730a;
    }
}
