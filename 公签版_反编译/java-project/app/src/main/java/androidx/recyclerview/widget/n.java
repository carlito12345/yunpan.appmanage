package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class n extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2191a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2192b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2193c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2194d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2195e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ s f2196f;

    public n(s sVar, RecyclerView.ViewHolder viewHolder, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2196f = sVar;
        this.f2191a = viewHolder;
        this.f2192b = i10;
        this.f2193c = view;
        this.f2194d = i11;
        this.f2195e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i10 = this.f2192b;
        View view = this.f2193c;
        if (i10 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f2194d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2195e.setListener(null);
        s sVar = this.f2196f;
        RecyclerView.ViewHolder viewHolder = this.f2191a;
        sVar.c(viewHolder);
        sVar.f2257p.remove(viewHolder);
        sVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2196f.getClass();
    }
}
