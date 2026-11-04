package p7;

import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class i implements k4.e {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f12592a;

    /* renamed from: b, reason: collision with root package name */
    public int f12593b;

    /* renamed from: c, reason: collision with root package name */
    public int f12594c;

    public i(TabLayout tabLayout) {
        this.f12592a = new WeakReference(tabLayout);
    }

    public final void a(float f10, int i10) {
        TabLayout tabLayout = (TabLayout) this.f12592a.get();
        if (tabLayout != null) {
            int i11 = this.f12594c;
            tabLayout.l(i10, f10, i11 != 2 || this.f12593b == 1, (i11 == 2 && this.f12593b == 0) ? false : true, false);
        }
    }

    public final void b(int i10) {
        TabLayout tabLayout = (TabLayout) this.f12592a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
            return;
        }
        int i11 = this.f12594c;
        tabLayout.j(tabLayout.f(i10), i11 == 0 || (i11 == 2 && this.f12593b == 0));
    }
}
