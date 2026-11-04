package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class t1 {

    /* renamed from: a, reason: collision with root package name */
    public r1 f2278a = null;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2279b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final long f2280c = 120;

    /* renamed from: d, reason: collision with root package name */
    public final long f2281d = 120;

    /* renamed from: e, reason: collision with root package name */
    public final long f2282e = 250;

    /* renamed from: f, reason: collision with root package name */
    public final long f2283f = 250;

    public static void b(RecyclerView.ViewHolder viewHolder) {
        int i10 = viewHolder.mFlags;
        if (!viewHolder.isInvalid() && (i10 & 4) == 0) {
            viewHolder.getOldPosition();
            viewHolder.getAbsoluteAdapterPosition();
        }
    }

    public abstract boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, s1 s1Var, s1 s1Var2);

    public final void c(RecyclerView.ViewHolder viewHolder) {
        r1 r1Var = this.f2278a;
        if (r1Var != null) {
            u1 u1Var = (u1) r1Var;
            u1Var.getClass();
            viewHolder.setIsRecyclable(true);
            if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                viewHolder.mShadowedHolder = null;
            }
            viewHolder.mShadowingHolder = null;
            if (viewHolder.shouldBeKeptAsChild()) {
                return;
            }
            View view = viewHolder.itemView;
            RecyclerView recyclerView = u1Var.f2315a;
            if (recyclerView.removeAnimatingView(view) || !viewHolder.isTmpDetached()) {
                return;
            }
            recyclerView.removeDetachedView(viewHolder.itemView, false);
        }
    }

    public abstract void d(RecyclerView.ViewHolder viewHolder);

    public abstract void e();

    public abstract boolean f();
}
