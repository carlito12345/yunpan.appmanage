package m4;

import a2.w0;
import androidx.recyclerview.widget.o1;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class e extends o1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10865a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10866b;

    public e(int i10, Object obj) {
        this.f10865a = i10;
        this.f10866b = obj;
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onChanged() {
        switch (this.f10865a) {
            case 0:
                ViewPager2 viewPager2 = (ViewPager2) this.f10866b;
                viewPager2.f2475e = true;
                viewPager2.l.l = true;
                break;
            default:
                ((w0) this.f10866b).g0();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeChanged(int i10, int i11) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeInserted(int i10, int i11) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeMoved(int i10, int i11, int i12) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeRemoved(int i10, int i11) {
        onChanged();
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeChanged(int i10, int i11, Object obj) {
        onChanged();
    }
}
