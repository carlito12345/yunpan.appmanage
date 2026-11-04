package xa;

import android.view.animation.AccelerateInterpolator;
import android.widget.Scroller;
import da.g;

/* loaded from: classes.dex */
public final class a extends Scroller {

    /* renamed from: a, reason: collision with root package name */
    public int f18415a;

    public a(g gVar, AccelerateInterpolator accelerateInterpolator) {
        super(gVar, accelerateInterpolator);
        this.f18415a = 0;
    }

    @Override // android.widget.Scroller
    public final void startScroll(int i10, int i11, int i12, int i13, int i14) {
        super.startScroll(i10, i11, i12, i13, this.f18415a);
    }

    @Override // android.widget.Scroller
    public final void startScroll(int i10, int i11, int i12, int i13) {
        super.startScroll(i10, i11, i12, i13, this.f18415a);
    }
}
