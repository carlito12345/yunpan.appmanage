package q7;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import w.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class p extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f13091a;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f13092b;

    /* renamed from: c, reason: collision with root package name */
    public final CheckableImageButton f13093c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f13094d;

    /* renamed from: e, reason: collision with root package name */
    public PorterDuff.Mode f13095e;

    /* renamed from: f, reason: collision with root package name */
    public View.OnLongClickListener f13096f;

    /* renamed from: g, reason: collision with root package name */
    public final CheckableImageButton f13097g;

    /* renamed from: h, reason: collision with root package name */
    public final a9.a f13098h;

    /* renamed from: i, reason: collision with root package name */
    public int f13099i;

    /* renamed from: j, reason: collision with root package name */
    public final LinkedHashSet f13100j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f13101k;
    public PorterDuff.Mode l;

    /* renamed from: m, reason: collision with root package name */
    public int f13102m;

    /* renamed from: n, reason: collision with root package name */
    public ImageView.ScaleType f13103n;

    /* renamed from: p, reason: collision with root package name */
    public View.OnLongClickListener f13104p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f13105q;
    public final b1 r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13106s;

    /* renamed from: t, reason: collision with root package name */
    public EditText f13107t;

    /* renamed from: v, reason: collision with root package name */
    public final AccessibilityManager f13108v;

    /* renamed from: w, reason: collision with root package name */
    public y0.d f13109w;

    /* renamed from: x, reason: collision with root package name */
    public final m f13110x;

    public p(TextInputLayout textInputLayout, s4.a aVar) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f13099i = 0;
        this.f13100j = new LinkedHashSet();
        this.f13110x = new m(this);
        n nVar = new n(this);
        this.f13108v = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f13091a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f13092b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonA = a(this, layoutInflaterFrom, R.id.text_input_error_icon);
        this.f13093c = checkableImageButtonA;
        CheckableImageButton checkableImageButtonA2 = a(frameLayout, layoutInflaterFrom, R.id.text_input_end_icon);
        this.f13097g = checkableImageButtonA2;
        this.f13098h = new a9.a(this, aVar);
        b1 b1Var = new b1(getContext(), null);
        this.r = b1Var;
        TypedArray typedArray = (TypedArray) aVar.f14294c;
        if (typedArray.hasValue(38)) {
            this.f13094d = com.bumptech.glide.c.x(getContext(), aVar, 38);
        }
        if (typedArray.hasValue(39)) {
            this.f13095e = g7.l.h(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            i(aVar.e(37));
        }
        checkableImageButtonA.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        x0.b1.B(checkableImageButtonA, 2);
        checkableImageButtonA.setClickable(false);
        checkableImageButtonA.setPressable(false);
        checkableImageButtonA.setFocusable(false);
        if (!typedArray.hasValue(53)) {
            if (typedArray.hasValue(32)) {
                this.f13101k = com.bumptech.glide.c.x(getContext(), aVar, 32);
            }
            if (typedArray.hasValue(33)) {
                this.l = g7.l.h(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            g(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && checkableImageButtonA2.getContentDescription() != (text = typedArray.getText(27))) {
                checkableImageButtonA2.setContentDescription(text);
            }
            checkableImageButtonA2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(53)) {
            if (typedArray.hasValue(54)) {
                this.f13101k = com.bumptech.glide.c.x(getContext(), aVar, 54);
            }
            if (typedArray.hasValue(55)) {
                this.l = g7.l.h(typedArray.getInt(55, -1), null);
            }
            g(typedArray.getBoolean(53, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(51);
            if (checkableImageButtonA2.getContentDescription() != text2) {
                checkableImageButtonA2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f13102m) {
            this.f13102m = dimensionPixelSize;
            checkableImageButtonA2.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA2.setMinimumHeight(dimensionPixelSize);
            checkableImageButtonA.setMinimumWidth(dimensionPixelSize);
            checkableImageButtonA.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType scaleTypeM = nh.b.m(typedArray.getInt(31, -1));
            this.f13103n = scaleTypeM;
            checkableImageButtonA2.setScaleType(scaleTypeM);
            checkableImageButtonA.setScaleType(scaleTypeM);
        }
        b1Var.setVisibility(8);
        b1Var.setId(R.id.textinput_suffix_text);
        b1Var.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        x0.b1.y(b1Var, 1);
        d.b.o0(b1Var, typedArray.getResourceId(72, 0));
        if (typedArray.hasValue(73)) {
            b1Var.setTextColor(aVar.d(73));
        }
        CharSequence text3 = typedArray.getText(71);
        this.f13105q = TextUtils.isEmpty(text3) ? null : text3;
        b1Var.setText(text3);
        n();
        frameLayout.addView(checkableImageButtonA2);
        addView(b1Var);
        addView(frameLayout);
        addView(checkableImageButtonA);
        textInputLayout.U0.add(nVar);
        if (textInputLayout.f3678d != null) {
            nVar.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new o(0, this));
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i10) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i10);
        nh.b.k0(checkableImageButton);
        if (com.bumptech.glide.c.K(getContext())) {
            x0.p.h((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    public final q b() {
        q dVar;
        int i10 = this.f13099i;
        a9.a aVar = this.f13098h;
        SparseArray sparseArray = (SparseArray) aVar.f473d;
        q xVar = (q) sparseArray.get(i10);
        if (xVar == null) {
            p pVar = (p) aVar.f474e;
            if (i10 == -1) {
                dVar = new d(pVar, 0);
            } else if (i10 == 0) {
                dVar = new d(pVar, 1);
            } else if (i10 == 1) {
                xVar = new x(pVar, aVar.f472c);
                sparseArray.append(i10, xVar);
            } else if (i10 == 2) {
                dVar = new c(pVar);
            } else {
                if (i10 != 3) {
                    throw new IllegalArgumentException(da.b.a(i10, "Invalid end icon mode: "));
                }
                dVar = new l(pVar);
            }
            xVar = dVar;
            sparseArray.append(i10, xVar);
        }
        return xVar;
    }

    public final int c() {
        int iC;
        if (d() || e()) {
            CheckableImageButton checkableImageButton = this.f13097g;
            iC = x0.p.c((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            iC = 0;
        }
        WeakHashMap weakHashMap = x0.b1.f17953a;
        return k0.e(this.r) + k0.e(this) + iC;
    }

    public final boolean d() {
        return this.f13092b.getVisibility() == 0 && this.f13097g.getVisibility() == 0;
    }

    public final boolean e() {
        return this.f13093c.getVisibility() == 0;
    }

    public final void f(boolean z) {
        boolean z4;
        boolean zIsActivated;
        boolean z10;
        q qVarB = b();
        boolean zK = qVarB.k();
        CheckableImageButton checkableImageButton = this.f13097g;
        boolean z11 = true;
        if (!zK || (z10 = checkableImageButton.f3616d) == qVarB.l()) {
            z4 = false;
        } else {
            checkableImageButton.setChecked(!z10);
            z4 = true;
        }
        if (!(qVarB instanceof l) || (zIsActivated = checkableImageButton.isActivated()) == qVarB.j()) {
            z11 = z4;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z || z11) {
            nh.b.h0(this.f13091a, checkableImageButton, this.f13101k);
        }
    }

    public final void g(int i10) {
        if (this.f13099i == i10) {
            return;
        }
        q qVarB = b();
        y0.d dVar = this.f13109w;
        AccessibilityManager accessibilityManager = this.f13108v;
        if (dVar != null && accessibilityManager != null && Build.VERSION.SDK_INT >= 19) {
            y0.c.b(accessibilityManager, dVar);
        }
        this.f13109w = null;
        qVarB.s();
        this.f13099i = i10;
        Iterator it = this.f13100j.iterator();
        if (it.hasNext()) {
            throw l2.z.d(it);
        }
        h(i10 != 0);
        q qVarB2 = b();
        int iD = this.f13098h.f471b;
        if (iD == 0) {
            iD = qVarB2.d();
        }
        Drawable drawableX = iD != 0 ? com.bumptech.glide.d.x(getContext(), iD) : null;
        CheckableImageButton checkableImageButton = this.f13097g;
        checkableImageButton.setImageDrawable(drawableX);
        TextInputLayout textInputLayout = this.f13091a;
        if (drawableX != null) {
            nh.b.f(textInputLayout, checkableImageButton, this.f13101k, this.l);
            nh.b.h0(textInputLayout, checkableImageButton, this.f13101k);
        }
        int iC = qVarB2.c();
        CharSequence text = iC != 0 ? getResources().getText(iC) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(qVarB2.k());
        if (!qVarB2.i(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i10);
        }
        qVarB2.r();
        y0.d dVarH = qVarB2.h();
        this.f13109w = dVarH;
        if (dVarH != null && accessibilityManager != null && x0.b1.l(this)) {
            y0.d dVar2 = this.f13109w;
            if (Build.VERSION.SDK_INT >= 19) {
                y0.c.a(accessibilityManager, dVar2);
            }
        }
        View.OnClickListener onClickListenerF = qVarB2.f();
        View.OnLongClickListener onLongClickListener = this.f13104p;
        checkableImageButton.setOnClickListener(onClickListenerF);
        nh.b.l0(checkableImageButton, onLongClickListener);
        EditText editText = this.f13107t;
        if (editText != null) {
            qVarB2.m(editText);
            j(qVarB2);
        }
        nh.b.f(textInputLayout, checkableImageButton, this.f13101k, this.l);
        f(true);
    }

    public final void h(boolean z) {
        if (d() != z) {
            this.f13097g.setVisibility(z ? 0 : 8);
            k();
            m();
            this.f13091a.q();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f13093c;
        checkableImageButton.setImageDrawable(drawable);
        l();
        nh.b.f(this.f13091a, checkableImageButton, this.f13094d, this.f13095e);
    }

    public final void j(q qVar) {
        if (this.f13107t == null) {
            return;
        }
        if (qVar.e() != null) {
            this.f13107t.setOnFocusChangeListener(qVar.e());
        }
        if (qVar.g() != null) {
            this.f13097g.setOnFocusChangeListener(qVar.g());
        }
    }

    public final void k() {
        this.f13092b.setVisibility((this.f13097g.getVisibility() != 0 || e()) ? 8 : 0);
        setVisibility((d() || e() || ((this.f13105q == null || this.f13106s) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    public final void l() {
        CheckableImageButton checkableImageButton = this.f13093c;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f13091a;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.f3690j.f13136q && textInputLayout.m()) ? 0 : 8);
        k();
        m();
        if (this.f13099i != 0) {
            return;
        }
        textInputLayout.q();
    }

    public final void m() {
        int iE;
        TextInputLayout textInputLayout = this.f13091a;
        if (textInputLayout.f3678d == null) {
            return;
        }
        if (d() || e()) {
            iE = 0;
        } else {
            EditText editText = textInputLayout.f3678d;
            WeakHashMap weakHashMap = x0.b1.f17953a;
            iE = k0.e(editText);
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = textInputLayout.f3678d.getPaddingTop();
        int paddingBottom = textInputLayout.f3678d.getPaddingBottom();
        WeakHashMap weakHashMap2 = x0.b1.f17953a;
        k0.k(this.r, dimensionPixelSize, paddingTop, iE, paddingBottom);
    }

    public final void n() {
        b1 b1Var = this.r;
        int visibility = b1Var.getVisibility();
        int i10 = (this.f13105q == null || this.f13106s) ? 8 : 0;
        if (visibility != i10) {
            b().p(i10 == 0);
        }
        k();
        b1Var.setVisibility(i10);
        this.f13091a.q();
    }
}
