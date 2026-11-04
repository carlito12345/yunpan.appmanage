package w;

import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class t2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17270a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f17271b;

    public /* synthetic */ t2(SearchView searchView, int i10) {
        this.f17270a = i10;
        this.f17271b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17270a) {
            case 0:
                this.f17271b.u();
                break;
            default:
                c1.c cVar = this.f17271b.S;
                if (cVar instanceof a3) {
                    cVar.b(null);
                    break;
                }
                break;
        }
    }
}
