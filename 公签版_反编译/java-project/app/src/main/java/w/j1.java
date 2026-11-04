package w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* loaded from: classes.dex */
public final class j1 extends ToggleButton implements x0.e0, b1.x {

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17129a;

    /* renamed from: b, reason: collision with root package name */
    public final y0 f17130b;

    /* renamed from: c, reason: collision with root package name */
    public v f17131c;

    public j1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        b3.a(this, getContext());
        b5.i iVar = new b5.i(this);
        this.f17129a = iVar;
        iVar.h(attributeSet, R.attr.buttonStyleToggle);
        y0 y0Var = new y0(this);
        this.f17130b = y0Var;
        y0Var.f(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().a(attributeSet, R.attr.buttonStyleToggle);
    }

    private v getEmojiTextViewHelper() {
        if (this.f17131c == null) {
            this.f17131c = new v(this);
        }
        return this.f17131c;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            iVar.c();
        }
        y0 y0Var = this.f17130b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17130b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17130b.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17130b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17130b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((ha.l2) getEmojiTextViewHelper().f17281b.f6611b).H(inputFilterArr));
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17129a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17130b;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17130b;
        y0Var.m(mode);
        y0Var.b();
    }
}
