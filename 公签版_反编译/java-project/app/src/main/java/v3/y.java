package v3;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;
import ua.z6;

/* loaded from: classes.dex */
public final class y {
    public boolean B;
    public boolean C;

    /* renamed from: a, reason: collision with root package name */
    public final t f16599a;

    /* renamed from: b, reason: collision with root package name */
    public final View f16600b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f16601c;

    /* renamed from: d, reason: collision with root package name */
    public final ViewGroup f16602d;

    /* renamed from: e, reason: collision with root package name */
    public final ViewGroup f16603e;

    /* renamed from: f, reason: collision with root package name */
    public final ViewGroup f16604f;

    /* renamed from: g, reason: collision with root package name */
    public final ViewGroup f16605g;

    /* renamed from: h, reason: collision with root package name */
    public final ViewGroup f16606h;

    /* renamed from: i, reason: collision with root package name */
    public final ViewGroup f16607i;

    /* renamed from: j, reason: collision with root package name */
    public final ViewGroup f16608j;

    /* renamed from: k, reason: collision with root package name */
    public final View f16609k;
    public final View l;

    /* renamed from: m, reason: collision with root package name */
    public final AnimatorSet f16610m;

    /* renamed from: n, reason: collision with root package name */
    public final AnimatorSet f16611n;

    /* renamed from: o, reason: collision with root package name */
    public final AnimatorSet f16612o;

    /* renamed from: p, reason: collision with root package name */
    public final AnimatorSet f16613p;

    /* renamed from: q, reason: collision with root package name */
    public final AnimatorSet f16614q;
    public final ValueAnimator r;

    /* renamed from: s, reason: collision with root package name */
    public final ValueAnimator f16615s;

    /* renamed from: t, reason: collision with root package name */
    public final u f16616t;

    /* renamed from: u, reason: collision with root package name */
    public final u f16617u;

    /* renamed from: y, reason: collision with root package name */
    public final ub.a f16621y;

    /* renamed from: v, reason: collision with root package name */
    public final u f16618v = new u(this, 4);

    /* renamed from: w, reason: collision with root package name */
    public final u f16619w = new u(this, 5);

    /* renamed from: x, reason: collision with root package name */
    public final u f16620x = new u(this, 6);
    public boolean D = true;
    public int A = 0;
    public final ArrayList z = new ArrayList();

