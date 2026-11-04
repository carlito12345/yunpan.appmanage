package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class e0 implements y1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2090a;

    /* renamed from: b, reason: collision with root package name */
    public int f2091b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f2092c;

    /* renamed from: d, reason: collision with root package name */
    public int f2093d;

    public final void a(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i12 = this.f2093d;
        int i13 = i12 * 2;
        int[] iArr = this.f2092c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f2092c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i13 >= iArr.length) {
            int[] iArr3 = new int[i12 * 4];
            this.f2092c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f2092c;
        iArr4[i13] = i10;
        iArr4[i13 + 1] = i11;
        this.f2093d++;
    }

    public final void b(RecyclerView recyclerView, boolean z) {
        this.f2093d = 0;
        int[] iArr = this.f2092c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.g()) {
                layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.b(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            layoutManager.collectAdjacentPrefetchPositions(this.f2090a, this.f2091b, recyclerView.mState, this);
        }
        int i10 = this.f2093d;
        if (i10 > layoutManager.mPrefetchMaxCountObserved) {
            layoutManager.mPrefetchMaxCountObserved = i10;
            layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.o();
        }
    }
}
