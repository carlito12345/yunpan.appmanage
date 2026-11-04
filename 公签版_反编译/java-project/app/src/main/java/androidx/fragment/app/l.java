package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class l extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f1323a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1324b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1325c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ z1 f1326d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i f1327e;

    public l(n nVar, View view, boolean z, z1 z1Var, i iVar) {
        this.f1323a = nVar;
        this.f1324b = view;
        this.f1325c = z;
        this.f1326d = z1Var;
        this.f1327e = iVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ue.d.e(animator, "anim");
        ViewGroup viewGroup = this.f1323a.f1350a;
        View view = this.f1324b;
        viewGroup.endViewTransition(view);
        z1 z1Var = this.f1326d;
        if (this.f1325c) {
            c2 c2Var = z1Var.f1436a;
            ue.d.d(view, "viewToAnimate");
            c2Var.a(view);
        }
        this.f1327e.a();
        if (Log.isLoggable("FragmentManager", 2)) {
            z1Var.toString();
        }
    }
}
