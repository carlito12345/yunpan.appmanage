package w;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class b1 extends TextView implements x0.e0, b1.x {

    /* renamed from: a, reason: collision with root package name */
    public final b5.i f17023a;

    /* renamed from: b, reason: collision with root package name */
    public final y0 f17024b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f17025c;

    /* renamed from: d, reason: collision with root package name */
    public v f17026d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17027e;

    /* renamed from: f, reason: collision with root package name */
    public i f17028f;

    /* renamed from: g, reason: collision with root package name */
    public Future f17029g;

    public b1(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private v getEmojiTextViewHelper() {
        if (this.f17026d == null) {
            this.f17026d = new v(this);
        }
        return this.f17026d;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            iVar.c();
        }
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    public final void f() {
        Future future = this.f17029g;
        if (future == null) {
            return;
        }
        try {
            this.f17029g = null;
            if (future.get() != null) {
                throw new ClassCastException();
            }
            if (Build.VERSION.SDK_INT >= 29) {
                throw null;
            }
            d.b.I(this);
            throw null;
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (u3.f17279b) {
            return super.getAutoSizeMaxTextSize();
        }
        y0 y0Var = this.f17024b;
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
        y0 y0Var = this.f17024b;
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
        y0 y0Var = this.f17024b;
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
        y0 y0Var = this.f17024b;
        return y0Var != null ? y0Var.f17312i.f17099f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (u3.f17279b) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            return y0Var.f17312i.f17094a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return d.b.w0(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public z0 getSuperCaller() {
        if (this.f17028f == null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28) {
                this.f17028f = new a1(this);
            } else if (i10 >= 26) {
                this.f17028f = new i(2, this);
            }
        }
        return this.f17028f;
    }

    @Override // x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Override // x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f17024b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f17024b.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        f();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f17025c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) b0Var.f17022c;
        return textClassifier == null ? r0.a((TextView) b0Var.f17021b) : textClassifier;
    }

    public v0.f getTextMetricsParamsCompat() {
        return d.b.I(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f17024b.getClass();
        y0.h(editorInfo, inputConnectionOnCreateInputConnection, this);
        nh.b.e0(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        y0 y0Var = this.f17024b;
        if (y0Var == null || u3.f17279b) {
            return;
        }
        y0Var.f17312i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        f();
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        y0 y0Var = this.f17024b;
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
        y0 y0Var = this.f17024b;
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
        y0 y0Var = this.f17024b;
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
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.k(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            iVar.i();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            iVar.j(i10);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        y0 y0Var = this.f17024b;
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

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((ha.l2) getEmojiTextViewHelper().f17281b.f6611b).H(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().j(i10);
        } else {
            d.b.m0(this, i10);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().g(i10);
        } else {
            d.b.n0(this, i10);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i10) {
        s1.g.k(i10);
        if (i10 != getPaint().getFontMetricsInt(null)) {
            setLineSpacing(i10 - r0, 1.0f);
        }
    }

    public void setPrecomputedText(v0.g gVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        d.b.I(this);
        throw null;
    }

    @Override // x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            iVar.o(colorStateList);
        }
    }

    @Override // x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        b5.i iVar = this.f17023a;
        if (iVar != null) {
            iVar.p(mode);
        }
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        y0 y0Var = this.f17024b;
        y0Var.l(colorStateList);
        y0Var.b();
    }

    @Override // b1.x
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        y0 y0Var = this.f17024b;
        y0Var.m(mode);
        y0Var.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.g(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f17025c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            b0Var.f17022c = textClassifier;
        }
    }

    public void setTextFuture(Future<v0.g> future) {
        this.f17029g = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(v0.f fVar) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 18) {
            TextDirectionHeuristic textDirectionHeuristic = fVar.f16314b;
            int i11 = 1;
            if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_RTL && textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                    i11 = 2;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                    i11 = 3;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                    i11 = 4;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                    i11 = 5;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                    i11 = 6;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                    i11 = 7;
                }
            }
            b1.q.h(this, i11);
        }
        if (i10 >= 23) {
            getPaint().set(fVar.f16313a);
            b1.r.e(this, fVar.f16315c);
            b1.r.h(this, fVar.f16316d);
        } else {
            float textScaleX = fVar.f16313a.getTextScaleX();
            getPaint().set(fVar.f16313a);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i10, float f10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z = u3.f17279b;
        if (z) {
            super.setTextSize(i10, f10);
            return;
        }
        y0 y0Var = this.f17024b;
        if (y0Var == null || z) {
            return;
        }
        i1 i1Var = y0Var.f17312i;
        if (i1Var.f()) {
            return;
        }
        i1Var.g(f10, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    @Override // android.widget.TextView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void setTypeface(Typeface typeface, int i10) throws NoSuchFieldException, SecurityException {
        if (this.f17027e) {
            return;
        }
        if (typeface != null && i10 > 0) {
            Context context = getContext();
            l5.y yVar = p0.g.f12547a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            if (Build.VERSION.SDK_INT < 21) {
                l5.y yVar2 = p0.g.f12547a;
                yVar2.getClass();
                long jG = l5.y.G(typeface);
                o0.f fVar = jG == 0 ? null : (o0.f) ((ConcurrentHashMap) yVar2.f10629b).get(Long.valueOf(jG));
                typefaceCreate = fVar != null ? yVar2.u(context, fVar, context.getResources(), i10) : null;
                if (typefaceCreate == null) {
                    typefaceCreate = Typeface.create(typeface, i10);
                }
            }
        }
        this.f17027e = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i10);
        } finally {
            this.f17027e = false;
        }
    }

    public b1(Context context, AttributeSet attributeSet, int i10) {
        super(c3.a(context), attributeSet, i10);
        this.f17027e = false;
        this.f17028f = null;
        b3.a(this, getContext());
        b5.i iVar = new b5.i(this);
        this.f17023a = iVar;
        iVar.h(attributeSet, i10);
        y0 y0Var = new y0(this);
        this.f17024b = y0Var;
        y0Var.f(attributeSet, i10);
        y0Var.b();
        this.f17025c = new b0(2, this);
        getEmojiTextViewHelper().a(attributeSet, i10);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i10 != 0 ? com.bumptech.glide.d.x(context, i10) : null, i11 != 0 ? com.bumptech.glide.d.x(context, i11) : null, i12 != 0 ? com.bumptech.glide.d.x(context, i12) : null, i13 != 0 ? com.bumptech.glide.d.x(context, i13) : null);
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i10 != 0 ? com.bumptech.glide.d.x(context, i10) : null, i11 != 0 ? com.bumptech.glide.d.x(context, i11) : null, i12 != 0 ? com.bumptech.glide.d.x(context, i12) : null, i13 != 0 ? com.bumptech.glide.d.x(context, i13) : null);
        y0 y0Var = this.f17024b;
        if (y0Var != null) {
            y0Var.b();
        }
    }
}
