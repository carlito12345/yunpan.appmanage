package p7;

import android.view.View;

/* loaded from: classes.dex */
public final class j implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f12595a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f12596b;

    public j(k kVar, View view) {
        this.f12596b = kVar;
        this.f12595a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        View view2 = this.f12595a;
        if (view2.getVisibility() == 0) {
            this.f12596b.c(view2);
        }
    }
}
