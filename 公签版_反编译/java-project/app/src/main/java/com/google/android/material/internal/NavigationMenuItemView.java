package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bumptech.glide.c;
import com.google.android.material.datepicker.i;
import d.b;
import g7.e;
import java.util.WeakHashMap;
import o0.o;
import q4.a;
import v.m;
import v.y;
import w.y1;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public class NavigationMenuItemView extends e implements y {
    public static final int[] I = {R.attr.state_checked};
    public final boolean A;
    public final CheckedTextView B;
    public FrameLayout C;
    public m D;
    public ColorStateList E;
    public boolean F;
    public Drawable G;
    public final i H;

    /* renamed from: x, reason: collision with root package name */
    public int f3619x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f3620y;
    public boolean z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A = true;
        i iVar = new i(2, this);
        this.H = iVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.yunpan.appmanage.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.yunpan.appmanage.R.id.design_menu_item_text);
        this.B = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        b1.x(checkedTextView, iVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.C == null) {
                this.C = (FrameLayout) ((ViewStub) findViewById(com.yunpan.appmanage.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.C.removeAllViews();
            this.C.addView(view);
        }
    }

    @Override // v.y
    public final void c(m mVar) {
        StateListDrawable stateListDrawable;
        this.D = mVar;
        int i10 = mVar.f16257a;
        if (i10 > 0) {
            setId(i10);
        }
        setVisibility(mVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.yunpan.appmanage.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(I, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = b1.f17953a;
            j0.q(this, stateListDrawable);
        }
        setCheckable(mVar.isCheckable());
        setChecked(mVar.isChecked());
        setEnabled(mVar.isEnabled());
        setTitle(mVar.f16261e);
        setIcon(mVar.getIcon());
        setActionView(mVar.getActionView());
        setContentDescription(mVar.r);
        a.a0(this, mVar.f16272s);
        m mVar2 = this.D;
        CharSequence charSequence = mVar2.f16261e;
        CheckedTextView checkedTextView = this.B;
        if (charSequence == null && mVar2.getIcon() == null && this.D.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.C;
            if (frameLayout != null) {
                y1 y1Var = (y1) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) y1Var).width = -1;
                this.C.setLayoutParams(y1Var);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.C;
        if (frameLayout2 != null) {
            y1 y1Var2 = (y1) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) y1Var2).width = -2;
            this.C.setLayoutParams(y1Var2);
        }
    }

    @Override // v.y
    public m getItemData() {
        return this.D;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        m mVar = this.D;
        if (mVar != null && mVar.isCheckable() && this.D.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, I);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.z != z) {
            this.z = z;
            this.H.h(this.B, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.B;
        checkedTextView.setChecked(z);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z && this.A) ? 1 : 0);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, getPaddingTop(), i10, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.F) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = c.n0(drawable).mutate();
                c.f0(drawable, this.E);
            }
            int i10 = this.f3619x;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.f3620y) {
            if (this.G == null) {
                Drawable drawableB = o.b(getResources(), com.yunpan.appmanage.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.G = drawableB;
                if (drawableB != null) {
                    int i11 = this.f3619x;
                    drawableB.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.G;
        }
        b.l0(this.B, drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.B.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(int i10) {
        this.f3619x = i10;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.E = colorStateList;
        this.F = colorStateList != null;
        m mVar = this.D;
        if (mVar != null) {
            setIcon(mVar.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.B.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f3620y = z;
    }

    public void setTextAppearance(int i10) {
        b.o0(this.B, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.B.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.B.setText(charSequence);
    }
}
