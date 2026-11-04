package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class s0 implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final float f2259a;

    /* renamed from: b, reason: collision with root package name */
    public final float f2260b;

    /* renamed from: c, reason: collision with root package name */
    public final float f2261c;

    /* renamed from: d, reason: collision with root package name */
    public final float f2262d;

    /* renamed from: e, reason: collision with root package name */
    public final RecyclerView.ViewHolder f2263e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2264f;

    /* renamed from: g, reason: collision with root package name */
    public final ValueAnimator f2265g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2266h;

    /* renamed from: i, reason: collision with root package name */
    public float f2267i;

    /* renamed from: j, reason: collision with root package name */
    public float f2268j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2269k = false;
    public boolean l = false;

    /* renamed from: m, reason: collision with root package name */
    public float f2270m;

    public s0(RecyclerView.ViewHolder viewHolder, int i10, float f10, float f11, float f12, float f13) {
        this.f2264f = i10;
        this.f2263e = viewHolder;
        this.f2259a = f10;
        this.f2260b = f11;
        this.f2261c = f12;
        this.f2262d = f13;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2265g = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new r0(this));
        valueAnimatorOfFloat.setTarget(viewHolder.itemView);
        valueAnimatorOfFloat.addListener(this);
        this.f2270m = 0.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f2270m = 1.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.l) {
            this.f2263e.setIsRecyclable(true);
        }
        this.l = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