    public y(t tVar) throws Resources.NotFoundException {
        int i10 = 10;
        this.f16599a = tVar;
        final int i11 = 0;
        this.f16616t = new u(this, i11);
        final int i12 = 3;
        this.f16617u = new u(this, i12);
        final int i13 = 2;
        this.f16621y = new ub.a(i13, this);
        final int i14 = 1;
        this.f16601c = (ViewGroup) tVar.findViewById(R.id.exo_top_controls);
        this.f16600b = tVar.findViewById(R.id.exo_controls_background);
        this.f16602d = (ViewGroup) tVar.findViewById(R.id.exo_center_controls);
        this.f16604f = (ViewGroup) tVar.findViewById(R.id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) tVar.findViewById(R.id.exo_bottom_bar);
        this.f16603e = viewGroup;
        this.f16608j = (ViewGroup) tVar.findViewById(R.id.exo_time);
        View viewFindViewById = tVar.findViewById(R.id.exo_progress);
        this.f16609k = viewFindViewById;
        this.f16605g = (ViewGroup) tVar.findViewById(R.id.exo_basic_controls);
        this.f16606h = (ViewGroup) tVar.findViewById(R.id.exo_extra_controls);
        this.f16607i = (ViewGroup) tVar.findViewById(R.id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = tVar.findViewById(R.id.exo_overflow_show);
        this.l = viewFindViewById2;
        View viewFindViewById3 = tVar.findViewById(R.id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new z6(i10, this));
            viewFindViewById3.setOnClickListener(new z6(i10, this));
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: v3.v

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y f16593b;

            {
                this.f16593b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i12) {
                    case 0:
                        y yVar = this.f16593b;
                        yVar.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = yVar.f16600b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = yVar.f16601c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = yVar.f16602d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = yVar.f16604f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                            break;
                        }
                        break;
                    case 1:
                        y yVar2 = this.f16593b;
                        yVar2.getClass();
                        yVar2.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    case 2:
                        y yVar3 = this.f16593b;
                        yVar3.getClass();
                        yVar3.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        y yVar4 = this.f16593b;
                        yVar4.getClass();
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = yVar4.f16600b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = yVar4.f16601c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = yVar4.f16602d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = yVar4.f16604f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                            break;
                        }
                        break;
                }
            }
        });
        valueAnimatorOfFloat.addListener(new w(this, i11));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: v3.v

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y f16593b;

            {
                this.f16593b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i11) {
                    case 0:
                        y yVar = this.f16593b;
                        yVar.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = yVar.f16600b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = yVar.f16601c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = yVar.f16602d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = yVar.f16604f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                            break;
                        }
                        break;
                    case 1:
                        y yVar2 = this.f16593b;
                        yVar2.getClass();
                        yVar2.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    case 2:
                        y yVar3 = this.f16593b;
                        yVar3.getClass();
                        yVar3.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        y yVar4 = this.f16593b;
                        yVar4.getClass();
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = yVar4.f16600b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = yVar4.f16601c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = yVar4.f16602d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = yVar4.f16604f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                            break;
                        }
                        break;
                }
            }
        });
        valueAnimatorOfFloat2.addListener(new w(this, i14));
        Resources resources = tVar.getResources();
        float dimension = resources.getDimension(R.dimen.exo_styled_bottom_bar_height) - resources.getDimension(R.dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R.dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f16610m = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new x(this, tVar, i11));
        animatorSet.play(valueAnimatorOfFloat).with(d(viewFindViewById, 0.0f, dimension)).with(d(viewGroup, 0.0f, dimension));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f16611n = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new x(this, tVar, i14));
        animatorSet2.play(d(viewFindViewById, dimension, dimension2)).with(d(viewGroup, dimension, dimension2));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f16612o = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new x(this, tVar, i13));
        animatorSet3.play(valueAnimatorOfFloat).with(d(viewFindViewById, 0.0f, dimension2)).with(d(viewGroup, 0.0f, dimension2));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f16613p = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new w(this, i13));
        animatorSet4.play(valueAnimatorOfFloat2).with(d(viewFindViewById, dimension, 0.0f)).with(d(viewGroup, dimension, 0.0f));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f16614q = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new w(this, 3));
        animatorSet5.play(valueAnimatorOfFloat2).with(d(viewFindViewById, dimension2, 0.0f)).with(d(viewGroup, dimension2, 0.0f));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.r = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: v3.v

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y f16593b;

            {
                this.f16593b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i14) {
                    case 0:
                        y yVar = this.f16593b;
                        yVar.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = yVar.f16600b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = yVar.f16601c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = yVar.f16602d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = yVar.f16604f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                            break;
                        }
                        break;
                    case 1:
                        y yVar2 = this.f16593b;
                        yVar2.getClass();
                        yVar2.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    case 2:
                        y yVar3 = this.f16593b;
                        yVar3.getClass();
                        yVar3.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        y yVar4 = this.f16593b;
                        yVar4.getClass();
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = yVar4.f16600b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = yVar4.f16601c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = yVar4.f16602d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = yVar4.f16604f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                            break;
                        }
                        break;
                }
            }
        });
        valueAnimatorOfFloat3.addListener(new w(this, 4));
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f16615s = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: v3.v

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y f16593b;

            {
                this.f16593b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i13) {
                    case 0:
                        y yVar = this.f16593b;
                        yVar.getClass();
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view = yVar.f16600b;
                        if (view != null) {
                            view.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup2 = yVar.f16601c;
                        if (viewGroup2 != null) {
                            viewGroup2.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup3 = yVar.f16602d;
                        if (viewGroup3 != null) {
                            viewGroup3.setAlpha(fFloatValue);
                        }
                        ViewGroup viewGroup4 = yVar.f16604f;
                        if (viewGroup4 != null) {
                            viewGroup4.setAlpha(fFloatValue);
                            break;
                        }
                        break;
                    case 1:
                        y yVar2 = this.f16593b;
                        yVar2.getClass();
                        yVar2.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    case 2:
                        y yVar3 = this.f16593b;
                        yVar3.getClass();
                        yVar3.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        y yVar4 = this.f16593b;
                        yVar4.getClass();
                        float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        View view2 = yVar4.f16600b;
                        if (view2 != null) {
                            view2.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup5 = yVar4.f16601c;
                        if (viewGroup5 != null) {
                            viewGroup5.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup6 = yVar4.f16602d;
                        if (viewGroup6 != null) {
                            viewGroup6.setAlpha(fFloatValue2);
                        }
                        ViewGroup viewGroup7 = yVar4.f16604f;
                        if (viewGroup7 != null) {
                            viewGroup7.setAlpha(fFloatValue2);
                            break;
                        }
                        break;
                }
            }
        });
        valueAnimatorOfFloat4.addListener(new w(this, 5));
    }

    public static int c(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    public static ObjectAnimator d(View view, float f10, float f11) {
        return ObjectAnimator.ofFloat(view, "translationY", f10, f11);
    }

    public static boolean j(View view) {
        int id2 = view.getId();
        return id2 == R.id.exo_bottom_bar || id2 == R.id.exo_media_route_button_placeholder || id2 == R.id.exo_prev || id2 == R.id.exo_next || id2 == R.id.exo_rew || id2 == R.id.exo_rew_with_amount || id2 == R.id.exo_ffwd || id2 == R.id.exo_ffwd_with_amount;
    }

    public final void a(float f10) {
        ViewGroup viewGroup = this.f16607i;
        if (viewGroup != null) {
            viewGroup.setTranslationX((int) ((1.0f - f10) * viewGroup.getWidth()));
        }
        ViewGroup viewGroup2 = this.f16608j;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f16605g;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f10);
        }
    }

    public final boolean b(View view) {
        return view != null && this.z.contains(view);
    }

    public final void e(Runnable runnable, long j10) {
        if (j10 >= 0) {
            this.f16599a.postDelayed(runnable, j10);
        }
    }

    public final void f() {
        u uVar = this.f16620x;
        t tVar = this.f16599a;
        tVar.removeCallbacks(uVar);
        tVar.removeCallbacks(this.f16617u);
        tVar.removeCallbacks(this.f16619w);
        tVar.removeCallbacks(this.f16618v);
    }

    public final void g() {
        if (this.A == 3) {
            return;
        }
        f();
        int showTimeoutMs = this.f16599a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.D) {
                e(this.f16620x, showTimeoutMs);
            } else if (this.A == 1) {
                e(this.f16618v, 2000L);
            } else {
                e(this.f16619w, showTimeoutMs);
            }
        }
    }

    public final void h(View view, boolean z) {
        if (view == null) {
            return;
        }
        ArrayList arrayList = this.z;
        if (!z) {
            view.setVisibility(8);
            arrayList.remove(view);
            return;
        }
        if (this.B && j(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        arrayList.add(view);
    }

    public final void i(int i10) {
        int i11 = this.A;
        this.A = i10;
        t tVar = this.f16599a;
        if (i10 == 2) {
            tVar.setVisibility(8);
        } else if (i11 == 2) {
            tVar.setVisibility(0);
        }
        if (i11 != i10) {
            Iterator it = tVar.f16564k.iterator();
            while (it.hasNext()) {
                s sVar = (s) it.next();
                tVar.getVisibility();
                ((a0) sVar).f16413c.m();
            }
        }
    }

    public final void k() {
        if (!this.D) {
            i(0);
            g();
            return;
        }
        int i10 = this.A;
        if (i10 == 1) {
            this.f16613p.start();
        } else if (i10 == 2) {
            this.f16614q.start();
        } else if (i10 == 3) {
            this.C = true;
        } else if (i10 == 4) {
            return;
        }
        g();
    }
}
