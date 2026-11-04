package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class q extends CheckedTextView implements x0.e0, b1.x {

    /* renamed from: a, reason: collision with root package name */
    public final r f17201a;

    /* renamed from: b, reason: collision with root package name */
    public final b5.i f17202b;

    /* renamed from: c, reason: collision with root package name */
    public final y0 f17203c;

    /* renamed from: d, reason: collision with root package name */
    public v f17204d;

    public q(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(c3.a(context), attributeSet, R.attr.checkedTextViewStyle);
        b3.a(this, getContext());
        y0 y0Var = new y0(this);
        this.f17203c = y0Var;
        y0Var.f(attributeSet, R.attr.checkedTextViewStyle);
        y0Var.b();
        b5.i iVar = new b5.i(this);
        this.f17202b = iVar;
        iVar.h(attributeSet, R.attr.checkedTextViewStyle);
        this.f17201a = new r(this);
        Context context2 = getContext();
        int[] iArr = p.a.l;
        s4.a aVarJ = s4.a.j(context2, attributeSet, iArr, R.attr.checkedTextViewStyle);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        x0.b1.w(this, getContext(), iArr, attributeSet, (TypedArray) aVarJ.f14294c, R.attr.checkedTextViewStyle);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(com.bumptech.glide.d.x(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(com.bumptech.glide.d.x(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                ColorStateList colorStateListD = aVarJ.d(2);
                if (Build.VERSION.SDK_INT >= 21) {
                    a2.d.k(this, colorStateListD);
                } else {
                    setSupportCheckMarkTintList(colorStateListD);
                }
            }
            if (typedArray.hasValue(3)) {
                PorterDuff.Mode modeB = n1.b(typedArray.getInt(3, -1), null);
                if (Build.VERSION.SDK_INT >= 21) {
                    a2.d.l(this, modeB);
                } else {
                    setSupportCheckMarkTintMode(modeB);
                }
            }
            aVarJ.r();
            getEmojiTextViewHelper().a(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th2) {
            aVarJ.r();
            throw th2;
        }
    }

    private v getEmojiTextViewHelper() {
        if (this.f17204d == null) {
            this.f17204d = new v(this);
        }
        return this.f17204d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        y0 y0Var = this.f17203c;
        if (y0Var != null) {
            y0Var.b();
        }
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            iVar.c();
        }
        r rVar = this.f17201a;
        if (rVar != null) {
            rVar.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return d.b.w0(super.getCustomSelectionActionModeCallback());
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        r rVar = this.f17201a;
        if (rVar != null) {
            return rVar.f17226a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        r rVar = this.f17201a;
        if (rVar != null) {
            return rVar.f17227b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17203c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17203c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        nh.b.e0(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        r rVar = this.f17201a;
        if (rVar != null) {
            if (rVar.f17230e) {
                rVar.f17230e = false;
            } else {
                rVar.f17230e = true;
                rVar.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17203c;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17203c;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17202b;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        r rVar = this.f17201a;
        if (rVar != null) {
            rVar.f17226a = colorStateList;
            rVar.f17228c = true;
            rVar.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        r rVar = this.f17201a;
        if (rVar != null) {
            rVar.f17227b = mode;
            rVar.f17229d = true;
            rVar.b();
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17203c;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17203c;
        y0Var.m(mode);
        y0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y0 y0Var = this.f17203c;
        if (y0Var != null) {
            y0Var.g(context, i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i10) {
        setCheckMarkDrawable(com.bumptech.glide.d.x(getContext(), i10));
    }
}
