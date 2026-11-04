package androidx.lifecycle;

import android.app.Dialog;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class z {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f1831j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f1832a;

    /* renamed from: b, reason: collision with root package name */
    public final y.f f1833b = new y.f();

    /* renamed from: c, reason: collision with root package name */
    public int f1834c = 0;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1835d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f1836e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f1837f;

    /* renamed from: g, reason: collision with root package name */
    public int f1838g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1839h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1840i;

    public z() {
        Object obj = f1831j;
        this.f1837f = obj;
        this.f1836e = obj;
        this.f1838g = -1;
    }

    public static void a(String str) {
        x.a.d0().f17939b.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(g.b.A("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(y yVar) {
        Dialog dialog;
        if (yVar.f1828b) {
            if (!yVar.e()) {
                yVar.c(false);
                return;
            }
            int i10 = yVar.f1829c;
            int i11 = this.f1838g;
            if (i10 >= i11) {
                return;
            }
            yVar.f1829c = i11;
            androidx.fragment.app.y yVar2 = yVar.f1827a;
            Object obj = this.f1836e;
            yVar2.getClass();
            if (((t) obj) != null) {
                androidx.fragment.app.s sVar = (androidx.fragment.app.s) yVar2.f1426b;
                if (sVar.f1386f) {
                    View viewRequireView = sVar.requireView();
                    if (viewRequireView.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (sVar.f1390j != null) {
                        if (Log.isLoggable("FragmentManager", 3) && (dialog = sVar.f1390j) != null) {
                            dialog.toString();
                        }
                        sVar.f1390j.setContentView(viewRequireView);
                    }
                }
            }
        }
    }

    public final void c(y yVar) {
        if (this.f1839h) {
            this.f1840i = true;
            return;
        }
        this.f1839h = true;
        do {
            this.f1840i = false;
            if (yVar != null) {
                b(yVar);
                yVar = null;
            } else {
                y.f fVar = this.f1833b;
                fVar.getClass();
                y.d dVar = new y.d(fVar);
                fVar.f18528c.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    b((y) ((Map.Entry) dVar.next()).getValue());
                    if (this.f1840i) {
                        break;
                    }
                }
            }
        } while (this.f1840i);
        this.f1839h = false;
    }

    public final void d(androidx.fragment.app.y yVar) {
        Object obj;
        a("observeForever");
        x xVar = new x(this, yVar);
        y.f fVar = this.f1833b;
        y.c cVarA = fVar.a(yVar);
        if (cVarA != null) {
            obj = cVarA.f18520b;
        } else {
            y.c cVar = new y.c(yVar, xVar);
            fVar.f18529d++;
            y.c cVar2 = fVar.f18527b;
            if (cVar2 == null) {
                fVar.f18526a = cVar;
                fVar.f18527b = cVar;
            } else {
                cVar2.f18521c = cVar;
                cVar.f18522d = cVar2;
                fVar.f18527b = cVar;
            }
            obj = null;
        }
        y yVar2 = (y) obj;
        if (yVar2 instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (yVar2 != null) {
            return;
        }
        xVar.c(true);
    }
}
