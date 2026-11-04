package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bumptech.glide.d;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.R;
import h4.q;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k0.a;
import l2.z;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends a {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f3446a;

    /* renamed from: b, reason: collision with root package name */
    public int f3447b;

    /* renamed from: c, reason: collision with root package name */
    public int f3448c;

    /* renamed from: d, reason: collision with root package name */
    public TimeInterpolator f3449d;

    /* renamed from: e, reason: collision with root package name */
    public TimeInterpolator f3450e;

    /* renamed from: f, reason: collision with root package name */
    public int f3451f;

    /* renamed from: g, reason: collision with root package name */
    public int f3452g;

    /* renamed from: h, reason: collision with root package name */
    public ViewPropertyAnimator f3453h;

    public HideBottomViewOnScrollBehavior() {
        this.f3446a = new LinkedHashSet();
        this.f3451f = 0;
        this.f3452g = 2;
    }

    @Override // k0.a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i10) {
        this.f3451f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f3447b = d.b0(view.getContext(), R.attr.motionDurationLong2, 225);
        this.f3448c = d.b0(view.getContext(), R.attr.motionDurationMedium4, CarSettingID.Recv.PCS_EVENT_RECORDST);
        this.f3449d = d.c0(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, r6.a.f13713d);
        this.f3450e = d.c0(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, r6.a.f13712c);
        return false;
    }

    @Override // k0.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
        LinkedHashSet linkedHashSet = this.f3446a;
        if (i10 > 0) {
            if (this.f3452g == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f3453h;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.f3452g = 1;
            Iterator it = linkedHashSet.iterator();
            if (it.hasNext()) {
                throw z.d(it);
            }
            this.f3453h = view.animate().translationY(this.f3451f).setInterpolator(this.f3450e).setDuration(this.f3448c).setListener(new q(3, this));
            return;
        }
        if (i10 >= 0 || this.f3452g == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.f3453h;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
            view.clearAnimation();
        }
        this.f3452g = 2;
        Iterator it2 = linkedHashSet.iterator();
        if (it2.hasNext()) {
            throw z.d(it2);
        }
        this.f3453h = view.animate().translationY(0).setInterpolator(this.f3449d).setDuration(this.f3447b).setListener(new q(3, this));
    }

    @Override // k0.a
    public boolean o(View view, int i10, int i11) {
        return i10 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        this.f3446a = new LinkedHashSet();
        this.f3451f = 0;
        this.f3452g = 2;
    }
}
