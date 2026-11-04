package h4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class q extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6475a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6476b;

    public /* synthetic */ q(int i10, Object obj) {
        this.f6475a = i10;
        this.f6476b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f6475a) {
            case 4:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f6476b;
                actionBarOverlayLayout.C = null;
                actionBarOverlayLayout.f940k = false;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f6475a) {
            case 0:
                ((t) this.f6476b).m();
                animator.removeListener(this);
                break;
            case 1:
                i4.f fVar = (i4.f) this.f6476b;
                ArrayList arrayList = new ArrayList(fVar.f8536f);
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ColorStateList colorStateList = ((a7.a) arrayList.get(i10)).f450b.f462p;
                    if (colorStateList != null) {
                        com.bumptech.glide.c.f0(fVar, colorStateList);
                    }
                }
                break;
            case 2:
                q7.l lVar = (q7.l) this.f6476b;
                lVar.q();
                lVar.r.start();
                break;
            case 3:
                ((HideBottomViewOnScrollBehavior) this.f6476b).f3453h = null;
                break;
            case 4:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f6476b;
                actionBarOverlayLayout.C = null;
                actionBarOverlayLayout.f940k = false;
                break;
            case 5:
                ((w8.b) this.f6476b).getClass();
                break;
            default:
                ((wa.a) this.f6476b).d();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f6475a) {
            case 1:
                i4.f fVar = (i4.f) this.f6476b;
                ArrayList arrayList = new ArrayList(fVar.f8536f);
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    a7.d dVar = ((a7.a) arrayList.get(i10)).f450b;
                    ColorStateList colorStateList = dVar.f462p;
                    if (colorStateList != null) {
                        com.bumptech.glide.c.e0(fVar, colorStateList.getColorForState(dVar.f465t, colorStateList.getDefaultColor()));
                    }
                }
                break;
            case 5:
                ((w8.b) this.f6476b).getClass();
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
