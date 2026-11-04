package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class g0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f2123e = new ThreadLocal();

    /* renamed from: f, reason: collision with root package name */
    public static final a5.a f2124f = new a5.a(2);

    /* renamed from: b, reason: collision with root package name */
    public long f2126b;

    /* renamed from: c, reason: collision with root package name */
    public long f2127c;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2125a = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f2128d = new ArrayList();

    public static RecyclerView.ViewHolder c(RecyclerView recyclerView, int i10, long j10) {
        int iH = recyclerView.mChildHelper.h();
        for (int i11 = 0; i11 < iH; i11++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.g(i11));
            if (childViewHolderInt.mPosition == i10 && !childViewHolderInt.isInvalid()) {
                return null;
            }
        }
        g2 g2Var = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder viewHolderM = g2Var.m(i10, j10);
            if (viewHolderM != null) {
                if (!viewHolderM.isBound() || viewHolderM.isInvalid()) {
                    g2Var.a(viewHolderM, false);
                } else {
                    g2Var.j(viewHolderM.itemView);
                }
            }
            recyclerView.onExitLayoutOrScroll(false);
            return viewHolderM;
        } catch (Throwable th2) {
            recyclerView.onExitLayoutOrScroll(false);
            throw th2;
        }
    }

    public final void a(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.f2125a.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f2126b == 0) {
                this.f2126b = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        e0 e0Var = recyclerView.mPrefetchRegistry;
        e0Var.f2090a = i10;
        e0Var.f2091b = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(long j10) {
        f0 f0Var;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        f0 f0Var2;
        ArrayList arrayList = this.f2125a;
        int size = arrayList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i11);
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.mPrefetchRegistry.b(recyclerView3, false);
                i10 += recyclerView3.mPrefetchRegistry.f2093d;
            }
        }
        ArrayList arrayList2 = this.f2128d;
        arrayList2.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i13);
            if (recyclerView4.getWindowVisibility() == 0) {
                e0 e0Var = recyclerView4.mPrefetchRegistry;
                int iAbs = Math.abs(e0Var.f2091b) + Math.abs(e0Var.f2090a);
                for (int i14 = 0; i14 < e0Var.f2093d * 2; i14 += 2) {
                    if (i12 >= arrayList2.size()) {
                        f0Var2 = new f0();
                        arrayList2.add(f0Var2);
                    } else {
                        f0Var2 = (f0) arrayList2.get(i12);
                    }
                    int[] iArr = e0Var.f2092c;
                    int i15 = iArr[i14 + 1];
                    f0Var2.f2106a = i15 <= iAbs;
                    f0Var2.f2107b = iAbs;
                    f0Var2.f2108c = i15;
                    f0Var2.f2109d = recyclerView4;
                    f0Var2.f2110e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(arrayList2, f2124f);
        for (int i16 = 0; i16 < arrayList2.size() && (recyclerView = (f0Var = (f0) arrayList2.get(i16)).f2109d) != null; i16++) {
            RecyclerView.ViewHolder viewHolderC = c(recyclerView, f0Var.f2110e, f0Var.f2106a ? Long.MAX_VALUE : j10);
            if (viewHolderC != null && viewHolderC.mNestedRecyclerView != null && viewHolderC.isBound() && !viewHolderC.isInvalid() && (recyclerView2 = viewHolderC.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.h() != 0) {
                    recyclerView2.removeAndRecycleViews();
                }
                e0 e0Var2 = recyclerView2.mPrefetchRegistry;
                e0Var2.b(recyclerView2, true);
                if (e0Var2.f2093d != 0) {
                    try {
                        t0.o.a("RV Nested Prefetch");
                        n2 n2Var = recyclerView2.mState;
                        m1 m1Var = recyclerView2.mAdapter;
                        n2Var.f2202d = 1;
                        n2Var.f2203e = m1Var.b();
                        n2Var.f2205g = false;
                        n2Var.f2206h = false;
                        n2Var.f2207i = false;
                        for (int i17 = 0; i17 < e0Var2.f2093d * 2; i17 += 2) {
                            c(recyclerView2, e0Var2.f2092c[i17], j10);
                        }
                    } finally {
                        t0.o.b();
                    }
                }
            }
            f0Var.f2106a = false;
            f0Var.f2107b = 0;
            f0Var.f2108c = 0;
            f0Var.f2109d = null;
            f0Var.f2110e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            t0.o.a("RV Prefetch");
            ArrayList arrayList = this.f2125a;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2127c);
                    this.f2126b = 0L;
                    t0.o.b();
                }
            }
        } finally {
            this.f2126b = 0L;
            t0.o.b();
        }
    }
}
