package w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
public class n extends AutoCompleteTextView implements x0.e0, b1.x {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f17156d = {R.attr.popupBackground};

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17157a;

    /* renamed from: b, reason: collision with root package name */
    public final y0 f17158b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f17159c;

    public n(Context context, AttributeSet attributeSet) {
        super(c3.a(context), attributeSet, com.yunpan.appmanage.R.attr.autoCompleteTextViewStyle);
        b3.a(this, getContext());
        s4.a aVarJ = s4.a.j(getContext(), attributeSet, f17156d, com.yunpan.appmanage.R.attr.autoCompleteTextViewStyle);
        if (((TypedArray) aVarJ.f14294c).hasValue(0)) {
            setDropDownBackgroundDrawable(aVarJ.e(0));
        }
        aVarJ.r();
        b5.i iVar = new b5.i(this);
        this.f17157a = iVar;
        iVar.h(attributeSet, com.yunpan.appmanage.R.attr.autoCompleteTextViewStyle);
        y0 y0Var = new y0(this);
        this.f17158b = y0Var;
        y0Var.f(attributeSet, com.yunpan.appmanage.R.attr.autoCompleteTextViewStyle);
        y0Var.b();
        b0 b0Var = new b0(this);
        this.f17159c = b0Var;
        b0Var.b(attributeSet, com.yunpan.appmanage.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerA = b0Var.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            iVar.c();
        }
        y0 y0Var = this.f17158b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return d.b.w0(super.getCustomSelectionActionModeCallback());
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17158b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17158b.e();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        nh.b.e0(editorInfo, inputConnectionOnCreateInputConnection, this);
        h5.m mVar = (h5.m) this.f17159c.f17022c;
        if (inputConnectionOnCreateInputConnection != null) {
            return ((ha.j2) mVar.f6611b).j(inputConnectionOnCreateInputConnection, editorInfo);
        }
        mVar.getClass();
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17158b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17158b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i10) {
        setDropDownBackgroundDrawable(com.bumptech.glide.d.x(getContext(), i10));
    }

    public void setEmojiCompatEnabled(boolean z) {
        ((ha.j2) ((h5.m) this.f17159c.f17022c).f6611b).O(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f17159c.a(keyListener));
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17157a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17158b;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17158b;
        y0Var.m(mode);
        y0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y0 y0Var = this.f17158b;
        if (y0Var != null) {
            y0Var.g(context, i10);
        }
    }
}
