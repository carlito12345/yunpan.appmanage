package v3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public final class x extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16596a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f16597b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y f16598c;

    public /* synthetic */ x(y yVar, t tVar, int i10) {
        this.f16596a = i10;
        this.f16598c = yVar;
        this.f16597b = tVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f16596a) {
            case 0:
                y yVar = this.f16598c;
                yVar.i(1);
                if (yVar.C) {
                    this.f16597b.post(yVar.f16616t);
                    yVar.C = false;
                    break;
                }
                break;
            case 1:
                y yVar2 = this.f16598c;
                yVar2.i(2);
                if (yVar2.C) {
                    this.f16597b.post(yVar2.f16616t);
                    yVar2.C = false;
                    break;
                }
                break;
            default:
                y yVar3 = this.f16598c;
                yVar3.i(2);
                if (yVar3.C) {
                    this.f16597b.post(yVar3.f16616t);
                    yVar3.C = false;
                    break;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f16596a) {
            case 0:
                this.f16598c.i(3);
                break;
            case 1:
                this.f16598c.i(3);
                break;
            default:
                this.f16598c.i(3);
                break;
        }
    }
}
