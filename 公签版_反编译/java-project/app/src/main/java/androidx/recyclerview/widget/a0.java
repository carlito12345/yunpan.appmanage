package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class a0 extends d2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0 f2027a;

    public a0(d0 d0Var) {
        this.f2027a = d0Var;
    }

    @Override // androidx.recyclerview.widget.d2
    public final void b(RecyclerView recyclerView, int i10, int i11) {
        int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        d0 d0Var = this.f2027a;
        int iComputeVerticalScrollRange = d0Var.f2077s.computeVerticalScrollRange();
        int i12 = d0Var.r;
        int i13 = iComputeVerticalScrollRange - i12;
        int i14 = d0Var.f2061a;
        d0Var.f2078t = i13 > 0 && i12 >= i14;
        int iComputeHorizontalScrollRange = d0Var.f2077s.computeHorizontalScrollRange();
        int i15 = d0Var.f2076q;
        boolean z = iComputeHorizontalScrollRange - i15 > 0 && i15 >= i14;
        d0Var.f2079u = z;
        boolean z4 = d0Var.f2078t;
        if (!z4 && !z) {
            if (d0Var.f2080v != 0) {
                d0Var.h(0);
                return;
            }
            return;
        }
        if (z4) {
            float f10 = i12;
            d0Var.l = (int) ((((f10 / 2.0f) + iComputeVerticalScrollOffset) * f10) / iComputeVerticalScrollRange);
            d0Var.f2071k = Math.min(i12, (i12 * i12) / iComputeVerticalScrollRange);
        }
        if (d0Var.f2079u) {
            float f11 = iComputeHorizontalScrollOffset;
            float f12 = i15;
            d0Var.f2074o = (int) ((((f12 / 2.0f) + f11) * f12) / iComputeHorizontalScrollRange);
            d0Var.f2073n = Math.min(i15, (i15 * i15) / iComputeHorizontalScrollRange);
        }
        int i16 = d0Var.f2080v;
        if (i16 == 0 || i16 == 1) {
            d0Var.h(1);
        }
    }
}
