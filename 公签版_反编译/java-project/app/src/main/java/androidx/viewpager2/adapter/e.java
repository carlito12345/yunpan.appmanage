package androidx.viewpager2.adapter;

import a0.k;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e1;
import androidx.lifecycle.n;
import androidx.lifecycle.r;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l2.z;
import x9.o;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public c f2456a;

    /* renamed from: b, reason: collision with root package name */
    public d f2457b;

    /* renamed from: c, reason: collision with root package name */
    public r f2458c;

    /* renamed from: d, reason: collision with root package name */
    public ViewPager2 f2459d;

    /* renamed from: e, reason: collision with root package name */
    public long f2460e = -1;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ f f2461f;

    public e(f fVar) {
        this.f2461f = fVar;
    }

    public static ViewPager2 a(RecyclerView recyclerView) {
        ViewParent parent = recyclerView.getParent();
        if (parent instanceof ViewPager2) {
            return (ViewPager2) parent;
        }
        throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
    }

    public final void b(boolean z) {
        int currentItem;
        Fragment fragment;
        f fVar = this.f2461f;
        if (!fVar.f2463e.K() && this.f2459d.getScrollState() == 0) {
            k kVar = fVar.f2464f;
            if (kVar.j() == 0) {
                return;
            }
            ArrayList arrayList = ((o) fVar).f18313m;
            if (arrayList.size() != 0 && (currentItem = this.f2459d.getCurrentItem()) < arrayList.size()) {
                long j10 = currentItem;
                if ((j10 != this.f2460e || z) && (fragment = (Fragment) kVar.d(j10)) != null && fragment.isAdded()) {
                    this.f2460e = j10;
                    e1 e1Var = fVar.f2463e;
                    e1Var.getClass();
                    androidx.fragment.app.a aVar = new androidx.fragment.app.a(e1Var);
                    ArrayList arrayList2 = new ArrayList();
                    Fragment fragment2 = null;
                    for (int i10 = 0; i10 < kVar.j(); i10++) {
                        long jG = kVar.g(i10);
                        Fragment fragment3 = (Fragment) kVar.k(i10);
                        if (fragment3.isAdded()) {
                            if (jG != this.f2460e) {
                                aVar.j(fragment3, n.STARTED);
                                b bVar = fVar.f2468j;
                                bVar.getClass();
                                ArrayList arrayList3 = new ArrayList();
                                Iterator it = bVar.f2451a.iterator();
                                if (it.hasNext()) {
                                    throw z.d(it);
                                }
                                arrayList2.add(arrayList3);
                            } else {
                                fragment2 = fragment3;
                            }
                            fragment3.setMenuVisibility(jG == this.f2460e);
                        }
                    }
                    if (fragment2 != null) {
                        aVar.j(fragment2, n.RESUMED);
                        b bVar2 = fVar.f2468j;
                        bVar2.getClass();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it2 = bVar2.f2451a.iterator();
                        if (it2.hasNext()) {
                            throw z.d(it2);
                        }
                        arrayList2.add(arrayList4);
                    }
                    if (aVar.f1161a.isEmpty()) {
                        return;
                    }
                    aVar.e();
                    Collections.reverse(arrayList2);
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        List list = (List) it3.next();
                        fVar.f2468j.getClass();
                        b.a(list);
                    }
                }
            }
        }
    }
}
