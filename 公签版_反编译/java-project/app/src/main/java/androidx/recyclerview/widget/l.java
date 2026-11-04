package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class l extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2175a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2176b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2177c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f2178d;

    public l(View view, ViewPropertyAnimator viewPropertyAnimator, s sVar, RecyclerView.ViewHolder viewHolder) {
        this.f2178d = sVar;
        this.f2175a = viewHolder;
        this.f2176b = viewPropertyAnimator;
        this.f2177c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2176b.setListener(null);
        this.f2177c.setAlpha(1.0f);
        s sVar = this.f2178d;
        RecyclerView.ViewHolder viewHolder = this.f2175a;
        sVar.c(viewHolder);
        sVar.f2258q.remove(viewHolder);
        sVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2178d.getClass();
    }
}
