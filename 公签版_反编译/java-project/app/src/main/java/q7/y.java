package q7;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import w.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class y extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f13159a;

    /* renamed from: b, reason: collision with root package name */
    public final b1 f13160b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f13161c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckableImageButton f13162d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f13163e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f13164f;

    /* renamed from: g, reason: collision with root package name */
    public int f13165g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView.ScaleType f13166h;

    /* renamed from: i, reason: collision with root package name */
    public View.OnLongClickListener f13167i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13168j;

    public y(TextInputLayout textInputLayout, s4.a aVar) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f13159a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f13162d = checkableImageButton;
        nh.b.k0(checkableImageButton);
        b1 b1Var = new b1(getContext(), null);
        this.f13160b = b1Var;
        if (com.bumptech.glide.c.K(getContext())) {
            x0.p.g((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        View.OnLongClickListener onLongClickListener = this.f13167i;
        checkableImageButton.setOnClickListener(null);
        nh.b.l0(checkableImageButton, onLongClickListener);
        this.f13167i = null;
        checkableImageButton.setOnLongClickListener(null);
        nh.b.l0(checkableImageButton, null);
        TypedArray typedArray = (TypedArray) aVar.f14294c;
        if (typedArray.hasValue(69)) {
            this.f13163e = com.bumptech.glide.c.x(getContext(), aVar, 69);
        }
        if (typedArray.hasValue(70)) {
            this.f13164f = g7.l.h(typedArray.getInt(70, -1), null);
        }
        if (typedArray.hasValue(66)) {
            b(aVar.e(66));
            if (typedArray.hasValue(65) && checkableImageButton.getContentDescription() != (text = typedArray.getText(65))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(64, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(67, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (dimensionPixelSize != this.f13165g) {
            this.f13165g = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(68)) {
            ImageView.ScaleType scaleTypeM = nh.b.m(typedArray.getInt(68, -1));
            this.f13166h = scaleTypeM;
            checkableImageButton.setScaleType(scaleTypeM);
        }
        b1Var.setVisibility(8);
        b1Var.setId(R.id.textinput_prefix_text);
        b1Var.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        x0.b1.y(b1Var, 1);
        d.b.o0(b1Var, typedArray.getResourceId(60, 0));
        if (typedArray.hasValue(61)) {
            b1Var.setTextColor(aVar.d(61));
        }
        CharSequence text2 = typedArray.getText(59);
        this.f13161c = TextUtils.isEmpty(text2) ? null : text2;
        b1Var.setText(text2);
        e();
        addView(checkableImageButton);
        addView(b1Var);
    }

    public final int a() {
        int iB;
        CheckableImageButton checkableImageButton = this.f13162d;
        if (checkableImageButton.getVisibility() == 0) {
            iB = x0.p.b((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth();
        } else {
            iB = 0;
        }
        WeakHashMap weakHashMap = x0.b1.f17953a;
        return k0.f(this.f13160b) + k0.f(this) + iB;
    }

    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f13162d;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f13163e;
            PorterDuff.Mode mode = this.f13164f;
            TextInputLayout textInputLayout = this.f13159a;
            nh.b.f(textInputLayout, checkableImageButton, colorStateList, mode);
            c(true);
            nh.b.h0(textInputLayout, checkableImageButton, this.f13163e);
            return;
        }
        c(false);
        View.OnLongClickListener onLongClickListener = this.f13167i;
        checkableImageButton.setOnClickListener(null);
        nh.b.l0(checkableImageButton, onLongClickListener);
        this.f13167i = null;
        checkableImageButton.setOnLongClickListener(null);
        nh.b.l0(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void c(boolean z) {
        CheckableImageButton checkableImageButton = this.f13162d;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            checkableImageButton.setVisibility(z ? 0 : 8);
            d();
            e();
        }
    }

    public final void d() throws Resources.NotFoundException {
        int iF;
        EditText editText = this.f13159a.f3678d;
        if (editText == null) {
            return;
        }
        if (this.f13162d.getVisibility() == 0) {
            iF = 0;
        } else {
            WeakHashMap weakHashMap = x0.b1.f17953a;
            iF = k0.f(editText);
        }
        int compoundPaddingTop = editText.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = editText.getCompoundPaddingBottom();
        WeakHashMap weakHashMap2 = x0.b1.f17953a;
        k0.k(this.f13160b, iF, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void e() {
        int i10 = (this.f13161c == null || this.f13168j) ? 8 : 0;
        setVisibility((this.f13162d.getVisibility() == 0 || i10 == 0) ? 0 : 8);
        this.f13160b.setVisibility(i10);
        this.f13159a.q();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) throws Resources.NotFoundException {
        super.onMeasure(i10, i11);
        d();
    }
}
