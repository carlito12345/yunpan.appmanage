package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.s0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.v0;
import androidx.lifecycle.w0;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import m0.j0;
import m0.k0;

/* loaded from: classes.dex */
public abstract class m extends m0.k implements w0, androidx.lifecycle.i, b4.g, x, androidx.activity.result.h, n0.j, n0.k, j0, k0, x0.q {

    /* renamed from: b, reason: collision with root package name */
    public final a6.i f804b = new a6.i();

    /* renamed from: c, reason: collision with root package name */
    public final s4.a f805c;

    /* renamed from: d, reason: collision with root package name */
    public final androidx.lifecycle.v f806d;

    /* renamed from: e, reason: collision with root package name */
    public final b4.f f807e;

    /* renamed from: f, reason: collision with root package name */
    public v0 f808f;

    /* renamed from: g, reason: collision with root package name */
    public w f809g;

    /* renamed from: h, reason: collision with root package name */
    public final l f810h;

    /* renamed from: i, reason: collision with root package name */
    public final com.bumptech.glide.manager.s f811i;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicInteger f812j;

    /* renamed from: k, reason: collision with root package name */
    public final g f813k;
    public final CopyOnWriteArrayList l;

    /* renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f814m;

    /* renamed from: n, reason: collision with root package name */
    public final CopyOnWriteArrayList f815n;

    /* renamed from: p, reason: collision with root package name */
    public final CopyOnWriteArrayList f816p;

    /* renamed from: q, reason: collision with root package name */
    public final CopyOnWriteArrayList f817q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f818s;

