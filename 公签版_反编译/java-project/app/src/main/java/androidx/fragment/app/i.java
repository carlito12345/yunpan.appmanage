package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class i extends j {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1288c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1289d;

    /* renamed from: e, reason: collision with root package name */
    public k0 f1290e;

    public i(z1 z1Var, t0.g gVar, boolean z) {
        super(z1Var, gVar);
        this.f1288c = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final k0 c(Context context) {
        Animation animationLoadAnimation;
        k0 k0Var;
        k0 k0Var2;
        int iJ0;
        if (this.f1289d) {
            return this.f1290e;
        }
        z1 z1Var = this.f1305a;
        boolean z = z1Var.f1436a == c2.VISIBLE;
        Fragment fragment = z1Var.f1438c;
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = this.f1288c ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
            if (animationOnCreateAnimation != null) {
                k0Var2 = new k0(animationOnCreateAnimation);
            } else {
                Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
                if (animatorOnCreateAnimator != null) {
                    k0Var2 = new k0(animatorOnCreateAnimator);
                } else {
                    if (popEnterAnim == 0 && nextTransition != 0) {
                        if (nextTransition == 4097) {
                            iJ0 = z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                        } else if (nextTransition == 8194) {
                            iJ0 = z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                        } else if (nextTransition == 8197) {
                            iJ0 = z ? com.bumptech.glide.c.j0(context, android.R.attr.activityCloseEnterAnimation) : com.bumptech.glide.c.j0(context, android.R.attr.activityCloseExitAnimation);
                        } else if (nextTransition == 4099) {
                            iJ0 = z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                        } else if (nextTransition != 4100) {
                            popEnterAnim = -1;
                        } else {
                            iJ0 = z ? com.bumptech.glide.c.j0(context, android.R.attr.activityOpenEnterAnimation) : com.bumptech.glide.c.j0(context, android.R.attr.activityOpenExitAnimation);
                        }
                        popEnterAnim = iJ0;
                    }
                    if (popEnterAnim == 0) {
                        k0Var2 = null;
                    } else {
                        boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(popEnterAnim));
                        if (zEquals) {
                            try {
                                animationLoadAnimation = AnimationUtils.loadAnimation(context, popEnterAnim);
                            } catch (Resources.NotFoundException e7) {
                                throw e7;
                            } catch (RuntimeException unused) {
                            }
                            if (animationLoadAnimation != null) {
                                k0Var = new k0(animationLoadAnimation);
                                k0Var2 = k0Var;
                            }
                            k0Var2 = null;
                        } else {
                            try {
                                Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, popEnterAnim);
                                if (animatorLoadAnimator != null) {
                                    k0Var = new k0(animatorLoadAnimator);
                                    k0Var2 = k0Var;
                                }
                            } catch (RuntimeException e10) {
                                if (zEquals) {
                                    throw e10;
                                }
                                Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, popEnterAnim);
                                if (animationLoadAnimation2 != null) {
                                    k0Var2 = new k0(animationLoadAnimation2);
                                }
                            }
                            k0Var2 = null;
                        }
                    }
                }
            }
        }
        this.f1290e = k0Var2;
        this.f1289d = true;
        return k0Var2;
    }
}
