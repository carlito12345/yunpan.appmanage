package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c3 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2052a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f2053b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public int f2054c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f2055d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f2056e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f2057f;

    public c3(StaggeredGridLayoutManager staggeredGridLayoutManager, int i10) {
        this.f2057f = staggeredGridLayoutManager;
        this.f2056e = i10;
    }

    public final void a(View view) {
        y2 y2Var = (y2) view.getLayoutParams();
        y2Var.f2375a = this;
        ArrayList arrayList = this.f2052a;
        arrayList.add(view);
        this.f2054c = Integer.MIN_VALUE;
        if (arrayList.size() == 1) {
            this.f2053b = Integer.MIN_VALUE;
        }
        if (y2Var.isItemRemoved() || y2Var.isItemChanged()) {
            this.f2055d = this.f2057f.mPrimaryOrientation.c(view) + this.f2055d;
        }
    }

    public final void b() {
        z2 z2VarF;
        View view = (View) ta.q.h(1, this.f2052a);
        y2 y2Var = (y2) view.getLayoutParams();
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f2057f;
        this.f2054c = staggeredGridLayoutManager.mPrimaryOrientation.b(view);
        if (y2Var.f2376b && (z2VarF = staggeredGridLayoutManager.mLazySpanLookup.f(y2Var.getViewLayoutPosition())) != null && z2VarF.f2387b == 1) {
            int i10 = this.f2054c;
            int[] iArr = z2VarF.f2388c;
            this.f2054c = (iArr == null ? 0 : iArr[this.f2056e]) + i10;
        }
    }

    public final void c() {
        z2 z2VarF;
        View view = (View) this.f2052a.get(0);
        y2 y2Var = (y2) view.getLayoutParams();
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f2057f;
        this.f2053b = staggeredGridLayoutManager.mPrimaryOrientation.e(view);
        if (y2Var.f2376b && (z2VarF = staggeredGridLayoutManager.mLazySpanLookup.f(y2Var.getViewLayoutPosition())) != null && z2VarF.f2387b == -1) {
            int i10 = this.f2053b;
            int[] iArr = z2VarF.f2388c;
            this.f2053b = i10 - (iArr != null ? iArr[this.f2056e] : 0);
        }
    }

    public final void d() {
        this.f2052a.clear();
        this.f2053b = Integer.MIN_VALUE;
        this.f2054c = Integer.MIN_VALUE;
        this.f2055d = 0;
    }

    public final int e() {
        return this.f2057f.mReverseLayout ? g(r1.size() - 1, -1, false, false, true) : g(0, this.f2052a.size(), false, false, true);
    }

    public final int f() {
        return this.f2057f.mReverseLayout ? g(0, this.f2052a.size(), false, false, true) : g(r1.size() - 1, -1, false, false, true);
    }

    public final int g(int i10, int i11, boolean z, boolean z4, boolean z10) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f2057f;
        int iK = staggeredGridLayoutManager.mPrimaryOrientation.k();
        int iG = staggeredGridLayoutManager.mPrimaryOrientation.g();
        int i12 = i10;
        int i13 = i11 > i12 ? 1 : -1;
        while (i12 != i11) {
            View view = (View) this.f2052a.get(i12);
            int iE = staggeredGridLayoutManager.mPrimaryOrientation.e(view);
            int iB = staggeredGridLayoutManager.mPrimaryOrientation.b(view);
            boolean z11 = false;
            boolean z12 = !z10 ? iE >= iG : iE > iG;
            if (!z10 ? iB > iK : iB >= iK) {
                z11 = true;
            }
            if (z12 && z11) {
                if (z && z4) {
                    if (iE >= iK && iB <= iG) {
                        return staggeredGridLayoutManager.getPosition(view);
                    }
                } else {
                    if (z4) {
                        return staggeredGridLayoutManager.getPosition(view);
                    }
                    if (iE < iK || iB > iG) {
                        return staggeredGridLayoutManager.getPosition(view);
                    }
                }
            }
            i12 += i13;
        }
        return -1;
    }

    public final int h(int i10) {
        int i11 = this.f2054c;
        if (i11 != Integer.MIN_VALUE) {
            return i11;
        }
        if (this.f2052a.size() == 0) {
            return i10;
        }
        b();
        return this.f2054c;
    }

    public final View i(int i10, int i11) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f2057f;
        ArrayList arrayList = this.f2052a;
        View view = null;
        if (i11 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.mReverseLayout && staggeredGridLayoutManager.getPosition(view2) >= i10) || ((!staggeredGridLayoutManager.mReverseLayout && staggeredGridLayoutManager.getPosition(view2) <= i10) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i12 = 0;
            while (i12 < size2) {
                View view3 = (View) arrayList.get(i12);
                if ((staggeredGridLayoutManager.mReverseLayout && staggeredGridLayoutManager.getPosition(view3) <= i10) || ((!staggeredGridLayoutManager.mReverseLayout && staggeredGridLayoutManager.getPosition(view3) >= i10) || !view3.hasFocusable())) {
                    break;
                }
                i12++;
                view = view3;
            }
        }
        return view;
    }

    public final int j(int i10) {
        int i11 = this.f2053b;
        if (i11 != Integer.MIN_VALUE) {
            return i11;
        }
        if (this.f2052a.size() == 0) {
            return i10;
        }
        c();
        return this.f2053b;
    }

    public final void k() {
        ArrayList arrayList = this.f2052a;
        int size = arrayList.size();
        View view = (View) arrayList.remove(size - 1);
        y2 y2Var = (y2) view.getLayoutParams();
        y2Var.f2375a = null;
        if (y2Var.isItemRemoved() || y2Var.isItemChanged()) {
            this.f2055d -= this.f2057f.mPrimaryOrientation.c(view);
        }
        if (size == 1) {
            this.f2053b = Integer.MIN_VALUE;
        }
        this.f2054c = Integer.MIN_VALUE;
    }

    public final void l() {
        ArrayList arrayList = this.f2052a;
        View view = (View) arrayList.remove(0);
        y2 y2Var = (y2) view.getLayoutParams();
        y2Var.f2375a = null;
        if (arrayList.size() == 0) {
            this.f2054c = Integer.MIN_VALUE;
        }
        if (y2Var.isItemRemoved() || y2Var.isItemChanged()) {
            this.f2055d -= this.f2057f.mPrimaryOrientation.c(view);
        }
        this.f2053b = Integer.MIN_VALUE;
    }

    public final void m(View view) {
        y2 y2Var = (y2) view.getLayoutParams();
        y2Var.f2375a = this;
        ArrayList arrayList = this.f2052a;
        arrayList.add(0, view);
        this.f2053b = Integer.MIN_VALUE;
        if (arrayList.size() == 1) {
            this.f2054c = Integer.MIN_VALUE;
        }
        if (y2Var.isItemRemoved() || y2Var.isItemChanged()) {
            this.f2055d = this.f2057f.mPrimaryOrientation.c(view) + this.f2055d;
        }
    }
}
