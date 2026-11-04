package w;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class o extends Button implements x0.e0, b1.x {

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17176a;

    /* renamed from: b, reason: collision with root package name */
    public final y0 f17177b;

    /* renamed from: c, reason: collision with root package name */
    public v f17178c;

    public o(Context context, AttributeSet attributeSet, int i10) {
        super(c3.a(context), attributeSet, i10);
        b3.a(this, getContext());
        b5.i iVar = new b5.i(this);
        this.f17176a = iVar;
        iVar.h(attributeSet, i10);
        y0 y0Var = new y0(this);
        this.f17177b = y0Var;
        y0Var.f(attributeSet, i10);
        y0Var.b();
        getEmojiTextViewHelper().a(attributeSet, i10);
    }

    private v getEmojiTextViewHelper() {
        if (this.f17178c == null) {
            this.f17178c = new v(this);
        }
        return this.f17178c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            iVar.c();
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (u3.f17279b) {
            return super.getAutoSizeMaxTextSize();
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            return Math.round(y0Var.f17312i.f17098e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (u3.f17279b) {
            return super.getAutoSizeMinTextSize();
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            return Math.round(y0Var.f17312i.f17097d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (u3.f17279b) {
            return super.getAutoSizeStepGranularity();
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            return Math.round(y0Var.f17312i.f17096c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (u3.f17279b) {
            return super.getAutoSizeTextAvailableSizes();
        }
        y0 y0Var = this.f17177b;
        return y0Var != null ? y0Var.f17312i.f17099f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (u3.f17279b) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            return y0Var.f17312i.f17094a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return d.b.w0(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17177b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17177b.e();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        y0 y0Var = this.f17177b;
        if (y0Var == null || u3.f17279b) {
            return;
        }
        y0Var.f17312i.a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        y0 y0Var = this.f17177b;
        if (y0Var == null || u3.f17279b) {
            return;
        }
        i1 i1Var = y0Var.f17312i;
        if (i1Var.f()) {
            i1Var.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().b(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) {
        if (u3.f17279b) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
            return;
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            y0Var.i(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) {
        if (u3.f17279b) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
            return;
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            y0Var.j(iArr, i10);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (u3.f17279b) {
            super.setAutoSizeTextTypeWithDefaults(i10);
            return;
        }
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            y0Var.k(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((ha.l2) getEmojiTextViewHelper().f17281b.f6611b).H(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z) {
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            y0Var.f17304a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17176a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17177b;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17177b;
        y0Var.m(mode);
        y0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y0 y0Var = this.f17177b;
        if (y0Var != null) {
            y0Var.g(context, i10);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i10, float f10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = u3.f17279b;
        if (z) {
            super.setTextSize(i10, f10);
            return;
        }
        y0 y0Var = this.f17177b;
        if (y0Var == null || z) {
            return;
        }
        i1 i1Var = y0Var.f17312i;
        if (i1Var.f()) {
            return;
        }
        i1Var.g(f10, i10);
    }
}
