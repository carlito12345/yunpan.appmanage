package q7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public final class b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13055a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f13056b;

    public /* synthetic */ b(c cVar, int i10) {
        this.f13055a = i10;
        this.f13056b = cVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f13055a) {
            case 1:
                this.f13056b.f13112b.h(false);
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f13055a) {
            case 0:
                this.f13056b.f13112b.h(true);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
