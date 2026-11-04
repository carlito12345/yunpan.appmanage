package q7;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.yunpan.appmanage.R;
import ha.db;
import ha.g9;

/* loaded from: classes.dex */
public final class c extends q {

    /* renamed from: e, reason: collision with root package name */
    public final int f13059e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13060f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f13061g;

    /* renamed from: h, reason: collision with root package name */
    public final TimeInterpolator f13062h;

    /* renamed from: i, reason: collision with root package name */
    public EditText f13063i;

    /* renamed from: j, reason: collision with root package name */
    public final g9 f13064j;

    /* renamed from: k, reason: collision with root package name */
    public final ha.n f13065k;
    public AnimatorSet l;

    /* renamed from: m, reason: collision with root package name */
    public ValueAnimator f13066m;

    public c(p pVar) {
        super(pVar);
        this.f13064j = new g9(21, this);
        this.f13065k = new ha.n(2, this);
        this.f13059e = com.bumptech.glide.d.b0(pVar.getContext(), R.attr.motionDurationShort3, 100);
        this.f13060f = com.bumptech.glide.d.b0(pVar.getContext(), R.attr.motionDurationShort3, 150);
        this.f13061g = com.bumptech.glide.d.c0(pVar.getContext(), R.attr.motionEasingLinearInterpolator, r6.a.f13710a);
        this.f13062h = com.bumptech.glide.d.c0(pVar.getContext(), R.attr.motionEasingEmphasizedInterpolator, r6.a.f13713d);
    }

    @Override // q7.q
    public final void a() {
        if (this.f13112b.f13105q != null) {
            return;
        }
        t(u());
    }

    @Override // q7.q
    public final int c() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // q7.q
    public final int d() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // q7.q
    public final View.OnFocusChangeListener e() {
        return this.f13065k;
    }

    @Override // q7.q
    public final View.OnClickListener f() {
        return this.f13064j;
    }

    @Override // q7.q
    public final View.OnFocusChangeListener g() {
        return this.f13065k;
    }

    @Override // q7.q
    public final void m(EditText editText) {
        this.f13063i = editText;
        this.f13111a.setEndIconVisible(u());
    }

    @Override // q7.q
    public final void p(boolean z) {
        if (this.f13112b.f13105q == null) {
            return;
        }
        t(z);
    }

    @Override // q7.q
    public final void r() {
        final int i10 = 1;
        final int i11 = 0;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f13062h);
        valueAnimatorOfFloat.setDuration(this.f13060f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: q7.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f13054b;

            {
                this.f13054b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i10) {
                    case 0:
                        c cVar = this.f13054b;
                        cVar.getClass();
                        cVar.f13114d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        c cVar2 = this.f13054b;
                        cVar2.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = cVar2.f13114d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f13061g;
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        int i12 = this.f13059e;
        valueAnimatorOfFloat2.setDuration(i12);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: q7.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f13054b;

            {
                this.f13054b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i11) {
                    case 0:
                        c cVar = this.f13054b;
                        cVar.getClass();
                        cVar.f13114d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        c cVar2 = this.f13054b;
                        cVar2.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = cVar2.f13114d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.l = animatorSet;
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.l.addListener(new b(this, i11));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat3.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat3.setDuration(i12);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: q7.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f13054b;

            {
                this.f13054b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i11) {
                    case 0:
                        c cVar = this.f13054b;
                        cVar.getClass();
                        cVar.f13114d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        c cVar2 = this.f13054b;
                        cVar2.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = cVar2.f13114d;
                        checkableImageButton.setScaleX(fFloatValue);
                        checkableImageButton.setScaleY(fFloatValue);
                        break;
                }
            }
        });
        this.f13066m = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.addListener(new b(this, i10));
    }

    @Override // q7.q
    public final void s() {
        EditText editText = this.f13063i;
        if (editText != null) {
            editText.post(new db(10, this));
        }
    }

    public final void t(boolean z) {
        boolean z4 = this.f13112b.d() == z;
        if (z && !this.l.isRunning()) {
            this.f13066m.cancel();
            this.l.start();
            if (z4) {
                this.l.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.l.cancel();
        this.f13066m.start();
        if (z4) {
            this.f13066m.end();
        }
    }

    public final boolean u() {
        EditText editText = this.f13063i;
        return editText != null && (editText.hasFocus() || this.f13114d.hasFocus()) && this.f13063i.getText().length() > 0;
    }
}
