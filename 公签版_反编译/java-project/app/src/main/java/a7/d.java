package a7;

import a2.h;
import a2.t0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import com.yunpan.appmanage.R;
import g7.l;
import h4.q;
import i4.e;
import i4.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l2.z;
import o0.o;
import org.xmlpull.v1.XmlPullParserException;
import w.p;

/* loaded from: classes.dex */
public final class d extends p {
    public static final int[] A = {R.attr.state_indeterminate};
    public static final int[] B = {R.attr.state_error};
    public static final int[][] C = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public static final int D = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f453e;

    /* renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f454f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f455g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f456h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f457i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f458j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f459k;
    public Drawable l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f460m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f461n;

    /* renamed from: p, reason: collision with root package name */
    public ColorStateList f462p;

    /* renamed from: q, reason: collision with root package name */
    public ColorStateList f463q;
    public PorterDuff.Mode r;

    /* renamed from: s, reason: collision with root package name */
    public int f464s;

    /* renamed from: t, reason: collision with root package name */
    public int[] f465t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f466v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f467w;

    /* renamed from: x, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f468x;

    /* renamed from: y, reason: collision with root package name */
    public final f f469y;
    public final a z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, AttributeSet attributeSet) throws XmlPullParserException, Resources.NotFoundException, IOException {
        f fVar;
        int next;
        super(s7.a.a(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        int i10 = 3;
        this.f453e = new LinkedHashSet();
        this.f454f = new LinkedHashSet();
        Context context2 = getContext();
        if (Build.VERSION.SDK_INT >= 24) {
            fVar = new f(context2);
            Drawable drawableB = o.b(context2.getResources(), R.drawable.mtrl_checkbox_button_checked_unchecked, context2.getTheme());
            fVar.f8543a = drawableB;
            drawableB.setCallback(fVar.f8537g);
            new e(0, fVar.f8543a.getConstantState());
        } else {
            int i11 = f.f8531h;
            try {
                XmlResourceParser xml = context2.getResources().getXml(R.drawable.mtrl_checkbox_button_checked_unchecked);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                Resources resources = context2.getResources();
                Resources.Theme theme = context2.getTheme();
                f fVar2 = new f(context2);
                fVar2.inflate(resources, xml, attributeSetAsAttributeSet, theme);
                fVar = fVar2;
            } catch (IOException | XmlPullParserException unused) {
                fVar = null;
            }
        }
        this.f469y = fVar;
        this.z = new a(this);
        Context context3 = getContext();
        this.l = android.support.v4.media.session.b.i(this);
        this.f462p = getSuperButtonTintList();
        setSupportButtonTintList(null);
        int[] iArr = q6.a.f13043o;
        l.a(context3, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        l.b(context3, attributeSet, iArr, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context3.obtainStyledAttributes(attributeSet, iArr, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        s4.a aVar = new s4.a(context3, typedArrayObtainStyledAttributes);
        this.f460m = aVar.e(2);
        if (this.l != null && android.support.v4.media.session.b.E(context3, R.attr.isMaterial3Theme, false)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            if (Build.VERSION.SDK_INT >= 21 ? !(resourceId != D || resourceId2 != 0) : !(resourceId != R.drawable.abc_btn_check_material || resourceId2 != R.drawable.abc_btn_check_material_anim)) {
                super.setButtonDrawable((Drawable) null);
                this.l = com.bumptech.glide.d.x(context3, R.drawable.mtrl_checkbox_button);
                this.f461n = true;
                if (this.f460m == null) {
                    this.f460m = com.bumptech.glide.d.x(context3, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.f463q = com.bumptech.glide.c.x(context3, aVar, 3);
        this.r = l.h(typedArrayObtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.f456h = typedArrayObtainStyledAttributes.getBoolean(10, false);
        this.f457i = typedArrayObtainStyledAttributes.getBoolean(6, true);
        this.f458j = typedArrayObtainStyledAttributes.getBoolean(9, false);
        this.f459k = typedArrayObtainStyledAttributes.getText(8);
        if (typedArrayObtainStyledAttributes.hasValue(7)) {
            setCheckedState(typedArrayObtainStyledAttributes.getInt(7, 0));
        }
        aVar.r();
        a();
        if (Build.VERSION.SDK_INT >= 21 || this.f460m == null) {
            return;
        }
        post(new h(i10, this));
    }

    private String getButtonStateDescription() {
        int i10 = this.f464s;
        return i10 == 1 ? getResources().getString(R.string.mtrl_checkbox_state_description_checked) : i10 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f455g == null) {
            int iS = com.bumptech.glide.d.s(R.attr.colorControlActivated, this);
            int iS2 = com.bumptech.glide.d.s(R.attr.colorError, this);
            int iS3 = com.bumptech.glide.d.s(R.attr.colorSurface, this);
            int iS4 = com.bumptech.glide.d.s(R.attr.colorOnSurface, this);
            this.f455g = new ColorStateList(C, new int[]{com.bumptech.glide.d.K(iS3, 1.0f, iS2), com.bumptech.glide.d.K(iS3, 1.0f, iS), com.bumptech.glide.d.K(iS3, 0.54f, iS4), com.bumptech.glide.d.K(iS3, 0.38f, iS4), com.bumptech.glide.d.K(iS3, 0.38f, iS4)});
        }
        return this.f455g;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f462p;
        return colorStateList != null ? colorStateList : (Build.VERSION.SDK_INT < 21 || super.getButtonTintList() == null) ? getSupportButtonTintList() : super.getButtonTintList();
    }

    public final void a() {
        LayerDrawable layerDrawable;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        q qVar;
        Drawable drawable = this.l;
        ColorStateList colorStateList3 = this.f462p;
        int i10 = Build.VERSION.SDK_INT;
        this.l = d.b.n(drawable, colorStateList3, i10 >= 21 ? b1.b.b(this) : getSupportButtonTintMode());
        this.f460m = d.b.n(this.f460m, this.f463q, this.r);
        if (this.f461n) {
            f fVar = this.f469y;
            if (fVar != null) {
                Drawable drawable2 = fVar.f8543a;
                a aVar = this.z;
                if (drawable2 != null) {
                    AnimatedVectorDrawable animatedVectorDrawableI = g7.d.i(drawable2);
                    if (aVar.f449a == null) {
                        aVar.f449a = new i4.b(aVar);
                    }
                    animatedVectorDrawableI.unregisterAnimationCallback(aVar.f449a);
                }
                ArrayList arrayList = fVar.f8536f;
                i4.d dVar = fVar.f8532b;
                if (arrayList != null && aVar != null) {
                    arrayList.remove(aVar);
                    if (fVar.f8536f.size() == 0 && (qVar = fVar.f8535e) != null) {
                        dVar.f8526b.removeListener(qVar);
                        fVar.f8535e = null;
                    }
                }
                Drawable drawable3 = fVar.f8543a;
                if (drawable3 != null) {
                    AnimatedVectorDrawable animatedVectorDrawableI2 = g7.d.i(drawable3);
                    if (aVar.f449a == null) {
                        aVar.f449a = new i4.b(aVar);
                    }
                    animatedVectorDrawableI2.registerAnimationCallback(aVar.f449a);
                } else if (aVar != null) {
                    if (fVar.f8536f == null) {
                        fVar.f8536f = new ArrayList();
                    }
                    if (!fVar.f8536f.contains(aVar)) {
                        fVar.f8536f.add(aVar);
                        if (fVar.f8535e == null) {
                            fVar.f8535e = new q(1, fVar);
                        }
                        dVar.f8526b.addListener(fVar.f8535e);
                    }
                }
            }
            if (i10 >= 24 && t0.w(this.l) && fVar != null) {
                t0.d(this.l).addTransition(R.id.checked, R.id.unchecked, fVar, false);
                t0.d(this.l).addTransition(R.id.indeterminate, R.id.unchecked, fVar, false);
            }
        }
        Drawable drawable4 = this.l;
        if (drawable4 != null && (colorStateList2 = this.f462p) != null) {
            com.bumptech.glide.c.f0(drawable4, colorStateList2);
        }
        Drawable drawable5 = this.f460m;
        if (drawable5 != null && (colorStateList = this.f463q) != null) {
            com.bumptech.glide.c.f0(drawable5, colorStateList);
        }
        Drawable drawable6 = this.l;
        Drawable drawable7 = this.f460m;
        if (drawable6 == null) {
            drawable6 = drawable7;
        } else if (drawable7 != null) {
            int intrinsicWidth = drawable7.getIntrinsicWidth();
            if (intrinsicWidth == -1) {
                intrinsicWidth = drawable6.getIntrinsicWidth();
            }
            int intrinsicHeight = drawable7.getIntrinsicHeight();
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable6.getIntrinsicHeight();
            }
            if (intrinsicWidth > drawable6.getIntrinsicWidth() || intrinsicHeight > drawable6.getIntrinsicHeight()) {
                float f10 = intrinsicWidth / intrinsicHeight;
                if (f10 >= drawable6.getIntrinsicWidth() / drawable6.getIntrinsicHeight()) {
                    int intrinsicWidth2 = drawable6.getIntrinsicWidth();
                    intrinsicHeight = (int) (intrinsicWidth2 / f10);
                    intrinsicWidth = intrinsicWidth2;
                } else {
                    intrinsicHeight = drawable6.getIntrinsicHeight();
                    intrinsicWidth = (int) (f10 * intrinsicHeight);
                }
            }
            if (i10 >= 23) {
                layerDrawable = new LayerDrawable(new Drawable[]{drawable6, drawable7});
                layerDrawable.setLayerSize(1, intrinsicWidth, intrinsicHeight);
                layerDrawable.setLayerGravity(1, 17);
            } else {
                layerDrawable = new LayerDrawable(new Drawable[]{drawable6, drawable7});
                int iMax = Math.max((drawable6.getIntrinsicWidth() - intrinsicWidth) / 2, 0);
                int iMax2 = Math.max((drawable6.getIntrinsicHeight() - intrinsicHeight) / 2, 0);
                layerDrawable.setLayerInset(1, iMax, iMax2, iMax, iMax2);
            }
            drawable6 = layerDrawable;
        }
        super.setButtonDrawable(drawable6);
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.l;
    }

    public Drawable getButtonIconDrawable() {
        return this.f460m;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f463q;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.r;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.f462p;
    }

    public int getCheckedState() {
        return this.f464s;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.f459k;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f464s == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f456h && this.f462p == null && this.f463q == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrCopyOf;
        Drawable drawable;
        ColorStateList colorStateList;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        if (this.f458j) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, B);
        }
        int i11 = 0;
        while (true) {
            if (i11 >= iArrOnCreateDrawableState.length) {
                iArrCopyOf = Arrays.copyOf(iArrOnCreateDrawableState, iArrOnCreateDrawableState.length + 1);
                iArrCopyOf[iArrOnCreateDrawableState.length] = 16842912;
                break;
            }
            int i12 = iArrOnCreateDrawableState[i11];
            if (i12 == 16842912) {
                iArrCopyOf = iArrOnCreateDrawableState;
                break;
            }
            if (i12 == 0) {
                iArrCopyOf = (int[]) iArrOnCreateDrawableState.clone();
                iArrCopyOf[i11] = 16842912;
                break;
            }
            i11++;
        }
        this.f465t = iArrCopyOf;
        if (Build.VERSION.SDK_INT < 21 && (drawable = this.f460m) != null && (colorStateList = this.f463q) != null) {
            drawable.setColorFilter(d.b.x0(drawable, colorStateList, this.r));
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawableI;
        if (!this.f457i || !TextUtils.isEmpty(getText()) || (drawableI = android.support.v4.media.session.b.i(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableI.getIntrinsicWidth()) / 2) * (l.f(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableI.getBounds();
            com.bumptech.glide.c.c0(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f458j) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f459k));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        setCheckedState(cVar.f452a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f452a = getCheckedState();
        return cVar;
    }

    @Override // w.p, android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(com.bumptech.glide.d.x(getContext(), i10));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.f460m = drawable;
        a();
    }

    public void setButtonIconDrawableResource(int i10) {
        setButtonIconDrawable(com.bumptech.glide.d.x(getContext(), i10));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f463q == colorStateList) {
            return;
        }
        this.f463q = colorStateList;
        a();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.r == mode) {
            return;
        }
        this.r = mode;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.f462p == colorStateList) {
            return;
        }
        this.f462p = colorStateList;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        a();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.f457i = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i10) {
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f464s != i10) {
            this.f464s = i10;
            super.setChecked(i10 == 1);
            refreshDrawableState();
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 30 && this.f467w == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f466v) {
                return;
            }
            this.f466v = true;
            LinkedHashSet linkedHashSet = this.f454f;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw z.d(it);
                }
            }
            if (this.f464s != 2 && (onCheckedChangeListener = this.f468x) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i11 >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f466v = false;
            if (i11 >= 21 || this.f460m == null) {
                return;
            }
            refreshDrawableState();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        Drawable drawable;
        ColorStateList colorStateList;
        super.setEnabled(z);
        if (Build.VERSION.SDK_INT >= 21 || (drawable = this.f460m) == null || (colorStateList = this.f463q) == null) {
            return;
        }
        drawable.setColorFilter(d.b.x0(drawable, colorStateList, this.r));
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.f459k = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i10) {
        setErrorAccessibilityLabel(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setErrorShown(boolean z) {
        Drawable drawable;
        if (this.f458j == z) {
            return;
        }
        this.f458j = z;
        refreshDrawableState();
        if (Build.VERSION.SDK_INT < 21 && (drawable = this.f460m) != null) {
            drawable.jumpToCurrentState();
        }
        Iterator it = this.f453e.iterator();
        if (it.hasNext()) {
            g.b.t(it.next());
            throw null;
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f468x = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.f467w = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f456h = z;
        if (z) {
            android.support.v4.media.session.b.G(this, getMaterialThemeColorsTintList());
        } else {
            android.support.v4.media.session.b.G(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // w.p, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.l = drawable;
        this.f461n = false;
        a();
    }
}
