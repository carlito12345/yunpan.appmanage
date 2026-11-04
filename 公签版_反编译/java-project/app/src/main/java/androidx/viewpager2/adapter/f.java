package androidx.viewpager2.adapter;

import a0.k;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e0;
import androidx.fragment.app.e1;
import androidx.fragment.app.r0;
import androidx.lifecycle.m;
import androidx.lifecycle.n;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import androidx.lifecycle.t;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import androidx.viewpager2.widget.ViewPager2;
import com.yunpan.appmanage.ui.ActivityAppDetails;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import l2.z;
import ta.q;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public abstract class f extends m1 implements h {

    /* renamed from: d, reason: collision with root package name */
    public final o f2462d;

    /* renamed from: e, reason: collision with root package name */
    public final e1 f2463e;

    /* renamed from: f, reason: collision with root package name */
    public final k f2464f;

    /* renamed from: g, reason: collision with root package name */
    public final k f2465g;

    /* renamed from: h, reason: collision with root package name */
    public final k f2466h;

    /* renamed from: i, reason: collision with root package name */
    public e f2467i;

    /* renamed from: j, reason: collision with root package name */
    public final b f2468j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2469k;
    public boolean l;

    public f(ActivityAppDetails activityAppDetails) {
        e1 e1VarP = activityAppDetails.p();
        this.f2464f = new k();
        this.f2465g = new k();
        this.f2466h = new k();
        this.f2468j = new b(0);
        this.f2469k = false;
        this.l = false;
        this.f2463e = e1VarP;
        this.f2462d = activityAppDetails.f806d;
        if (this.f2188a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.f2189b = true;
    }

    public static void p(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    @Override // androidx.recyclerview.widget.m1
    public final long c(int i10) {
        return i10;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void f(RecyclerView recyclerView) {
        if (this.f2467i != null) {
            throw new IllegalArgumentException();
        }
        final e eVar = new e(this);
        this.f2467i = eVar;
        ViewPager2 viewPager2A = e.a(recyclerView);
        eVar.f2459d = viewPager2A;
        c cVar = new c(eVar);
        eVar.f2456a = cVar;
        ((ArrayList) viewPager2A.f2473c.f2453b).add(cVar);
        d dVar = new d(eVar);
        eVar.f2457b = dVar;
        o(dVar);
        r rVar = new r() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3
            @Override // androidx.lifecycle.r
            public final void a(t tVar, m mVar) {
                eVar.b(false);
            }
        };
        eVar.f2458c = rVar;
        this.f2462d.a(rVar);
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        g gVar = (g) viewHolder;
        long itemId = gVar.getItemId();
        int id2 = ((FrameLayout) gVar.itemView).getId();
        Long lS = s(id2);
        k kVar = this.f2466h;
        if (lS != null && lS.longValue() != itemId) {
            u(lS.longValue());
            kVar.i(lS.longValue());
        }
        kVar.h(Integer.valueOf(id2), itemId);
        long j10 = i10;
        k kVar2 = this.f2464f;
        if (kVar2.f(j10) < 0) {
            Fragment fragment = (Fragment) ((x9.o) this).f18313m.get(i10);
            fragment.setInitialSavedState((e0) this.f2465g.d(j10));
            kVar2.h(fragment, j10);
        }
        if (b1.l((FrameLayout) gVar.itemView)) {
            t(gVar);
        }
        r();
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        int i11 = g.f2470a;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        WeakHashMap weakHashMap = b1.f17953a;
        frameLayout.setId(k0.a());
        frameLayout.setSaveEnabled(false);
        return new g(frameLayout);
    }

    @Override // androidx.recyclerview.widget.m1
    public final void j(RecyclerView recyclerView) {
        e eVar = this.f2467i;
        eVar.getClass();
        ViewPager2 viewPager2A = e.a(recyclerView);
        ((ArrayList) viewPager2A.f2473c.f2453b).remove(eVar.f2456a);
        d dVar = eVar.f2457b;
        f fVar = eVar.f2461f;
        fVar.f2188a.unregisterObserver(dVar);
        fVar.f2462d.b(eVar.f2458c);
        eVar.f2459d = null;
        this.f2467i = null;
    }

    @Override // androidx.recyclerview.widget.m1
    public final /* bridge */ /* synthetic */ boolean k(RecyclerView.ViewHolder viewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void l(RecyclerView.ViewHolder viewHolder) {
        t((g) viewHolder);
        r();
    }

    @Override // androidx.recyclerview.widget.m1
    public final void n(RecyclerView.ViewHolder viewHolder) {
        Long lS = s(((FrameLayout) ((g) viewHolder).itemView).getId());
        if (lS != null) {
            u(lS.longValue());
            this.f2466h.i(lS.longValue());
        }
    }

    public final boolean q(long j10) {
        return j10 >= 0 && j10 < ((long) ((x9.o) this).f18313m.size());
    }

    public final void r() {
        k kVar;
        k kVar2;
        Fragment fragment;
        View view;
        if (!this.l || this.f2463e.K()) {
            return;
        }
        a0.f fVar = new a0.f(0);
        int i10 = 0;
        while (true) {
            kVar = this.f2464f;
            int iJ = kVar.j();
            kVar2 = this.f2466h;
            if (i10 >= iJ) {
                break;
            }
            long jG = kVar.g(i10);
            if (!q(jG)) {
                fVar.add(Long.valueOf(jG));
                kVar2.i(jG);
            }
            i10++;
        }
        if (!this.f2469k) {
            this.l = false;
            for (int i11 = 0; i11 < kVar.j(); i11++) {
                long jG2 = kVar.g(i11);
                if (kVar2.f(jG2) < 0 && ((fragment = (Fragment) kVar.d(jG2)) == null || (view = fragment.getView()) == null || view.getParent() == null)) {
                    fVar.add(Long.valueOf(jG2));
                }
            }
        }
        a0.a aVar = new a0.a(fVar);
        while (aVar.hasNext()) {
            u(((Long) aVar.next()).longValue());
        }
    }

    public final Long s(int i10) {
        Long lValueOf = null;
        int i11 = 0;
        while (true) {
            k kVar = this.f2466h;
            if (i11 >= kVar.j()) {
                return lValueOf;
            }
            if (((Integer) kVar.k(i11)).intValue() == i10) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(kVar.g(i11));
            }
            i11++;
        }
    }

    public final void t(final g gVar) {
        Fragment fragment = (Fragment) this.f2464f.d(gVar.getItemId());
        if (fragment == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout frameLayout = (FrameLayout) gVar.itemView;
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        boolean zIsAdded = fragment.isAdded();
        e1 e1Var = this.f2463e;
        if (zIsAdded && view == null) {
            ((CopyOnWriteArrayList) e1Var.l.f1316a).add(new r0(new a(this, fragment, frameLayout), false));
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != frameLayout) {
                p(view, frameLayout);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            p(view, frameLayout);
            return;
        }
        if (e1Var.K()) {
            if (e1Var.G) {
                return;
            }
            this.f2462d.a(new r() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$1
                @Override // androidx.lifecycle.r
                public final void a(t tVar, m mVar) {
                    f fVar = this.f2444b;
                    if (fVar.f2463e.K()) {
                        return;
                    }
                    tVar.getLifecycle().b(this);
                    g gVar2 = gVar;
                    if (b1.l((FrameLayout) gVar2.itemView)) {
                        fVar.t(gVar2);
                    }
                }
            });
            return;
        }
        ((CopyOnWriteArrayList) e1Var.l.f1316a).add(new r0(new a(this, fragment, frameLayout), false));
        b bVar = this.f2468j;
        bVar.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = bVar.f2451a.iterator();
        if (it.hasNext()) {
            throw z.d(it);
        }
        try {
            fragment.setMenuVisibility(false);
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(e1Var);
            aVar.f(0, fragment, "f" + gVar.getItemId(), 1);
            aVar.j(fragment, n.STARTED);
            aVar.e();
            this.f2467i.b(false);
        } finally {
            b.a(arrayList);
        }
    }

    public final void u(long j10) {
        ViewParent parent;
        k kVar = this.f2464f;
        Fragment fragment = (Fragment) kVar.d(j10);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        boolean zQ = q(j10);
        k kVar2 = this.f2465g;
        if (!zQ) {
            kVar2.i(j10);
        }
        if (!fragment.isAdded()) {
            kVar.i(j10);
            return;
        }
        e1 e1Var = this.f2463e;
        if (e1Var.K()) {
            this.l = true;
            return;
        }
        boolean zIsAdded = fragment.isAdded();
        b bVar = this.f2468j;
        if (zIsAdded && q(j10)) {
            bVar.getClass();
            ArrayList arrayList = new ArrayList();
            Iterator it = bVar.f2451a.iterator();
            if (it.hasNext()) {
                throw z.d(it);
            }
            e0 e0VarV = e1Var.V(fragment);
            b.a(arrayList);
            kVar2.h(e0VarV, j10);
        }
        bVar.getClass();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = bVar.f2451a.iterator();
        if (it2.hasNext()) {
            throw z.d(it2);
        }
        try {
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(e1Var);
            aVar.i(fragment);
            aVar.e();
            kVar.i(j10);
        } finally {
            b.a(arrayList2);
        }
    }

    public final void v(Parcelable parcelable) {
        String next;
        k kVar = this.f2465g;
        if (kVar.j() == 0) {
            k kVar2 = this.f2464f;
            if (kVar2.j() == 0) {
                Bundle bundle = (Bundle) parcelable;
                if (bundle.getClassLoader() == null) {
                    bundle.setClassLoader(getClass().getClassLoader());
                }
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        if (kVar2.j() == 0) {
                            return;
                        }
                        this.l = true;
                        this.f2469k = true;
                        r();
                        final Handler handler = new Handler(Looper.getMainLooper());
                        final androidx.activity.h hVar = new androidx.activity.h(4, this);
                        this.f2462d.a(new r() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$4
                            @Override // androidx.lifecycle.r
                            public final void a(t tVar, m mVar) {
                                if (mVar == m.ON_DESTROY) {
                                    handler.removeCallbacks(hVar);
                                    tVar.getLifecycle().b(this);
                                }
                            }
                        });
                        handler.postDelayed(hVar, 10000L);
                        return;
                    }
                    next = it.next();
                    if (next.startsWith("f#") && next.length() > 2) {
                        long j10 = Long.parseLong(next.substring(2));
                        e1 e1Var = this.f2463e;
                        e1Var.getClass();
                        String string = bundle.getString(next);
                        Fragment fragment = null;
                        if (string != null) {
                            Fragment fragmentB = e1Var.f1231c.b(string);
                            if (fragmentB == null) {
                                e1Var.c0(new IllegalStateException(q.k("Fragment no longer exists for key ", next, ": unique id ", string)));
                                throw null;
                            }
                            fragment = fragmentB;
                        }
                        kVar2.h(fragment, j10);
                    } else {
                        if (!next.startsWith("s#") || next.length() <= 2) {
                            break;
                        }
                        long j11 = Long.parseLong(next.substring(2));
                        e0 e0Var = (e0) bundle.getParcelable(next);
                        if (q(j11)) {
                            kVar.h(e0Var, j11);
                        }
                    }
                }
                throw new IllegalArgumentException("Unexpected key in savedState: ".concat(next));
            }
        }
        throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
    }
}
