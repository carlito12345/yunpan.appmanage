package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class m extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2181a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2182b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2183c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f2184d;

    public m(View view, ViewPropertyAnimator viewPropertyAnimator, s sVar, RecyclerView.ViewHolder viewHolder) {
        this.f2184d = sVar;
        this.f2181a = viewHolder;
        this.f2182b = view;
        this.f2183c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f2182b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2183c.setListener(null);
        s sVar = this.f2184d;
        RecyclerView.ViewHolder viewHolder = this.f2181a;
        sVar.c(viewHolder);
        sVar.f2256o.remove(viewHolder);
        sVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2184d.getClass();
    }
}
