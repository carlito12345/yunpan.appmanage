package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.bumptech.glide.c;
import com.yunpan.appmanage.R;
import d.b;
import g7.l;
import java.util.ArrayList;
import java.util.Collections;
import m7.g;
import s7.a;
import v.k;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final ImageView.ScaleType[] P0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public boolean M0;
    public ImageView.ScaleType N0;
    public Boolean O0;

    /* renamed from: h0, reason: collision with root package name */
    public Integer f3444h0;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f3445t0;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar), attributeSet, 0);
        Context context2 = getContext();
        TypedArray typedArrayG = l.g(context2, attributeSet, q6.a.f13047t, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (typedArrayG.hasValue(2)) {
            setNavigationIconTint(typedArrayG.getColor(2, -1));
        }
        this.f3445t0 = typedArrayG.getBoolean(4, false);
        this.M0 = typedArrayG.getBoolean(3, false);
        int i10 = typedArrayG.getInt(1, -1);
        if (i10 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = P0;
            if (i10 < scaleTypeArr.length) {
                this.N0 = scaleTypeArr[i10];
            }
        }
        if (typedArrayG.hasValue(0)) {
            this.O0 = Boolean.valueOf(typedArrayG.getBoolean(0, false));
        }
        typedArrayG.recycle();
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : b.x(background);
        if (colorStateListValueOf != null) {
            g gVar = new g();
            gVar.k(colorStateListValueOf);
            gVar.i(context2);
            gVar.j(b1.g(this));
            j0.q(this, gVar);
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.N0;
    }

    public Integer getNavigationIconTint() {
        return this.f3444h0;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void n(int i10) {
        Menu menu = getMenu();
        boolean z = menu instanceof k;
        if (z) {
            ((k) menu).w();
        }
        super.n(i10);
        if (z) {
            ((k) menu).v();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof g) {
            s1.g.X(this, (g) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i10, i11, i12, i13);
        int i14 = 0;
        ImageView imageView2 = null;
        if (this.f3445t0 || this.M0) {
            ArrayList arrayListE = l.e(this, getTitle());
            boolean zIsEmpty = arrayListE.isEmpty();
            a5.a aVar = l.f6120c;
            TextView textView = zIsEmpty ? null : (TextView) Collections.min(arrayListE, aVar);
            ArrayList arrayListE2 = l.e(this, getSubtitle());
            TextView textView2 = arrayListE2.isEmpty() ? null : (TextView) Collections.max(arrayListE2, aVar);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i15 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i16 = 0; i16 < getChildCount(); i16++) {
                    View childAt = getChildAt(i16);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i15 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i15 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.f3445t0 && textView != null) {
                    w(textView, pair);
                }
                if (this.M0 && textView2 != null) {
                    w(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i14 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i14);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i14++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.O0;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.N0;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        Drawable background = getBackground();
        if (background instanceof g) {
            ((g) background).j(f10);
        }
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.O0;
        if (bool == null || bool.booleanValue() != z) {
            this.O0 = Boolean.valueOf(z);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.N0 != scaleType) {
            this.N0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.f3444h0 != null) {
            drawable = c.n0(drawable.mutate());
            c.e0(drawable, this.f3444h0.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i10) {
        this.f3444h0 = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.M0 != z) {
            this.M0 = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.f3445t0 != z) {
            this.f3445t0 = z;
            requestLayout();
        }
    }

    public final void w(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i10 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i11 = measuredWidth2 + i10;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i10, 0), Math.max(i11 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i10 += iMax;
            i11 -= iMax;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i11 - i10, 1073741824), textView.getMeasuredHeightAndState());
        }
        textView.layout(i10, textView.getTop(), i11, textView.getBottom());
    }
}
