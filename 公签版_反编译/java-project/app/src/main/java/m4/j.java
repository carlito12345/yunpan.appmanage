package m4;

import a2.w0;
import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import y0.a0;

/* loaded from: classes.dex */
public final class j implements a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10870a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w0 f10871b;

    public /* synthetic */ j(w0 w0Var, int i10) {
        this.f10870a = i10;
        this.f10871b = w0Var;
    }

    @Override // y0.a0
    public final boolean d(View view) {
        switch (this.f10870a) {
            case 0:
                int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                ViewPager2 viewPager2 = (ViewPager2) this.f10871b.f349e;
                if (viewPager2.f2486s) {
                    viewPager2.b(currentItem);
                    break;
                }
                break;
            default:
                int currentItem2 = ((ViewPager2) view).getCurrentItem() - 1;
                ViewPager2 viewPager22 = (ViewPager2) this.f10871b.f349e;
                if (viewPager22.f2486s) {
                    viewPager22.b(currentItem2);
                    break;
                }
                break;
        }
        return true;
    }
}
