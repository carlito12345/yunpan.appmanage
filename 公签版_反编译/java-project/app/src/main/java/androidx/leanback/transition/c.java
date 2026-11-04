package androidx.leanback.transition;

import android.view.View;

/* loaded from: classes.dex */
public final class c extends p000if.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1464a;

    @Override // androidx.leanback.transition.e
    public final float b(View view) {
        switch (this.f1464a) {
            case 0:
                return view.getTranslationX() - view.getWidth();
            case 1:
                return view.getTranslationX() + view.getWidth();
            case 2:
                return view.getLayoutDirection() == 1 ? view.getTranslationX() + view.getWidth() : view.getTranslationX() - view.getWidth();
            default:
                return view.getLayoutDirection() == 1 ? view.getTranslationX() - view.getWidth() : view.getTranslationX() + view.getWidth();
        }
    }
}
