package q7;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import w.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class t {
    public ColorStateList A;
    public Typeface B;

    /* renamed from: a, reason: collision with root package name */
    public final int f13121a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13122b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13123c;

    /* renamed from: d, reason: collision with root package name */
    public final TimeInterpolator f13124d;

    /* renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f13125e;

    /* renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f13126f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f13127g;

    /* renamed from: h, reason: collision with root package name */
    public final TextInputLayout f13128h;

    /* renamed from: i, reason: collision with root package name */
    public LinearLayout f13129i;

    /* renamed from: j, reason: collision with root package name */
    public int f13130j;

    /* renamed from: k, reason: collision with root package name */
    public FrameLayout f13131k;
    public AnimatorSet l;

    /* renamed from: m, reason: collision with root package name */
    public final float f13132m;

    /* renamed from: n, reason: collision with root package name */
    public int f13133n;

    /* renamed from: o, reason: collision with root package name */
    public int f13134o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f13135p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f13136q;
    public b1 r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f13137s;

    /* renamed from: t, reason: collision with root package name */
    public int f13138t;

    /* renamed from: u, reason: collision with root package name */
    public int f13139u;

    /* renamed from: v, reason: collision with root package name */
    public ColorStateList f13140v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f13141w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f13142x;

    /* renamed from: y, reason: collision with root package name */
    public b1 f13143y;
    public int z;

    public t(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f13127g = context;
        this.f13128h = textInputLayout;
        this.f13132m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f13121a = com.bumptech.glide.d.b0(context, R.attr.motionDurationShort4, 217);
        this.f13122b = com.bumptech.glide.d.b0(context, R.attr.motionDurationMedium4, 167);
        this.f13123c = com.bumptech.glide.d.b0(context, R.attr.motionDurationShort4, 167);
        this.f13124d = com.bumptech.glide.d.c0(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, r6.a.f13713d);
        LinearInterpolator linearInterpolator = r6.a.f13710a;
        this.f13125e = com.bumptech.glide.d.c0(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.f13126f = com.bumptech.glide.d.c0(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    public final void a(b1 b1Var, int i10) {
        if (this.f13129i == null && this.f13131k == null) {
            Context context = this.f13127g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f13129i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f13129i;
            TextInputLayout textInputLayout = this.f13128h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f13131k = new FrameLayout(context);
            this.f13129i.addView(this.f13131k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i10 == 0 || i10 == 1) {
            this.f13131k.setVisibility(0);
            this.f13131k.addView(b1Var);
        } else {
            this.f13129i.addView(b1Var, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f13129i.setVisibility(0);
        this.f13130j++;
    }

    public final void b() {
        if (this.f13129i != null) {
            TextInputLayout textInputLayout = this.f13128h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f13127g;
                boolean zK = com.bumptech.glide.c.K(context);
                LinearLayout linearLayout = this.f13129i;
                WeakHashMap weakHashMap = x0.b1.f17953a;
                int iF = k0.f(editText);
                if (zK) {
                    iF = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zK) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int iE = k0.e(editText);
                if (zK) {
                    iE = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                k0.k(linearLayout, iF, dimensionPixelSize, iE, 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z, b1 b1Var, int i10, int i11, int i12) {
        if (b1Var == null || !z) {
            return;
        }
        if (i10 == i12 || i10 == i11) {
            boolean z4 = i12 == i10;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(b1Var, (Property<b1, Float>) View.ALPHA, z4 ? 1.0f : 0.0f);
            int i13 = this.f13123c;
            objectAnimatorOfFloat.setDuration(z4 ? this.f13122b : i13);
            objectAnimatorOfFloat.setInterpolator(z4 ? this.f13125e : this.f13126f);
            if (i10 == i12 && i11 != 0) {
                objectAnimatorOfFloat.setStartDelay(i13);
            }
            arrayList.add(objectAnimatorOfFloat);
            if (i12 != i10 || i11 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(b1Var, (Property<b1, Float>) View.TRANSLATION_Y, -this.f13132m, 0.0f);
            objectAnimatorOfFloat2.setDuration(this.f13121a);
            objectAnimatorOfFloat2.setInterpolator(this.f13124d);
            objectAnimatorOfFloat2.setStartDelay(i13);
            arrayList.add(objectAnimatorOfFloat2);
        }
    }

    public final TextView e(int i10) {
        if (i10 == 1) {
            return this.r;
        }
        if (i10 != 2) {
            return null;
        }
        return this.f13143y;
    }

    public final void f() {
        this.f13135p = null;
        c();
        if (this.f13133n == 1) {
            if (!this.f13142x || TextUtils.isEmpty(this.f13141w)) {
                this.f13134o = 0;
            } else {
                this.f13134o = 2;
            }
        }
        i(this.f13133n, this.f13134o, h(this.r, ""));
    }

    public final void g(b1 b1Var, int i10) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f13129i;
        if (linearLayout == null) {
            return;
        }
        if ((i10 == 0 || i10 == 1) && (frameLayout = this.f13131k) != null) {
            frameLayout.removeView(b1Var);
        } else {
            linearLayout.removeView(b1Var);
        }
        int i11 = this.f13130j - 1;
        this.f13130j = i11;
        LinearLayout linearLayout2 = this.f13129i;
        if (i11 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(b1 b1Var, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f13128h;
        return x0.b1.m(textInputLayout) && textInputLayout.isEnabled() && !(this.f13134o == this.f13133n && b1Var != null && TextUtils.equals(b1Var.getText(), charSequence));
    }

    public final void i(int i10, int i11, boolean z) {
        TextView textViewE;
        TextView textViewE2;
        if (i10 == i11) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.l = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f13142x, this.f13143y, 2, i10, i11);
            d(arrayList, this.f13136q, this.r, 1, i10, i11);
            int size = arrayList.size();
            long jMax = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Animator animator = (Animator) arrayList.get(i12);
                jMax = Math.max(jMax, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 0);
            valueAnimatorOfInt.setDuration(jMax);
            arrayList.add(0, valueAnimatorOfInt);
            animatorSet.playTogether(arrayList);
            animatorSet.addListener(new r(this, i11, e(i10), i10, e(i11)));
            animatorSet.start();
        } else if (i10 != i11) {
            if (i11 != 0 && (textViewE2 = e(i11)) != null) {
                textViewE2.setVisibility(0);
                textViewE2.setAlpha(1.0f);
            }
            if (i10 != 0 && (textViewE = e(i10)) != null) {
                textViewE.setVisibility(4);
                if (i10 == 1) {
                    textViewE.setText((CharSequence) null);
                }
            }
            this.f13133n = i11;
        }
        TextInputLayout textInputLayout = this.f13128h;
        textInputLayout.r();
        textInputLayout.u(z, false);
        textInputLayout.x();
    }
}
