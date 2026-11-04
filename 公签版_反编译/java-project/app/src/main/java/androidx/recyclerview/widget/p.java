package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f2219a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2220b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2221c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f2222d;

    public p(s sVar, q qVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2222d = sVar;
        this.f2219a = qVar;
        this.f2220b = viewPropertyAnimator;
        this.f2221c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2220b.setListener(null);
        View view = this.f2221c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        q qVar = this.f2219a;
        RecyclerView.ViewHolder viewHolder = qVar.f2227b;
        s sVar = this.f2222d;
        sVar.c(viewHolder);
        sVar.r.remove(qVar.f2227b);
        sVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        RecyclerView.ViewHolder viewHolder = this.f2219a.f2227b;
        this.f2222d.getClass();
    }
}
