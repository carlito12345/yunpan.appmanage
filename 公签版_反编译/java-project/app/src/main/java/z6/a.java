package z6;

import android.content.Context;
import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.a1;
import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes.dex */
public final class a extends a1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f19438a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(CarouselLayoutManager carouselLayoutManager, Context context) {
        super(context);
        this.f19438a = carouselLayoutManager;
    }

    @Override // androidx.recyclerview.widget.a1
    public final int calculateDxToMakeVisible(View view, int i10) {
        this.f19438a.getClass();
        return 0;
    }

    @Override // androidx.recyclerview.widget.a1
    public final int calculateDyToMakeVisible(View view, int i10) {
        this.f19438a.getClass();
        return 0;
    }

    @Override // androidx.recyclerview.widget.m2
    public final PointF computeScrollVectorForPosition(int i10) {
        this.f19438a.getClass();
        return null;
    }
}
