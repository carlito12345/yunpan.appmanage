package z6;

import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes.dex */
public final class d extends e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f19442b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(CarouselLayoutManager carouselLayoutManager) {
        super(0);
        this.f19442b = carouselLayoutManager;
    }

    @Override // z6.e
    public final int a() {
        CarouselLayoutManager carouselLayoutManager = this.f19442b;
        return carouselLayoutManager.getHeight() - carouselLayoutManager.getPaddingBottom();
    }

    @Override // z6.e
    public final int b() {
        return 0;
    }

    @Override // z6.e
    public final int c() {
        return this.f19442b.getWidth();
    }

    @Override // z6.e
    public final int d() {
        CarouselLayoutManager carouselLayoutManager = this.f19442b;
        if (carouselLayoutManager.b()) {
            return carouselLayoutManager.getWidth();
        }
        return 0;
    }

    @Override // z6.e
    public final int e() {
        return this.f19442b.getPaddingTop();
    }
}
