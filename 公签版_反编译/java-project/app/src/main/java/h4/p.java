package h4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import x0.m1;
import x0.r1;
import x0.v1;

/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6472a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6473b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6474c;

    public /* synthetic */ p(Object obj, View view, int i10) {
        this.f6472a = i10;
        this.f6473b = obj;
        this.f6474c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f6472a) {
            case 1:
                ((m1) this.f6473b).a((View) this.f6474c);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f6472a) {
            case 0:
                ((a0.e) this.f6473b).remove(animator);
                ((t) this.f6474c).f6496m.remove(animator);
                break;
            case 1:
                ((m1) this.f6473b).c();
                break;
            default:
                ((v1) this.f6473b).f18060a.d(1.0f);
                r1.e((View) this.f6474c);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f6472a) {
            case 0:
                ((t) this.f6474c).f6496m.add(animator);
                break;
            case 1:
                ((m1) this.f6473b).b();
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public p(t tVar, a0.e eVar) {
        this.f6472a = 0;
        this.f6474c = tVar;
        this.f6473b = eVar;
    }
}
