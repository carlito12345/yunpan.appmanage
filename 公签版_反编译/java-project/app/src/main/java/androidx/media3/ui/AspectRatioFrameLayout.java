package androidx.media3.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.bumptech.glide.manager.o;
import v3.a;
import v3.f0;

/* loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f1999d = 0;

    /* renamed from: a, reason: collision with root package name */
    public final o f2000a;

    /* renamed from: b, reason: collision with root package name */
    public float f2001b;

    /* renamed from: c, reason: collision with root package name */
    public int f2002c;

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2002c = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, f0.f16477a, 0, 0);
            try {
                this.f2002c = typedArrayObtainStyledAttributes.getInt(0, 0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.f2000a = new o(this);
    }

    public int getResizeMode() {
        return this.f2002c;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        float f10;
        float f11;
        super.onMeasure(i10, i11);
        if (this.f2001b <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f12 = measuredWidth;
        float f13 = measuredHeight;
        float f14 = (this.f2001b / (f12 / f13)) - 1.0f;
        float fAbs = Math.abs(f14);
        o oVar = this.f2000a;
        if (fAbs <= 0.01f) {
            if (oVar.f3397b) {
                return;
            }
            oVar.f3397b = true;
            ((AspectRatioFrameLayout) oVar.f3398c).post(oVar);
            return;
        }
        int i12 = this.f2002c;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    f10 = this.f2001b;
                } else if (i12 == 4) {
                    if (f14 > 0.0f) {
                        f10 = this.f2001b;
                    } else {
                        f11 = this.f2001b;
                    }
                }
                measuredWidth = (int) (f13 * f10);
            } else {
                f11 = this.f2001b;
            }
            measuredHeight = (int) (f12 / f11);
        } else if (f14 > 0.0f) {
            f11 = this.f2001b;
            measuredHeight = (int) (f12 / f11);
        } else {
            f10 = this.f2001b;
            measuredWidth = (int) (f13 * f10);
        }
        if (!oVar.f3397b) {
            oVar.f3397b = true;
            ((AspectRatioFrameLayout) oVar.f3398c).post(oVar);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f10) {
        if (this.f2001b != f10) {
            this.f2001b = f10;
            requestLayout();
        }
    }

    public void setResizeMode(int i10) {
        if (this.f2002c != i10) {
            this.f2002c = i10;
            requestLayout();
        }
    }

    public void setAspectRatioListener(a aVar) {
    }
}
