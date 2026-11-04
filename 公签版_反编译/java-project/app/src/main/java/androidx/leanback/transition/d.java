package androidx.leanback.transition;

import android.view.View;

/* loaded from: classes.dex */
public final class d extends nh.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1465b;

    @Override // androidx.leanback.transition.e
    public final float b(View view) {
        switch (this.f1465b) {
            case 0:
                return view.getTranslationY() - view.getHeight();
            default:
                return view.getTranslationY() + view.getHeight();
        }
    }
}
