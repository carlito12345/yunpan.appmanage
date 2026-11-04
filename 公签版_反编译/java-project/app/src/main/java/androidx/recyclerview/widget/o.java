package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class o extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f2214a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2215b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2216c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f2217d;

    public o(s sVar, q qVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2217d = sVar;
        this.f2214a = qVar;
        this.f2215b = viewPropertyAnimator;
        this.f2216c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2215b.setListener(null);
        View view = this.f2216c;
        view.setAlpha(1.0f);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        q qVar = this.f2214a;
        RecyclerView.ViewHolder viewHolder = qVar.f2226a;
        s sVar = this.f2217d;
        sVar.c(viewHolder);
        sVar.r.remove(qVar.f2226a);
        sVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        RecyclerView.ViewHolder viewHolder = this.f2214a.f2226a;
        this.f2217d.getClass();
    }
}
