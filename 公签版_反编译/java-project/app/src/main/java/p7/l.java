package p7;

import android.view.ViewGroup;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class l implements e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12608a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f12609b;

    public /* synthetic */ l(int i10, ViewGroup viewGroup) {
        this.f12608a = i10;
        this.f12609b = viewGroup;
    }

    @Override // p7.d
    public final void a(h hVar) {
        switch (this.f12608a) {
            case 0:
                ((k4.g) this.f12609b).setCurrentItem(hVar.f12588b);
                break;
            default:
                int i10 = hVar.f12588b;
                ViewPager2 viewPager2 = (ViewPager2) this.f12609b;
                Object obj = viewPager2.f2483n.f10629b;
                viewPager2.b(i10);
                break;
        }
    }
}
