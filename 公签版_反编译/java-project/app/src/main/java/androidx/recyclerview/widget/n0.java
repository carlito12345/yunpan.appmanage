package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f2197a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u0 f2198b;

    public n0(u0 u0Var, m0 m0Var, int i10) {
        this.f2198b = u0Var;
        this.f2197a = m0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u0 u0Var = this.f2198b;
        RecyclerView recyclerView = u0Var.r;
        if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
            return;
        }
        m0 m0Var = this.f2197a;
        if (m0Var.f2269k) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = m0Var.f2263e;
        if (viewHolder.getAbsoluteAdapterPosition() != -1) {
            t1 itemAnimator = u0Var.r.getItemAnimator();
            if (itemAnimator == null || !itemAnimator.f()) {
                ArrayList arrayList = u0Var.f2306p;
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (((s0) arrayList.get(i10)).l) {
                    }
                }
                u0Var.f2303m.getClass();
                ue.d.e(viewHolder, "viewHolder");
                viewHolder.getBindingAdapterPosition();
                return;
            }
            u0Var.r.post(this);
        }
    }
}
