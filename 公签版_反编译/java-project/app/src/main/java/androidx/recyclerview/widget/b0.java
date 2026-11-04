package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.yunpan.appmanage.view.HiveProgressView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class b0 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2036a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2037b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f2038c;

    public /* synthetic */ b0(int i10, Object obj) {
        this.f2036a = i10;
        this.f2038c = obj;
        this.f2037b = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f2036a) {
            case 0:
                this.f2037b = true;
                break;
            case 1:
            default:
                super.onAnimationCancel(animator);
                break;
            case 2:
                this.f2037b = true;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Object obj = this.f2038c;
        switch (this.f2036a) {
            case 0:
                if (!this.f2037b) {
                    d0 d0Var = (d0) obj;
                    if (((Float) d0Var.z.getAnimatedValue()).floatValue() != 0.0f) {
                        d0Var.A = 2;
                        d0Var.f2077s.invalidate();
                        break;
                    } else {
                        d0Var.A = 0;
                        d0Var.h(0);
                        break;
                    }
                } else {
                    this.f2037b = false;
                    break;
                }
            case 1:
                View view = (View) obj;
                h4.d0.f6422a.H(view, 1.0f);
                if (this.f2037b) {
                    view.setLayerType(0, null);
                    break;
                }
                break;
            default:
                if (!this.f2037b) {
                    int[] iArr = HiveProgressView.f4163p;
                    ((HiveProgressView) obj).d();
                    break;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f2036a) {
            case 1:
                WeakHashMap weakHashMap = x0.b1.f17953a;
                View view = (View) this.f2038c;
                if (x0.j0.h(view) && view.getLayerType() == 0) {
                    this.f2037b = true;
                    view.setLayerType(2, null);
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public b0(View view) {
        this.f2036a = 1;
        this.f2037b = false;
        this.f2038c = view;
    }
}
