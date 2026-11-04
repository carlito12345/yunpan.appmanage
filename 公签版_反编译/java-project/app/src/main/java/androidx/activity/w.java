package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.d1;
import androidx.fragment.app.u0;
import com.yunpan.appmanage.ui.ActivityDownload;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f868a;

    /* renamed from: b, reason: collision with root package name */
    public final je.h f869b = new je.h();

    /* renamed from: c, reason: collision with root package name */
    public u0 f870c;

    /* renamed from: d, reason: collision with root package name */
    public final OnBackInvokedCallback f871d;

    /* renamed from: e, reason: collision with root package name */
    public OnBackInvokedDispatcher f872e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f873f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f874g;

    public w(Runnable runnable) {
        this.f868a = runnable;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            this.f871d = i10 >= 34 ? t.f858a.a(new o(this, 0), new o(this, 1), new p(this, 0), new p(this, 1)) : r.f828a.a(new p(this, 2));
        }
    }

    public final void a(androidx.lifecycle.t tVar, u0 u0Var) {
        ue.d.e(u0Var, "onBackPressedCallback");
        androidx.lifecycle.o lifecycle = tVar.getLifecycle();
        if (((androidx.lifecycle.v) lifecycle).f1818c == androidx.lifecycle.n.DESTROYED) {
            return;
        }
        u0Var.f1401b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, lifecycle, u0Var));
        d();
        u0Var.f1402c = new v(this);
    }

    public final void b() {
        Object objPrevious;
        je.h hVar = this.f869b;
        ListIterator<E> listIterator = hVar.listIterator(hVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            } else {
                objPrevious = listIterator.previous();
                if (((u0) objPrevious).f1400a) {
                    break;
                }
            }
        }
        u0 u0Var = (u0) objPrevious;
        this.f870c = null;
        if (u0Var == null) {
            Runnable runnable = this.f868a;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        switch (u0Var.f1403d) {
            case 0:
                d1 d1Var = (d1) u0Var.f1404e;
                d1Var.y(true);
                if (!d1Var.f1236h.f1400a) {
                    d1Var.f1235g.b();
                    break;
                } else {
                    d1Var.N();
                    break;
                }
            default:
                ActivityDownload activityDownload = (ActivityDownload) u0Var.f1404e;
                if (activityDownload.R.b() > 1 && (activityDownload.C.hasFocus() || activityDownload.D.hasFocus())) {
                    activityDownload.A(activityDownload.R.b() - 2);
                    break;
                } else {
                    activityDownload.C();
                    break;
                }
        }
    }

    public final void c(boolean z) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f872e;
        OnBackInvokedCallback onBackInvokedCallback = this.f871d;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        r rVar = r.f828a;
        if (z && !this.f873f) {
            rVar.b(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f873f = true;
        } else {
            if (z || !this.f873f) {
                return;
            }
            rVar.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f873f = false;
        }
    }

    public final void d() {
        boolean z = this.f874g;
        je.h hVar = this.f869b;
        boolean z4 = false;
        if (!(hVar instanceof Collection) || !hVar.isEmpty()) {
            Iterator it = hVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((u0) it.next()).f1400a) {
                    z4 = true;
                    break;
                }
            }
        }
        this.f874g = z4;
        if (z4 == z || Build.VERSION.SDK_INT < 33) {
            return;
        }
        c(z4);
    }
}
