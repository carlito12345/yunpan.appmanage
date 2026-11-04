package z6;

import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes.dex */
public final class c extends e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f19441b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(CarouselLayoutManager carouselLayoutManager) {
        super(1);
        this.f19441b = carouselLayoutManager;
    }

    @Override // z6.e
    public final int a() {
        return this.f19441b.getHeight();
    }

    @Override // z6.e
    public final int b() {
        return this.f19441b.getPaddingLeft();
    }

    @Override // z6.e
    public final int c() {
        CarouselLayoutManager carouselLayoutManager = this.f19441b;
        return carouselLayoutManager.getWidth() - carouselLayoutManager.getPaddingRight();
    }

    @Override // z6.e
    public final int d() {
        return 0;
    }

    @Override // z6.e
    public final int e() {
        return 0;
    }
}
