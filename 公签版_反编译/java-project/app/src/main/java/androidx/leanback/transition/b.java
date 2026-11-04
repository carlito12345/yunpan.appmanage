package androidx.leanback.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class b extends d.b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ FadeAndShortSlide f1463d;

    public b(FadeAndShortSlide fadeAndShortSlide) {
        this.f1463d = fadeAndShortSlide;
    }

    @Override // d.b
    public final float F(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        int iCenterY;
        int height = (view.getHeight() / 2) + iArr[1];
        viewGroup.getLocationOnScreen(iArr);
        Rect epicenter = this.f1463d.getEpicenter();
        if (epicenter == null) {
            iCenterY = (viewGroup.getHeight() / 2) + iArr[1];
        } else {
            iCenterY = epicenter.centerY();
        }
        if (height < iCenterY) {
            return view.getTranslationY() - fadeAndShortSlide.b(viewGroup);
        }
        return fadeAndShortSlide.b(viewGroup) + view.getTranslationY();
    }
}
