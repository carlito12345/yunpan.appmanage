package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class g2 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2130a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f2131b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2132c;

    /* renamed from: d, reason: collision with root package name */
    public final List f2133d;

    /* renamed from: e, reason: collision with root package name */
    public int f2134e;

    /* renamed from: f, reason: collision with root package name */
    public int f2135f;

    /* renamed from: g, reason: collision with root package name */
    public f2 f2136g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2137h;

    public g2(RecyclerView recyclerView) {
        this.f2137h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f2130a = arrayList;
        this.f2131b = null;
        this.f2132c = new ArrayList();
        this.f2133d = Collections.unmodifiableList(arrayList);
        this.f2134e = 2;
        this.f2135f = 2;
    }

    public static void e(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                e((ViewGroup) childAt, true);
            }
        }
        if (z) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    public final void a(RecyclerView.ViewHolder viewHolder, boolean z) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(viewHolder);
        View view = viewHolder.itemView;
        RecyclerView recyclerView = this.f2137h;
        s2 s2Var = recyclerView.mAccessibilityDelegate;
        if (s2Var != null) {
            r2 r2Var = s2Var.f2274e;
            x0.b1.x(view, r2Var instanceof r2 ? (x0.c) r2Var.f2248e.remove(view) : null);
        }
        if (z) {
            h2 h2Var = recyclerView.mRecyclerListener;
            if (h2Var != null) {
                ((androidx.leanback.widget.a) h2Var).a(viewHolder);
            }
            int size = recyclerView.mRecyclerListeners.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((androidx.leanback.widget.a) recyclerView.mRecyclerListeners.get(i10)).a(viewHolder);
            }
            m1 m1Var = recyclerView.mAdapter;
            if (m1Var != null) {
                m1Var.n(viewHolder);
            }
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.d(viewHolder);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                viewHolder.toString();
            }
        }
        viewHolder.mBindingAdapter = null;
        viewHolder.mOwnerRecyclerView = null;
        f2 f2VarC = c();
        f2VarC.getClass();
        int itemViewType = viewHolder.getItemViewType();
        ArrayList arrayList = f2VarC.a(itemViewType).f2094a;
        if (((e2) f2VarC.f2114a.get(itemViewType)).f2095b <= arrayList.size()) {
            q4.a.d(viewHolder.itemView);
        } else {
            if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(viewHolder)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            viewHolder.resetInternal();
            arrayList.add(viewHolder);
        }
    }

    public final int b(int i10) {
        RecyclerView recyclerView = this.f2137h;
        if (i10 >= 0 && i10 < recyclerView.mState.b()) {
            return !recyclerView.mState.f2205g ? i10 : recyclerView.mAdapterHelper.f(i10, 0);
        }
        StringBuilder sbN = g.b.n("invalid position ", i10, ". State item count is ");
        sbN.append(recyclerView.mState.b());
        sbN.append(recyclerView.exceptionLabel());
        throw new IndexOutOfBoundsException(sbN.toString());
    }

    public final f2 c() {
        if (this.f2136g == null) {
            this.f2136g = new f2();
            f();
        }
        return this.f2136g;
    }

    public final View d(int i10) {
        return m(i10, Long.MAX_VALUE).itemView;
    }

    public final void f() {
        if (this.f2136g != null) {
            RecyclerView recyclerView = this.f2137h;
            if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            f2 f2Var = this.f2136g;
            f2Var.f2116c.add(recyclerView.mAdapter);
        }
    }

    public final void g(m1 m1Var, boolean z) {
        f2 f2Var = this.f2136g;
        if (f2Var == null) {
            return;
        }
        Set set = f2Var.f2116c;
        set.remove(m1Var);
        if (set.size() != 0 || z) {
            return;
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = f2Var.f2114a;
            if (i10 >= sparseArray.size()) {
                return;
            }
            ArrayList arrayList = ((e2) sparseArray.get(sparseArray.keyAt(i10))).f2094a;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                q4.a.d(((RecyclerView.ViewHolder) arrayList.get(i11)).itemView);
            }
            i10++;
        }
    }

    public final void h() {
        ArrayList arrayList = this.f2132c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            i(size);
        }
        arrayList.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            e0 e0Var = this.f2137h.mPrefetchRegistry;
            int[] iArr = e0Var.f2092c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            e0Var.f2093d = 0;
        }
    }

    public final void i(int i10) {
        int i11 = RecyclerView.HORIZONTAL;
        ArrayList arrayList = this.f2132c;
        RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList.get(i10);
        if (RecyclerView.sVerboseLoggingEnabled && viewHolder != null) {
            viewHolder.toString();
        }
        a(viewHolder, true);
        arrayList.remove(i10);
    }

    public final void j(View view) {
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zIsTmpDetached = childViewHolderInt.isTmpDetached();
        RecyclerView recyclerView = this.f2137h;
        if (zIsTmpDetached) {
            recyclerView.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.unScrap();
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        k(childViewHolderInt);
        if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        recyclerView.mItemAnimator.d(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c0, code lost:
    
        r4 = r4 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(RecyclerView.ViewHolder viewHolder) {
        boolean z;
        int i10;
        boolean zIsScrap = viewHolder.isScrap();
        boolean z4 = true;
        RecyclerView recyclerView = this.f2137h;
        if (zIsScrap || viewHolder.itemView.getParent() != null) {
            StringBuilder sb2 = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb2.append(viewHolder.isScrap());
            sb2.append(" isAttached:");
            sb2.append(viewHolder.itemView.getParent() != null);
            sb2.append(recyclerView.exceptionLabel());
            throw new IllegalArgumentException(sb2.toString());
        }
        if (viewHolder.isTmpDetached()) {
            StringBuilder sb3 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb3.append(viewHolder);
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, sb3));
        }
        if (viewHolder.shouldIgnore()) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        boolean zDoesTransientStatePreventRecycling = viewHolder.doesTransientStatePreventRecycling();
        m1 m1Var = recyclerView.mAdapter;
        boolean z10 = m1Var != null && zDoesTransientStatePreventRecycling && m1Var.k(viewHolder);
        boolean z11 = RecyclerView.sDebugAssertionsEnabled;
        ArrayList arrayList = this.f2132c;
        if (z11 && arrayList.contains(viewHolder)) {
            StringBuilder sb4 = new StringBuilder("cached view received recycle internal? ");
            sb4.append(viewHolder);
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, sb4));
        }
        if (z10 || viewHolder.isRecyclable()) {
            if (this.f2135f <= 0 || viewHolder.hasAnyOfTheFlags(526)) {
                z = false;
            } else {
                int size = arrayList.size();
                if (size >= this.f2135f && size > 0) {
                    i(0);
                    size--;
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0) {
                    e0 e0Var = recyclerView.mPrefetchRegistry;
                    int i11 = viewHolder.mPosition;
                    if (e0Var.f2092c != null) {
                        int i12 = e0Var.f2093d * 2;
                        for (int i13 = 0; i13 < i12; i13 += 2) {
                            if (e0Var.f2092c[i13] == i11) {
                                break;
                            }
                        }
                        i10 = size - 1;
                        loop1: while (i10 >= 0) {
                            int i14 = ((RecyclerView.ViewHolder) arrayList.get(i10)).mPosition;
                            e0 e0Var2 = recyclerView.mPrefetchRegistry;
                            if (e0Var2.f2092c == null) {
                                break;
                            }
                            int i15 = e0Var2.f2093d * 2;
                            for (int i16 = 0; i16 < i15; i16 += 2) {
                                if (e0Var2.f2092c[i16] == i14) {
                                    break;
                                }
                            }
                            break loop1;
                        }
                        size = i10 + 1;
                    } else {
                        i10 = size - 1;
                        loop1: while (i10 >= 0) {
                        }
                        size = i10 + 1;
                    }
                    recyclerView.mViewInfoStore.d(viewHolder);
                    if (z || z4 || !zDoesTransientStatePreventRecycling) {
                        return;
                    }
                    q4.a.d(viewHolder.itemView);
                    viewHolder.mBindingAdapter = null;
                    viewHolder.mOwnerRecyclerView = null;
                    return;
                }
                arrayList.add(size, viewHolder);
                z = true;
            }
            if (!z) {
                a(viewHolder, true);
                z = z;
                recyclerView.mViewInfoStore.d(viewHolder);
                if (z) {
                    return;
                } else {
                    return;
                }
            }
            z = z;
        } else if (RecyclerView.sVerboseLoggingEnabled) {
            recyclerView.exceptionLabel();
        }
        z4 = false;
        recyclerView.mViewInfoStore.d(viewHolder);
        if (z) {
        }
    }

    public final void l(View view) {
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zHasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(12);
        RecyclerView recyclerView = this.f2137h;
        if (!zHasAnyOfTheFlags && childViewHolderInt.isUpdated() && !recyclerView.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.f2131b == null) {
                this.f2131b = new ArrayList();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.f2131b.add(childViewHolderInt);
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.f2189b) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        childViewHolderInt.setScrapContainer(this, false);
        this.f2130a.add(childViewHolderInt);
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final RecyclerView.ViewHolder m(int i10, long j10) {
        boolean z;
        RecyclerView.ViewHolder viewHolderI;
        boolean z4;
        boolean z10;
        ViewGroup.LayoutParams layoutParams;
        RecyclerView.LayoutParams layoutParams2;
        RecyclerView recyclerViewFindNestedRecyclerView;
        RecyclerView.ViewHolder viewHolder;
        RecyclerView.ViewHolder viewHolder2;
        View view;
        boolean z11;
        int size;
        int iF;
        RecyclerView recyclerView = this.f2137h;
        if (i10 < 0 || i10 >= recyclerView.mState.b()) {
            StringBuilder sbO = ta.q.o(i10, i10, "Invalid item position ", "(", "). Item count:");
            sbO.append(recyclerView.mState.b());
            sbO.append(recyclerView.exceptionLabel());
            throw new IndexOutOfBoundsException(sbO.toString());
        }
        if (recyclerView.mState.f2205g) {
            ArrayList arrayList = this.f2131b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                viewHolderI = null;
                z = viewHolderI == null;
            } else {
                int i11 = 0;
                while (true) {
                    if (i11 < size) {
                        viewHolderI = (RecyclerView.ViewHolder) this.f2131b.get(i11);
                        if (!viewHolderI.wasReturnedFromScrap() && viewHolderI.getLayoutPosition() == i10) {
                            viewHolderI.addFlags(32);
                            break;
                        }
                        i11++;
                    } else if (recyclerView.mAdapter.f2189b && (iF = recyclerView.mAdapterHelper.f(i10, 0)) > 0 && iF < recyclerView.mAdapter.b()) {
                        long jC = recyclerView.mAdapter.c(iF);
                        for (int i12 = 0; i12 < size; i12++) {
                            RecyclerView.ViewHolder viewHolder3 = (RecyclerView.ViewHolder) this.f2131b.get(i12);
                            if (!viewHolder3.wasReturnedFromScrap() && viewHolder3.getItemId() == jC) {
                                viewHolder3.addFlags(32);
                                viewHolderI = viewHolder3;
                                break;
                            }
                        }
                    }
                }
                viewHolderI = null;
                if (viewHolderI == null) {
                }
            }
        } else {
            z = false;
            viewHolderI = null;
        }
        ArrayList arrayList2 = this.f2132c;
        ArrayList arrayList3 = this.f2130a;
        if (viewHolderI == null) {
            int size2 = arrayList3.size();
            for (int i13 = 0; i13 < size2; i13++) {
                RecyclerView.ViewHolder viewHolder4 = (RecyclerView.ViewHolder) arrayList3.get(i13);
                if (!viewHolder4.wasReturnedFromScrap() && viewHolder4.getLayoutPosition() == i10 && !viewHolder4.isInvalid() && (recyclerView.mState.f2205g || !viewHolder4.isRemoved())) {
                    viewHolder4.addFlags(32);
                    viewHolderI = viewHolder4;
                    break;
                }
            }
            ArrayList arrayList4 = recyclerView.mChildHelper.f2149c;
            int size3 = arrayList4.size();
            int i14 = 0;
            while (true) {
                if (i14 >= size3) {
                    view = null;
                    break;
                }
                view = (View) arrayList4.get(i14);
                RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (childViewHolderInt.getLayoutPosition() == i10 && !childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved()) {
                    break;
                }
                i14++;
            }
            if (view == null) {
                int size4 = arrayList2.size();
                int i15 = 0;
                while (true) {
                    if (i15 >= size4) {
                        viewHolderI = null;
                        break;
                    }
                    RecyclerView.ViewHolder viewHolder5 = (RecyclerView.ViewHolder) arrayList2.get(i15);
                    if (viewHolder5.isInvalid() || viewHolder5.getLayoutPosition() != i10 || viewHolder5.isAttachedToTransitionOverlay()) {
                        i15++;
                    } else {
                        arrayList2.remove(i15);
                        if (RecyclerView.sVerboseLoggingEnabled) {
                            viewHolder5.toString();
                        }
                        viewHolderI = viewHolder5;
                    }
                }
            } else {
                RecyclerView.ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                i iVar = recyclerView.mChildHelper;
                int iIndexOfChild = iVar.f2147a.f2168a.indexOfChild(view);
                if (iIndexOfChild < 0) {
                    throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                }
                h hVar = iVar.f2148b;
                if (!hVar.n(iIndexOfChild)) {
                    throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                }
                hVar.k(iIndexOfChild);
                iVar.l(view);
                int iJ = recyclerView.mChildHelper.j(view);
                if (iJ == -1) {
                    StringBuilder sb2 = new StringBuilder("layout index should not be -1 after unhiding a view:");
                    sb2.append(childViewHolderInt2);
                    throw new IllegalStateException(android.support.v4.media.session.a.m(recyclerView, sb2));
                }
                recyclerView.mChildHelper.c(iJ);
                l(view);
                childViewHolderInt2.addFlags(8224);
                viewHolderI = childViewHolderInt2;
            }
            if (viewHolderI != null) {
                if (!viewHolderI.isRemoved()) {
                    int i16 = viewHolderI.mPosition;
                    if (i16 < 0 || i16 >= recyclerView.mAdapter.b()) {
                        StringBuilder sb3 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                        sb3.append(viewHolderI);
                        throw new IndexOutOfBoundsException(android.support.v4.media.session.a.m(recyclerView, sb3));
                    }
                    z11 = (recyclerView.mState.f2205g || recyclerView.mAdapter.d(viewHolderI.mPosition) == viewHolderI.getItemViewType()) && (!recyclerView.mAdapter.f2189b || viewHolderI.getItemId() == recyclerView.mAdapter.c(viewHolderI.mPosition));
                } else {
                    if (RecyclerView.sDebugAssertionsEnabled && !recyclerView.mState.f2205g) {
                        throw new IllegalStateException(android.support.v4.media.session.a.m(recyclerView, new StringBuilder("should not receive a removed view unless it is pre layout")));
                    }
                    z11 = recyclerView.mState.f2205g;
                }
                if (z11) {
                    z = true;
                } else {
                    viewHolderI.addFlags(4);
                    if (viewHolderI.isScrap()) {
                        recyclerView.removeDetachedView(viewHolderI.itemView, false);
                        viewHolderI.unScrap();
                    } else if (viewHolderI.wasReturnedFromScrap()) {
                        viewHolderI.clearReturnedFromScrapFlag();
                    }
                    k(viewHolderI);
                    viewHolderI = null;
                }
            }
        }
        if (viewHolderI == null) {
            int iF2 = recyclerView.mAdapterHelper.f(i10, 0);
            if (iF2 < 0 || iF2 >= recyclerView.mAdapter.b()) {
                StringBuilder sbO2 = ta.q.o(i10, iF2, "Inconsistency detected. Invalid item position ", "(offset:", ").state:");
                sbO2.append(recyclerView.mState.b());
                sbO2.append(recyclerView.exceptionLabel());
                throw new IndexOutOfBoundsException(sbO2.toString());
            }
            int iD = recyclerView.mAdapter.d(iF2);
            m1 m1Var = recyclerView.mAdapter;
            if (m1Var.f2189b) {
                long jC2 = m1Var.c(iF2);
                int size5 = arrayList3.size() - 1;
                while (true) {
                    if (size5 >= 0) {
                        viewHolder2 = (RecyclerView.ViewHolder) arrayList3.get(size5);
                        if (viewHolder2.getItemId() == jC2 && !viewHolder2.wasReturnedFromScrap()) {
                            if (iD == viewHolder2.getItemViewType()) {
                                viewHolder2.addFlags(32);
                                if (viewHolder2.isRemoved() && !recyclerView.mState.f2205g) {
                                    viewHolder2.setFlags(2, 14);
                                }
                            } else {
                                arrayList3.remove(size5);
                                recyclerView.removeDetachedView(viewHolder2.itemView, false);
                                RecyclerView.ViewHolder childViewHolderInt3 = RecyclerView.getChildViewHolderInt(viewHolder2.itemView);
                                childViewHolderInt3.mScrapContainer = null;
                                childViewHolderInt3.mInChangeScrap = false;
                                childViewHolderInt3.clearReturnedFromScrapFlag();
                                k(childViewHolderInt3);
                            }
                        }
                        size5--;
                    } else {
                        int size6 = arrayList2.size() - 1;
                        while (true) {
                            if (size6 < 0) {
                                break;
                            }
                            RecyclerView.ViewHolder viewHolder6 = (RecyclerView.ViewHolder) arrayList2.get(size6);
                            if (viewHolder6.getItemId() != jC2 || viewHolder6.isAttachedToTransitionOverlay()) {
                                size6--;
                            } else if (iD == viewHolder6.getItemViewType()) {
                                arrayList2.remove(size6);
                                viewHolder2 = viewHolder6;
                            } else {
                                i(size6);
                            }
                        }
                        viewHolder2 = null;
                    }
                }
                if (viewHolder2 != null) {
                    viewHolder2.mPosition = iF2;
                    viewHolderI = viewHolder2;
                    z = true;
                } else {
                    viewHolderI = viewHolder2;
                }
            }
            if (viewHolderI == null) {
                int i17 = RecyclerView.HORIZONTAL;
                e2 e2Var = (e2) c().f2114a.get(iD);
                if (e2Var != null) {
                    ArrayList arrayList5 = e2Var.f2094a;
                    if (arrayList5.isEmpty()) {
                        viewHolder = null;
                        if (viewHolder != null) {
                        }
                        viewHolderI = viewHolder;
                    } else {
                        for (int size7 = arrayList5.size() - 1; size7 >= 0; size7--) {
                            if (!((RecyclerView.ViewHolder) arrayList5.get(size7)).isAttachedToTransitionOverlay()) {
                                viewHolder = (RecyclerView.ViewHolder) arrayList5.remove(size7);
                                break;
                            }
                        }
                        viewHolder = null;
                        if (viewHolder != null) {
                            viewHolder.resetInternal();
                            if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                                View view2 = viewHolder.itemView;
                                if (view2 instanceof ViewGroup) {
                                    e((ViewGroup) view2, false);
                                }
                            }
                        }
                        viewHolderI = viewHolder;
                    }
                }
            }
            if (viewHolderI == null) {
                long nanoTime = recyclerView.getNanoTime();
                if (j10 != Long.MAX_VALUE) {
                    long j11 = this.f2136g.a(iD).f2096c;
                    if (!(j11 == 0 || j11 + nanoTime < j10)) {
                        return null;
                    }
                }
                m1 m1Var2 = recyclerView.mAdapter;
                m1Var2.getClass();
                try {
                    t0.o.a("RV CreateView");
                    viewHolderI = m1Var2.i(iD, recyclerView);
                    if (viewHolderI.itemView.getParent() != null) {
                        throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                    }
                    viewHolderI.mItemViewType = iD;
                    t0.o.b();
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && (recyclerViewFindNestedRecyclerView = RecyclerView.findNestedRecyclerView(viewHolderI.itemView)) != null) {
                        viewHolderI.mNestedRecyclerView = new WeakReference<>(recyclerViewFindNestedRecyclerView);
                    }
                    long nanoTime2 = recyclerView.getNanoTime() - nanoTime;
                    e2 e2VarA = this.f2136g.a(iD);
                    long j12 = e2VarA.f2096c;
                    if (j12 != 0) {
                        nanoTime2 = (nanoTime2 / 4) + ((j12 / 4) * 3);
                    }
                    e2VarA.f2096c = nanoTime2;
                } finally {
                    t0.o.b();
                }
            }
        }
        if (z && !recyclerView.mState.f2205g && viewHolderI.hasAnyOfTheFlags(8192)) {
            viewHolderI.setFlags(0, 8192);
            if (recyclerView.mState.f2208j) {
                t1.b(viewHolderI);
                t1 t1Var = recyclerView.mItemAnimator;
                viewHolderI.getUnmodifiedPayloads();
                t1Var.getClass();
                s1 s1Var = new s1();
                s1Var.a(viewHolderI);
                recyclerView.recordAnimationInfoIfBouncedHiddenView(viewHolderI, s1Var);
            }
        }
        if (!recyclerView.mState.f2205g || !viewHolderI.isBound()) {
            if (!viewHolderI.isBound() || viewHolderI.needsUpdate() || viewHolderI.isInvalid()) {
                if (RecyclerView.sDebugAssertionsEnabled && viewHolderI.isRemoved()) {
                    StringBuilder sb4 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                    sb4.append(viewHolderI);
                    throw new IllegalStateException(android.support.v4.media.session.a.m(recyclerView, sb4));
                }
                int iF3 = recyclerView.mAdapterHelper.f(i10, 0);
                viewHolderI.mBindingAdapter = null;
                viewHolderI.mOwnerRecyclerView = recyclerView;
                int itemViewType = viewHolderI.getItemViewType();
                long nanoTime3 = recyclerView.getNanoTime();
                if (j10 != Long.MAX_VALUE) {
                    long j13 = this.f2136g.a(itemViewType).f2097d;
                    if (j13 == 0 || j13 + nanoTime3 < j10) {
                    }
                }
                if (viewHolderI.isTmpDetached()) {
                    recyclerView.attachViewToParent(viewHolderI.itemView, recyclerView.getChildCount(), viewHolderI.itemView.getLayoutParams());
                    z4 = true;
                } else {
                    z4 = false;
                }
                m1 m1Var3 = recyclerView.mAdapter;
                m1Var3.getClass();
                boolean z12 = viewHolderI.mBindingAdapter == null;
                if (z12) {
                    viewHolderI.mPosition = iF3;
                    if (m1Var3.f2189b) {
                        viewHolderI.mItemId = m1Var3.c(iF3);
                    }
                    viewHolderI.setFlags(1, 519);
                    t0.o.a("RV OnBindView");
                }
                viewHolderI.mBindingAdapter = m1Var3;
                if (RecyclerView.sDebugAssertionsEnabled) {
                    if (viewHolderI.itemView.getParent() == null && x0.b1.l(viewHolderI.itemView) != viewHolderI.isTmpDetached()) {
                        throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + viewHolderI.isTmpDetached() + ", attached to window: " + x0.b1.l(viewHolderI.itemView) + ", holder: " + viewHolderI);
                    }
                    if (viewHolderI.itemView.getParent() == null && x0.b1.l(viewHolderI.itemView)) {
                        throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + viewHolderI);
                    }
                }
                m1Var3.h(viewHolderI, iF3, viewHolderI.getUnmodifiedPayloads());
                if (z12) {
                    viewHolderI.clearPayload();
                    ViewGroup.LayoutParams layoutParams3 = viewHolderI.itemView.getLayoutParams();
                    if (layoutParams3 instanceof RecyclerView.LayoutParams) {
                        ((RecyclerView.LayoutParams) layoutParams3).mInsetsDirty = true;
                    }
                }
                if (z4) {
                    recyclerView.detachViewFromParent(viewHolderI.itemView);
                }
                long nanoTime4 = recyclerView.getNanoTime() - nanoTime3;
                e2 e2VarA2 = this.f2136g.a(viewHolderI.getItemViewType());
                long j14 = e2VarA2.f2097d;
                if (j14 != 0) {
                    nanoTime4 = (nanoTime4 / 4) + ((j14 / 4) * 3);
                }
                e2VarA2.f2097d = nanoTime4;
                if (recyclerView.isAccessibilityEnabled()) {
                    View view3 = viewHolderI.itemView;
                    WeakHashMap weakHashMap = x0.b1.f17953a;
                    if (x0.j0.c(view3) == 0) {
                        x0.b1.B(view3, 1);
                    }
                    s2 s2Var = recyclerView.mAccessibilityDelegate;
                    if (s2Var != null) {
                        r2 r2Var = s2Var.f2274e;
                        if (r2Var instanceof r2) {
                            r2Var.getClass();
                            View.AccessibilityDelegate accessibilityDelegateD = x0.b1.d(view3);
                            x0.c cVar = accessibilityDelegateD != null ? accessibilityDelegateD instanceof x0.a ? ((x0.a) accessibilityDelegateD).f17943a : new x0.c(accessibilityDelegateD) : null;
                            if (cVar != null && cVar != r2Var) {
                                r2Var.f2248e.put(view3, cVar);
                            }
                        }
                        x0.b1.x(view3, r2Var);
                    }
                }
                if (recyclerView.mState.f2205g) {
                    viewHolderI.mPreLayoutPosition = i10;
                }
                z10 = true;
            }
            layoutParams = viewHolderI.itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams2 = (RecyclerView.LayoutParams) recyclerView.generateDefaultLayoutParams();
                viewHolderI.itemView.setLayoutParams(layoutParams2);
            } else if (recyclerView.checkLayoutParams(layoutParams)) {
                layoutParams2 = (RecyclerView.LayoutParams) layoutParams;
            } else {
                layoutParams2 = (RecyclerView.LayoutParams) recyclerView.generateLayoutParams(layoutParams);
                viewHolderI.itemView.setLayoutParams(layoutParams2);
            }
            layoutParams2.mViewHolder = viewHolderI;
            layoutParams2.mPendingInvalidate = !z && z10;
            return viewHolderI;
        }
        viewHolderI.mPreLayoutPosition = i10;
        z10 = false;
        layoutParams = viewHolderI.itemView.getLayoutParams();
        if (layoutParams != null) {
        }
        layoutParams2.mViewHolder = viewHolderI;
        layoutParams2.mPendingInvalidate = !z && z10;
        return viewHolderI;
    }

    public final void n(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder.mInChangeScrap) {
            this.f2131b.remove(viewHolder);
        } else {
            this.f2130a.remove(viewHolder);
        }
        viewHolder.mScrapContainer = null;
        viewHolder.mInChangeScrap = false;
        viewHolder.clearReturnedFromScrapFlag();
    }

    public final void o() {
        RecyclerView.LayoutManager layoutManager = this.f2137h.mLayout;
        this.f2135f = this.f2134e + (layoutManager != null ? layoutManager.mPrefetchMaxCountObserved : 0);
        ArrayList arrayList = this.f2132c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f2135f; size--) {
            i(size);
        }
    }
}
