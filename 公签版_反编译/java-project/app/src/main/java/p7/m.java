package p7;

import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class m extends m4.i {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f12610a;

    /* renamed from: c, reason: collision with root package name */
    public int f12612c = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f12611b = 0;

    public m(TabLayout tabLayout) {
        this.f12610a = new WeakReference(tabLayout);
    }

    @Override // m4.i
    public final void a(int i10) {
        this.f12611b = this.f12612c;
        this.f12612c = i10;
        TabLayout tabLayout = (TabLayout) this.f12610a.get();
        if (tabLayout != null) {
            tabLayout.M0 = this.f12612c;
        }
    }

    @Override // m4.i
    public final void b(int i10, float f10, int i11) {
        TabLayout tabLayout = (TabLayout) this.f12610a.get();
        if (tabLayout != null) {
            int i12 = this.f12612c;
            tabLayout.l(i10, f10, i12 != 2 || this.f12611b == 1, (i12 == 2 && this.f12611b == 0) ? false : true, false);
        }
    }

    @Override // m4.i
    public final void c(int i10) {
        TabLayout tabLayout = (TabLayout) this.f12610a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
            return;
        }
        int i11 = this.f12612c;
        tabLayout.j(tabLayout.f(i10), i11 == 0 || (i11 == 2 && this.f12611b == 0));
    }
}
