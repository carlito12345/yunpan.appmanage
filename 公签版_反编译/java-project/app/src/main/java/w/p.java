package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;

/* loaded from: classes.dex */
public class p extends CheckBox implements b1.w, x0.e0, b1.x {

    /* renamed from: a, reason: collision with root package name */
    public final r f17181a;

    /* renamed from: b, reason: collision with root package name */
    public final b5.i f17182b;

    /* renamed from: c, reason: collision with root package name */
    public final y0 f17183c;

    /* renamed from: d, reason: collision with root package name */
    public v f17184d;

    public p(Context context, AttributeSet attributeSet, int i10) {
        super(c3.a(context), attributeSet, i10);
        b3.a(this, getContext());
        r rVar = new r(this);
        this.f17181a = rVar;
        rVar.c(attributeSet, i10);
        b5.i iVar = new b5.i(this);
        this.f17182b = iVar;
        iVar.h(attributeSet, i10);
        y0 y0Var = new y0(this);
        this.f17183c = y0Var;
        y0Var.f(attributeSet, i10);
        getEmojiTextViewHelper().a(attributeSet, i10);
    }

    private v getEmojiTextViewHelper() {
        if (this.f17184d == null) {
            this.f17184d = new v(this);
        }
        return this.f17184d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            iVar.c();
        }
        y0 y0Var = this.f17183c;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        r rVar = this.f17181a;
        if (rVar != null) {
            rVar.getClass();
        }
        return compoundPaddingLeft;
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    @Override // b1.w
    public ColorStateList getSupportButtonTintList() {
        r rVar = this.f17181a;
        if (rVar != null) {
            return rVar.f17226a;
        }
        return null;
    }

    @Override // b1.w
    public PorterDuff.Mode getSupportButtonTintMode() {
        r rVar = this.f17181a;
        if (rVar != null) {
            return rVar.f17227b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17183c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17183c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        r rVar = this.f17181a;
        if (rVar != null) {
            if (rVar.f17230e) {
                rVar.f17230e = false;
            } else {
                rVar.f17230e = true;
                rVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17183c;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17183c;
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
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17182b;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.w
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        r rVar = this.f17181a;
        if (rVar != null) {
            rVar.f17226a = colorStateList;
            rVar.f17228c = true;
            rVar.a();
        }
    }

    @Override // b1.w
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        r rVar = this.f17181a;
        if (rVar != null) {
            rVar.f17227b = mode;
            rVar.f17229d = true;
            rVar.a();
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17183c;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17183c;
        y0Var.m(mode);
        y0Var.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(com.bumptech.glide.d.x(getContext(), i10));
    }
}
