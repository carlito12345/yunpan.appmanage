package androidx.viewpager2.adapter;

import androidx.recyclerview.widget.o1;
import androidx.room.i;

/* loaded from: classes.dex */
public final class d extends o1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2454a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2455b;

    public d(i iVar) {
        this.f2454a = 1;
        this.f2455b = iVar;
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onChanged() {
        switch (this.f2454a) {
            case 0:
                ((e) this.f2455b).b(true);
                break;
            default:
                ((i) this.f2455b).g();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeChanged(int i10, int i11) {
        switch (this.f2454a) {
            case 0:
                onChanged();
                break;
            default:
                ((i) this.f2455b).g();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeInserted(int i10, int i11) {
        switch (this.f2454a) {
            case 0:
                onChanged();
                break;
            default:
                ((i) this.f2455b).g();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeMoved(int i10, int i11, int i12) {
        switch (this.f2454a) {
            case 0:
                onChanged();
                break;
            default:
                ((i) this.f2455b).g();
                break;
        }
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeRemoved(int i10, int i11) {
        switch (this.f2454a) {
            case 0:
                onChanged();
                break;
            default:
                ((i) this.f2455b).g();
                break;
        }
    }

    public d(e eVar) {
        this.f2454a = 0;
        this.f2455b = eVar;
        this.f2454a = 0;
    }

    @Override // androidx.recyclerview.widget.o1
    public final void onItemRangeChanged(int i10, int i11, Object obj) {
        switch (this.f2454a) {
            case 0:
                onChanged();
                break;
            default:
                ((i) this.f2455b).g();
                break;
        }
    }
}
