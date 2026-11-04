package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final k1 f2147a;

    /* renamed from: e, reason: collision with root package name */
    public View f2151e;

    /* renamed from: d, reason: collision with root package name */
    public int f2150d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final h f2148b = new h();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2149c = new ArrayList();

    public i(k1 k1Var) {
        this.f2147a = k1Var;
    }

    public final void a(View view, int i10, boolean z) {
        RecyclerView recyclerView = this.f2147a.f2168a;
        int childCount = i10 < 0 ? recyclerView.getChildCount() : f(i10);
        this.f2148b.o(childCount, z);
        if (z) {
            i(view);
        }
        recyclerView.addView(view, childCount);
        recyclerView.dispatchChildAttached(view);
    }

    public final void b(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z) {
        RecyclerView recyclerView = this.f2147a.f2168a;
        int childCount = i10 < 0 ? recyclerView.getChildCount() : f(i10);
        this.f2148b.o(childCount, z);
        if (z) {
            i(view);
        }
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb2 = new StringBuilder("Called attach on a child which is not detached: ");
                sb2.append(childViewHolderInt);
                throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, sb2));
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                childViewHolderInt.toString();
            }
            childViewHolderInt.clearTmpDetachFlag();
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb3 = new StringBuilder("No ViewHolder found for child: ");
            sb3.append(view);
            sb3.append(", index: ");
            sb3.append(childCount);
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, sb3));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i10) {
        int iF = f(i10);
        this.f2148b.p(iF);
        RecyclerView recyclerView = this.f2147a.f2168a;
        View childAt = recyclerView.getChildAt(iF);
        if (childAt != null) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb2 = new StringBuilder("called detach on an already detached child ");
                    sb2.append(childViewHolderInt);
                    throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, sb2));
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                childViewHolderInt.addFlags(256);
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb3 = new StringBuilder("No view at offset ");
            sb3.append(iF);
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, sb3));
        }
        recyclerView.detachViewFromParent(iF);
    }

    public final View d(int i10) {
        return this.f2147a.f2168a.getChildAt(f(i10));
    }

    public final int e() {
        return this.f2147a.f2168a.getChildCount() - this.f2149c.size();
    }

    public final int f(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int childCount = this.f2147a.f2168a.getChildCount();
        int i11 = i10;
        while (i11 < childCount) {
            h hVar = this.f2148b;
            int iL = i10 - (i11 - hVar.l(i11));
            if (iL == 0) {
                while (hVar.n(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iL;
        }
        return -1;
    }

    public final View g(int i10) {
        return this.f2147a.f2168a.getChildAt(i10);
    }

    public final int h() {
        return this.f2147a.f2168a.getChildCount();
    }

    public final void i(View view) {
        this.f2149c.add(view);
        k1 k1Var = this.f2147a;
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(k1Var.f2168a);
        }
    }

    public final int j(View view) {
        int iIndexOfChild = this.f2147a.f2168a.indexOfChild(view);
        if (iIndexOfChild == -1) {
            return -1;
        }
        h hVar = this.f2148b;
        if (hVar.n(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - hVar.l(iIndexOfChild);
    }

    public final void k(int i10) {
        k1 k1Var = this.f2147a;
        int i11 = this.f2150d;
        if (i11 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i11 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            int iF = f(i10);
            View childAt = k1Var.f2168a.getChildAt(iF);
            if (childAt == null) {
                this.f2150d = 0;
                this.f2151e = null;
                return;
            }
            this.f2150d = 1;
            this.f2151e = childAt;
            if (this.f2148b.p(iF)) {
                l(childAt);
            }
            k1Var.a(iF);
            this.f2150d = 0;
            this.f2151e = null;
        } catch (Throwable th2) {
            this.f2150d = 0;
            this.f2151e = null;
            throw th2;
        }
    }

    public final void l(View view) {
        if (this.f2149c.remove(view)) {
            k1 k1Var = this.f2147a;
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(k1Var.f2168a);
            }
        }
    }

    public final String toString() {
        return this.f2148b.toString() + ", hidden list:" + this.f2149c.size();
    }
}
