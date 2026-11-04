package m4;

import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class f extends i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10867a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewPager2 f10868b;

    public /* synthetic */ f(ViewPager2 viewPager2, int i10) {
        this.f10867a = i10;
        this.f10868b = viewPager2;
    }

    @Override // m4.i
    public void a(int i10) {
        switch (this.f10867a) {
            case 0:
                if (i10 == 0) {
                    this.f10868b.c();
                    break;
                }
                break;
        }
    }

    @Override // m4.i
    public final void c(int i10) {
        switch (this.f10867a) {
            case 0:
                ViewPager2 viewPager2 = this.f10868b;
                if (viewPager2.f2474d != i10) {
                    viewPager2.f2474d = i10;
                    viewPager2.f2488v.g0();
                    break;
                }
                break;
            default:
                ViewPager2 viewPager22 = this.f10868b;
                viewPager22.clearFocus();
                if (viewPager22.hasFocus()) {
                    viewPager22.f2480j.requestFocus(2);
                    break;
                }
                break;
        }
    }
}