    public m() {
        final androidx.fragment.app.j0 j0Var = (androidx.fragment.app.j0) this;
        this.f805c = new s4.a(new a2.h(4, j0Var));
        androidx.lifecycle.v vVar = new androidx.lifecycle.v(this);
        this.f806d = vVar;
        b4.f fVar = new b4.f(this);
        this.f807e = fVar;
        this.f809g = null;
        l lVar = new l(j0Var);
        this.f810h = lVar;
        this.f811i = new com.bumptech.glide.manager.s(lVar, new vb.l(4, j0Var));
        this.f812j = new AtomicInteger();
        this.f813k = new g(j0Var);
        this.l = new CopyOnWriteArrayList();
        this.f814m = new CopyOnWriteArrayList();
        this.f815n = new CopyOnWriteArrayList();
        this.f816p = new CopyOnWriteArrayList();
        this.f817q = new CopyOnWriteArrayList();
        this.r = false;
        this.f818s = false;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 19) {
            vVar.a(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity$2
                @Override // androidx.lifecycle.r
                public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
                    if (mVar == androidx.lifecycle.m.ON_STOP) {
                        Window window = j0Var.getWindow();
                        View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                        if (viewPeekDecorView != null) {
                            i.a(viewPeekDecorView);
                        }
                    }
                }
            });
        }
        vVar.a(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity$3
            @Override // androidx.lifecycle.r
            public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
                if (mVar == androidx.lifecycle.m.ON_DESTROY) {
                    j0Var.f804b.f433b = null;
                    if (!j0Var.isChangingConfigurations()) {
                        j0Var.getViewModelStore().a();
                    }
                    l lVar2 = j0Var.f810h;
                    androidx.fragment.app.j0 j0Var2 = lVar2.f803d;
                    j0Var2.getWindow().getDecorView().removeCallbacks(lVar2);
                    j0Var2.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(lVar2);
                }
            }
        });
        vVar.a(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity$4
            @Override // androidx.lifecycle.r
            public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
                androidx.fragment.app.j0 j0Var2 = j0Var;
                if (j0Var2.f808f == null) {
                    k kVar = (k) j0Var2.getLastNonConfigurationInstance();
                    if (kVar != null) {
                        j0Var2.f808f = kVar.f799a;
                    }
                    if (j0Var2.f808f == null) {
                        j0Var2.f808f = new v0();
                    }
                }
                j0Var2.f806d.b(this);
            }
        });
        fVar.a();
        l0.e(this);
        if (19 <= i10 && i10 <= 23) {
            vVar.a(new ImmLeaksCleaner(this));
        }
        fVar.f2550b.c("android:support:activity-result", new d(0, j0Var));
        o(new m.a() { // from class: androidx.activity.e
            @Override // m.a
            public final void a() {
                androidx.fragment.app.j0 j0Var2 = j0Var;
                Bundle bundleA = j0Var2.f807e.f2550b.a("android:support:activity-result");
                if (bundleA != null) {
                    g gVar = j0Var2.f813k;
                    gVar.getClass();
                    ArrayList<Integer> integerArrayList = bundleA.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    gVar.f846d = bundleA.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    Bundle bundle = bundleA.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                    Bundle bundle2 = gVar.f849g;
                    bundle2.putAll(bundle);
                    for (int i11 = 0; i11 < stringArrayList.size(); i11++) {
                        String str = stringArrayList.get(i11);
                        HashMap map = gVar.f844b;
                        boolean zContainsKey = map.containsKey(str);
                        HashMap map2 = gVar.f843a;
                        if (zContainsKey) {
                            Integer num = (Integer) map.remove(str);
                            if (!bundle2.containsKey(str)) {
                                map2.remove(num);
                            }
                        }
                        Integer num2 = integerArrayList.get(i11);
                        num2.intValue();
                        String str2 = stringArrayList.get(i11);
                        map2.put(num2, str2);
                        map.put(str2, num2);
                    }
                }
            }
        });
    }

    @Override // androidx.activity.x
    public final w a() {
        if (this.f809g == null) {
            this.f809g = new w(new h(0, this));
            this.f806d.a(new androidx.lifecycle.r() { // from class: androidx.activity.ComponentActivity$6
                @Override // androidx.lifecycle.r
                public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
                    if (mVar != androidx.lifecycle.m.ON_CREATE || Build.VERSION.SDK_INT < 33) {
                        return;
                    }
                    w wVar = this.f774a.f809g;
                    OnBackInvokedDispatcher onBackInvokedDispatcherA = j.a((m) tVar);
                    wVar.getClass();
                    ue.d.e(onBackInvokedDispatcherA, "invoker");
                    wVar.f872e = onBackInvokedDispatcherA;
                    wVar.c(wVar.f874g);
                }
            });
        }
        return this.f809g;
    }

    @Override // n0.j
    public final void b(w0.a aVar) {
        this.l.add(aVar);
    }

    @Override // n0.k
    public final void c(s0 s0Var) {
        this.f814m.remove(s0Var);
    }

    @Override // n0.j
    public final void d(s0 s0Var) {
        this.l.remove(s0Var);
    }

    @Override // androidx.activity.result.h
    public final androidx.activity.result.g e() {
        return this.f813k;
    }

    @Override // n0.k
    public final void f(s0 s0Var) {
        this.f814m.add(s0Var);
    }

    @Override // m0.k0
    public final void g(s0 s0Var) {
        this.f817q.add(s0Var);
    }

    @Override // androidx.lifecycle.i
    public final p1.b getDefaultViewModelCreationExtras() {
        p1.c cVar = new p1.c();
        Application application = getApplication();
        LinkedHashMap linkedHashMap = cVar.f12565a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.s0.f1809a, getApplication());
        }
        linkedHashMap.put(l0.f1782a, this);
        linkedHashMap.put(l0.f1783b, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(l0.f1784c, getIntent().getExtras());
        }
        return cVar;
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        return this.f806d;
    }

    @Override // b4.g
    public final b4.e getSavedStateRegistry() {
        return this.f807e.f2550b;
    }

    @Override // androidx.lifecycle.w0
    public final v0 getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f808f == null) {
            k kVar = (k) getLastNonConfigurationInstance();
            if (kVar != null) {
                this.f808f = kVar.f799a;
            }
            if (this.f808f == null) {
                this.f808f = new v0();
            }
        }
        return this.f808f;
    }

    @Override // m0.j0
    public final void h(s0 s0Var) {
        this.f816p.add(s0Var);
    }

    @Override // x0.q
    public final void i(androidx.fragment.app.v0 v0Var) {
        s4.a aVar = this.f805c;
        ((CopyOnWriteArrayList) aVar.f14294c).add(v0Var);
        ((Runnable) aVar.f14293b).run();
    }

    @Override // x0.q
    public final void k(androidx.fragment.app.v0 v0Var) {
        s4.a aVar = this.f805c;
        ((CopyOnWriteArrayList) aVar.f14294c).remove(v0Var);
        if (((HashMap) aVar.f14295d).remove(v0Var) != null) {
            throw new ClassCastException();
        }
        ((Runnable) aVar.f14293b).run();
    }

    @Override // m0.k0
    public final void l(s0 s0Var) {
        this.f817q.remove(s0Var);
    }

    @Override // m0.j0
    public final void m(s0 s0Var) {
        this.f816p.remove(s0Var);
    }

    public final void o(m.a aVar) {
        a6.i iVar = this.f804b;
        iVar.getClass();
        if (((m) iVar.f433b) != null) {
            aVar.a();
        }
        ((CopyOnWriteArraySet) iVar.f432a).add(aVar);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (this.f813k.a(i10, i11, intent)) {
            return;
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a().b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            ((w0.a) it.next()).accept(configuration);
        }
    }

    @Override // m0.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f807e.b(bundle);
        a6.i iVar = this.f804b;
        iVar.getClass();
        iVar.f433b = this;
        Iterator it = ((CopyOnWriteArraySet) iVar.f432a).iterator();
        while (it.hasNext()) {
            ((m.a) it.next()).a();
        }
        super.onCreate(bundle);
        int i10 = i0.f1772b;
        l0.g(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i10, Menu menu) {
        if (i10 != 0) {
            return true;
        }
        super.onCreatePanelMenu(i10, menu);
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f805c.f14294c).iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.v0) it.next()).f1413a.j(menu, menuInflater);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 != 0) {
            return false;
        }
        Iterator it = ((CopyOnWriteArrayList) this.f805c.f14294c).iterator();
        while (it.hasNext()) {
            if (((androidx.fragment.app.v0) it.next()).f1413a.o(menuItem)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        if (this.r) {
            return;
        }
        Iterator it = this.f816p.iterator();
        while (it.hasNext()) {
            ((w0.a) it.next()).accept(new m0.l(z));
        }
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.f815n.iterator();
        while (it.hasNext()) {
            ((w0.a) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.f805c.f14294c).iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.v0) it.next()).f1413a.p(menu);
        }
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        if (this.f818s) {
            return;
        }
        Iterator it = this.f817q.iterator();
        while (it.hasNext()) {
            ((w0.a) it.next()).accept(new m0.l0(z));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i10, View view, Menu menu) {
        if (i10 != 0) {
            return true;
        }
        super.onPreparePanel(i10, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.f805c.f14294c).iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.v0) it.next()).f1413a.s(menu);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        if (this.f813k.a(i10, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        k kVar;
        v0 v0Var = this.f808f;
        if (v0Var == null && (kVar = (k) getLastNonConfigurationInstance()) != null) {
            v0Var = kVar.f799a;
        }
        if (v0Var == null) {
            return null;
        }
        k kVar2 = new k();
        kVar2.f799a = v0Var;
        return kVar2;
    }

    @Override // m0.k, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.v vVar = this.f806d;
        if (vVar instanceof androidx.lifecycle.v) {
            vVar.g();
        }
        super.onSaveInstanceState(bundle);
        this.f807e.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        super.onTrimMemory(i10);
        Iterator it = this.f814m.iterator();
        while (it.hasNext()) {
            ((w0.a) it.next()).accept(Integer.valueOf(i10));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (d.b.R() && Build.VERSION.SDK_INT >= 18) {
                g4.a.a("reportFullyDrawn() for ComponentActivity");
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 > 19) {
                super.reportFullyDrawn();
            } else if (i10 == 19 && n0.g.a(this, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                super.reportFullyDrawn();
            }
            com.bumptech.glide.manager.s sVar = this.f811i;
            synchronized (sVar.f3412c) {
                try {
                    sVar.f3411b = true;
                    Iterator it = ((ArrayList) sVar.f3413d).iterator();
                    while (it.hasNext()) {
                        ((te.a) it.next()).b();
                    }
                    ((ArrayList) sVar.f3413d).clear();
                } finally {
                }
            }
            d.b.r();
        } catch (Throwable th2) {
            d.b.r();
            throw th2;
        }
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        l0.h(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        ue.d.e(decorView, "<this>");
        decorView.setTag(R.id.view_tree_view_model_store_owner, this);
        nh.b.j0(getWindow().getDecorView(), this);
        View decorView2 = getWindow().getDecorView();
        ue.d.e(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView3 = getWindow().getDecorView();
        ue.d.e(decorView3, "<this>");
        decorView3.setTag(R.id.report_drawn, this);
        View decorView4 = getWindow().getDecorView();
        l lVar = this.f810h;
        if (!lVar.f802c) {
            lVar.f802c = true;
            decorView4.getViewTreeObserver().addOnDrawListener(lVar);
        }
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.r = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.r = false;
            Iterator it = this.f816p.iterator();
            while (it.hasNext()) {
                ((w0.a) it.next()).accept(new m0.l(0, z));
            }
        } catch (Throwable th2) {
            this.r = false;
            throw th2;
        }
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.f818s = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.f818s = false;
            Iterator it = this.f817q.iterator();
            while (it.hasNext()) {
                ((w0.a) it.next()).accept(new m0.l0(0, z));
            }
        } catch (Throwable th2) {
            this.f818s = false;
            throw th2;
        }
    }
}
