package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.animation.Animation;

/* loaded from: classes.dex */
public final class m implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z1 f1337a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f1338b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f1339c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i f1340d;

    public m(z1 z1Var, n nVar, View view, i iVar) {
        this.f1337a = z1Var;
        this.f1338b = nVar;
        this.f1339c = view;
        this.f1340d = iVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        ue.d.e(animation, "animation");
        n nVar = this.f1338b;
        nVar.f1350a.post(new d(nVar, this.f1339c, this.f1340d));
        if (Log.isLoggable("FragmentManager", 2)) {
            this.f1337a.toString();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        ue.d.e(animation, "animation");
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        ue.d.e(animation, "animation");
        if (Log.isLoggable("FragmentManager", 2)) {
            this.f1337a.toString();
        }
    }
}
