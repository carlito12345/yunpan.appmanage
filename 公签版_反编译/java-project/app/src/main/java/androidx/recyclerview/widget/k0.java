package androidx.recyclerview.widget;

import android.graphics.Rect;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class k0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u0 f2167a;

    public k0(u0 u0Var) {
        this.f2167a = u0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bf  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        int iC;
        int iC2;
        u0 u0Var = this.f2167a;
        if (u0Var.f2294c != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = u0Var.D;
            long j11 = j10 == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - j10;
            RecyclerView.LayoutManager layoutManager = u0Var.r.getLayoutManager();
            if (u0Var.C == null) {
                u0Var.C = new Rect();
            }
            layoutManager.calculateItemDecorationsForChild(u0Var.f2294c.itemView, u0Var.C);
            if (layoutManager.canScrollHorizontally()) {
                int i10 = (int) (u0Var.f2301j + u0Var.f2299h);
                iC = (i10 - u0Var.C.left) - u0Var.r.getPaddingLeft();
                float f10 = u0Var.f2299h;
                if ((f10 >= 0.0f || iC >= 0) && (f10 <= 0.0f || (iC = ((u0Var.f2294c.itemView.getWidth() + i10) + u0Var.C.right) - (u0Var.r.getWidth() - u0Var.r.getPaddingRight())) <= 0)) {
                    iC = 0;
                }
            }
            if (layoutManager.canScrollVertically()) {
                int i11 = (int) (u0Var.f2302k + u0Var.f2300i);
                int paddingTop = (i11 - u0Var.C.top) - u0Var.r.getPaddingTop();
                float f11 = u0Var.f2300i;
                iC2 = ((f11 >= 0.0f || paddingTop >= 0) && (f11 <= 0.0f || (paddingTop = ((u0Var.f2294c.itemView.getHeight() + i11) + u0Var.C.bottom) - (u0Var.r.getHeight() - u0Var.r.getPaddingBottom())) <= 0)) ? 0 : paddingTop;
            }
            if (iC != 0) {
                RecyclerView recyclerView = u0Var.r;
                int width = u0Var.f2294c.itemView.getWidth();
                u0Var.r.getWidth();
                iC = u0Var.f2303m.c(recyclerView, width, iC, j11);
            }
            int i12 = iC;
            if (iC2 != 0) {
                RecyclerView recyclerView2 = u0Var.r;
                int height = u0Var.f2294c.itemView.getHeight();
                u0Var.r.getHeight();
                iC2 = u0Var.f2303m.c(recyclerView2, height, iC2, j11);
            }
            if (i12 == 0 && iC2 == 0) {
                u0Var.D = Long.MIN_VALUE;
                return;
            }
            if (u0Var.D == Long.MIN_VALUE) {
                u0Var.D = jCurrentTimeMillis;
            }
            u0Var.r.scrollBy(i12, iC2);
            RecyclerView.ViewHolder viewHolder = u0Var.f2294c;
            if (viewHolder != null) {
                u0Var.l(viewHolder);
            }
            u0Var.r.removeCallbacks(u0Var.f2308s);
            RecyclerView recyclerView3 = u0Var.r;
            WeakHashMap weakHashMap = x0.b1.f17953a;
            x0.j0.m(recyclerView3, this);
        }
    }
}
