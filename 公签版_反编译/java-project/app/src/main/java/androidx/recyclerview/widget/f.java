package androidx.recyclerview.widget;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: h, reason: collision with root package name */
    public static final e f2098h = new e();

    /* renamed from: a, reason: collision with root package name */
    public final c f2099a;

    /* renamed from: b, reason: collision with root package name */
    public final a2.g1 f2100b;

    /* renamed from: e, reason: collision with root package name */
    public List f2103e;

    /* renamed from: g, reason: collision with root package name */
    public int f2105g;

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArrayList f2102d = new CopyOnWriteArrayList();

    /* renamed from: f, reason: collision with root package name */
    public List f2104f = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public final e f2101c = f2098h;

    public f(c cVar, a2.g1 g1Var) {
        this.f2099a = cVar;
        this.f2100b = g1Var;
    }

    public final void a(List list, Runnable runnable) {
        Iterator it = this.f2102d.iterator();
        while (it.hasNext()) {
            ((b1) it.next()).f2039a.getClass();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void b(List list, Runnable runnable) {
        int i10 = this.f2105g + 1;
        this.f2105g = i10;
        List list2 = this.f2103e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List list3 = this.f2104f;
        c cVar = this.f2099a;
        if (list == null) {
            int size = list2.size();
            this.f2103e = null;
            this.f2104f = Collections.emptyList();
            cVar.e(0, size);
            a(list3, runnable);
            return;
        }
        if (list2 != null) {
            ((ExecutorService) this.f2100b.f175b).execute(new androidx.fragment.app.u1(this, list2, list, i10, runnable));
            return;
        }
        this.f2103e = list;
        this.f2104f = Collections.unmodifiableList(list);
        cVar.d(0, list.size());
        a(list3, runnable);
    }
}
