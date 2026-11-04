package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public final class y0 {

    /* renamed from: b, reason: collision with root package name */
    public int f2365b;

    /* renamed from: c, reason: collision with root package name */
    public int f2366c;

    /* renamed from: d, reason: collision with root package name */
    public int f2367d;

    /* renamed from: e, reason: collision with root package name */
    public int f2368e;

    /* renamed from: f, reason: collision with root package name */
    public int f2369f;

    /* renamed from: g, reason: collision with root package name */
    public int f2370g;

    /* renamed from: j, reason: collision with root package name */
    public int f2373j;
    public boolean l;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2364a = true;

    /* renamed from: h, reason: collision with root package name */
    public int f2371h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f2372i = 0;

    /* renamed from: k, reason: collision with root package name */
    public List f2374k = null;

    public final void a(View view) {
        int viewLayoutPosition;
        int size = this.f2374k.size();
        View view2 = null;
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < size; i11++) {
            View view3 = ((RecyclerView.ViewHolder) this.f2374k.get(i11)).itemView;
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
            if (view3 != view && !layoutParams.isItemRemoved() && (viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.f2367d) * this.f2368e) >= 0 && viewLayoutPosition < i10) {
                view2 = view3;
                if (viewLayoutPosition == 0) {
                    break;
                } else {
                    i10 = viewLayoutPosition;
                }
            }
        }
        if (view2 == null) {
            this.f2367d = -1;
        } else {
            this.f2367d = ((RecyclerView.LayoutParams) view2.getLayoutParams()).getViewLayoutPosition();
        }
    }

    public final View b(g2 g2Var) {
        List list = this.f2374k;
        if (list == null) {
            View viewD = g2Var.d(this.f2367d);
            this.f2367d += this.f2368e;
            return viewD;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = ((RecyclerView.ViewHolder) this.f2374k.get(i10)).itemView;
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (!layoutParams.isItemRemoved() && this.f2367d == layoutParams.getViewLayoutPosition()) {
                a(view);
                return view;
            }
        }
        return null;
    }
}
