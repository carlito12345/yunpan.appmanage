package w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

/* loaded from: classes.dex */
public final class q0 extends Spinner implements x0.e0 {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f17205i = {R.attr.spinnerMode};

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17206a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f17207b;

    /* renamed from: c, reason: collision with root package name */
    public final g0 f17208c;

    /* renamed from: d, reason: collision with root package name */
    public SpinnerAdapter f17209d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f17210e;

    /* renamed from: f, reason: collision with root package name */
    public final p0 f17211f;

    /* renamed from: g, reason: collision with root package name */
    public int f17212g;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f17213h;

    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public q0(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, com.yunpan.appmanage.R.attr.spinnerStyle);
        this.f17213h = new Rect();
        b3.a(this, getContext());
        int[] iArr = p.a.f12534v;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, com.yunpan.appmanage.R.attr.spinnerStyle);
        this.f17206a = new b5.i(this);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        int resourceId = typedArray.getResourceId(4, 0);
        if (resourceId != 0) {
            this.f17207b = new u.d(context, resourceId);
        } else {
            this.f17207b = context;
        }
        int i10 = -1;
        TypedArray typedArray2 = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f17205i, com.yunpan.appmanage.R.attr.spinnerStyle, 0);
            try {
                if (typedArrayObtainStyledAttributes.hasValue(0)) {
                    i10 = typedArrayObtainStyledAttributes.getInt(0, 0);
                }
            } catch (Exception unused) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                if (i10 != 0) {
                }
                textArray = typedArray.getTextArray(0);
                if (textArray != null) {
                }
                aVarJ.r();
                this.f17210e = true;
                spinnerAdapter = this.f17209d;
                if (spinnerAdapter != null) {
                }
                this.f17206a.h(attributeSet, com.yunpan.appmanage.R.attr.spinnerStyle);
            } catch (Throwable th2) {
                th = th2;
                typedArray2 = typedArrayObtainStyledAttributes;
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                throw th;
            }
        } catch (Exception unused2) {
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th3) {
            th = th3;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i10 != 0) {
            k0 k0Var = new k0(this);
            this.f17211f = k0Var;
            k0Var.f17136c = typedArray.getString(2);
        } else if (i10 == 1) {
            n0 n0Var = new n0(this, this.f17207b, attributeSet);
            s4.a aVarJ2 = s4.a.j(this.f17207b, attributeSet, iArr, com.yunpan.appmanage.R.attr.spinnerStyle);
            this.f17212g = ((TypedArray) aVarJ2.f14294c).getLayoutDimension(3, -2);
            n0Var.i(aVarJ2.e(1));
            n0Var.F = typedArray.getString(2);
            aVarJ2.r();
            this.f17211f = n0Var;
            this.f17208c = new g0(this, this, n0Var);
        }
        textArray = typedArray.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter.setDropDownViewResource(com.yunpan.appmanage.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        aVarJ.r();
        this.f17210e = true;
        spinnerAdapter = this.f17209d;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f17209d = null;
        }
        this.f17206a.h(attributeSet, com.yunpan.appmanage.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f17213h;
        drawable.getPadding(rect);
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            iVar.c();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        p0 p0Var = this.f17211f;
        return p0Var != null ? p0Var.a() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        p0 p0Var = this.f17211f;
        return p0Var != null ? p0Var.n() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f17211f != null ? this.f17212g : super.getDropDownWidth();
    }

    public final p0 getInternalPopup() {
        return this.f17211f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        p0 p0Var = this.f17211f;
        return p0Var != null ? p0Var.f() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f17207b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        p0 p0Var = this.f17211f;
        return p0Var != null ? p0Var.e() : super.getPrompt();
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        p0 p0Var = this.f17211f;
        if (p0Var == null || !p0Var.b()) {
            return;
        }
        p0Var.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f17211f == null || View.MeasureSpec.getMode(i10) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        o0 o0Var = (o0) parcelable;
        super.onRestoreInstanceState(o0Var.getSuperState());
        if (!o0Var.f17179a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ua.c2(3, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        o0 o0Var = new o0(super.onSaveInstanceState());
        p0 p0Var = this.f17211f;
        o0Var.f17179a = p0Var != null && p0Var.b();
        return o0Var;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        g0 g0Var = this.f17208c;
        if (g0Var == null || !g0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        p0 p0Var = this.f17211f;
        if (p0Var == null) {
            return super.performClick();
        }
        if (p0Var.b()) {
            return true;
        }
        this.f17211f.l(i0.b(this), i0.a(this));
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i10) {
        p0 p0Var = this.f17211f;
        if (p0Var == null) {
            super.setDropDownHorizontalOffset(i10);
        } else {
            p0Var.k(i10);
            p0Var.d(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i10) {
        p0 p0Var = this.f17211f;
        if (p0Var != null) {
            p0Var.j(i10);
        } else {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i10) {
        if (this.f17211f != null) {
            this.f17212g = i10;
        } else {
            super.setDropDownWidth(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        p0 p0Var = this.f17211f;
        if (p0Var != null) {
            p0Var.i(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(com.bumptech.glide.d.x(getPopupContext(), i10));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        p0 p0Var = this.f17211f;
        if (p0Var != null) {
            p0Var.g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17206a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f17210e) {
            this.f17209d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        p0 p0Var = this.f17211f;
        if (p0Var != null) {
            Context context = this.f17207b;
            if (context == null) {
                context = getContext();
            }
            p0Var.o(new l0(spinnerAdapter, context.getTheme()));
        }
    }
}
