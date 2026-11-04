package androidx.recyclerview.widget;

import android.animation.Animator;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class m0 extends s0 {

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ int f2185n;

    /* renamed from: o, reason: collision with root package name */
    public final /* synthetic */ RecyclerView.ViewHolder f2186o;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ u0 f2187p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(u0 u0Var, RecyclerView.ViewHolder viewHolder, int i10, int i11, float f10, float f11, float f12, float f13, int i12, RecyclerView.ViewHolder viewHolder2) {
        super(viewHolder, i11, f10, f11, f12, f13);
        this.f2187p = u0Var;
        this.f2185n = i12;
        this.f2186o = viewHolder2;
    }

    @Override // androidx.recyclerview.widget.s0, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        if (this.f2269k) {
            return;
        }
        int i10 = this.f2185n;
        RecyclerView.ViewHolder viewHolder = this.f2186o;
        u0 u0Var = this.f2187p;
        if (i10 <= 0) {
            u0Var.f2303m.e(u0Var.r, viewHolder);
        } else {
            u0Var.f2292a.add(viewHolder.itemView);
            this.f2266h = true;
            if (i10 > 0) {
                u0Var.r.post(new n0(u0Var, this, i10));
            }
        }
        View view = u0Var.f2313x;
        View view2 = viewHolder.itemView;
        if (view == view2) {
            u0Var.m(view2);
        }
    }
}
