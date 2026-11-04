package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class i2 extends o1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2156a;

    public i2(RecyclerView recyclerView) {
        this.f2156a = recyclerView;
    }

    public final void a() {
        boolean z = RecyclerView.POST_UPDATES_ON_ANIMATION;
        RecyclerView recyclerView = this.f2156a;
        if (!z || !recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
        } else {
            Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
            WeakHashMap weakHashMap = x0.b1.f17953a;
            x0.j0.m(recyclerView, runnable);
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onChanged() {
        RecyclerView recyclerView = this.f2156a;
        recyclerView.assertNotInLayoutOrScroll(null);
        recyclerView.mState.f2204f = true;
        recyclerView.processDataSetCompletelyChanged(true);
        if (recyclerView.mAdapterHelper.g()) {
            return;
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeChanged(int i10, int i11, Object obj) {
        RecyclerView recyclerView = this.f2156a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        if (i11 < 1) {
            bVar.getClass();
            return;
        }
        ArrayList arrayList = bVar.f2031b;
        arrayList.add(bVar.h(obj, 4, i10, i11));
        bVar.f2035f |= 4;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeInserted(int i10, int i11) {
        RecyclerView recyclerView = this.f2156a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        if (i11 < 1) {
            bVar.getClass();
            return;
        }
        ArrayList arrayList = bVar.f2031b;
        arrayList.add(bVar.h(null, 1, i10, i11));
        bVar.f2035f |= 1;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeMoved(int i10, int i11, int i12) {
        RecyclerView recyclerView = this.f2156a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        bVar.getClass();
        if (i10 == i11) {
            return;
        }
        if (i12 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        ArrayList arrayList = bVar.f2031b;
        arrayList.add(bVar.h(null, 8, i10, i11));
        bVar.f2035f |= 8;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeRemoved(int i10, int i11) {
        RecyclerView recyclerView = this.f2156a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        if (i11 < 1) {
            bVar.getClass();
            return;
        }
        ArrayList arrayList = bVar.f2031b;
        arrayList.add(bVar.h(null, 2, i10, i11));
        bVar.f2035f |= 2;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onStateRestorationPolicyChanged() {
        m1 m1Var;
        RecyclerView recyclerView = this.f2156a;
        if (recyclerView.mPendingSavedState == null || (m1Var = recyclerView.mAdapter) == null) {
            return;
        }
        int iC = d0.f.c(m1Var.f2190c);
        if (iC != 1) {
            if (iC == 2) {
                return;
            }
        } else if (m1Var.b() <= 0) {
            return;
        }
        recyclerView.requestLayout();
    }
}
