package q7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import w.b1;

/* loaded from: classes.dex */
public final class r extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13115a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f13116b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13117c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f13118d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t f13119e;

    public r(t tVar, int i10, TextView textView, int i11, TextView textView2) {
        this.f13119e = tVar;
        this.f13115a = i10;
        this.f13116b = textView;
        this.f13117c = i11;
        this.f13118d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        b1 b1Var;
        int i10 = this.f13115a;
        t tVar = this.f13119e;
        tVar.f13133n = i10;
        tVar.l = null;
        TextView textView = this.f13116b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f13117c == 1 && (b1Var = tVar.r) != null) {
                b1Var.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f13118d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f13118d;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(0.0f);
        }
    }
}
