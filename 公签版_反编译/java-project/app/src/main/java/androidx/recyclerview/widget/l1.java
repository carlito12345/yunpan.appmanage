package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class l1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2180a;

    public l1(RecyclerView recyclerView) {
        this.f2180a = recyclerView;
    }

    public final void a(a aVar) {
        int i10 = aVar.f2023a;
        RecyclerView recyclerView = this.f2180a;
        if (i10 == 1) {
            recyclerView.mLayout.onItemsAdded(recyclerView, aVar.f2024b, aVar.f2026d);
            return;
        }
        if (i10 == 2) {
            recyclerView.mLayout.onItemsRemoved(recyclerView, aVar.f2024b, aVar.f2026d);
        } else if (i10 == 4) {
            recyclerView.mLayout.onItemsUpdated(recyclerView, aVar.f2024b, aVar.f2026d, aVar.f2025c);
        } else {
            if (i10 != 8) {
                return;
            }
            recyclerView.mLayout.onItemsMoved(recyclerView, aVar.f2024b, aVar.f2026d, 1);
        }
    }
}
