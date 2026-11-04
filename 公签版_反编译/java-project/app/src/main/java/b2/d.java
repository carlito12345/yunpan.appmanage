package b2;

import f2.c0;
import f2.h0;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import u1.f0;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final int f2528a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f2529b;

    /* renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f2530c;

    public /* synthetic */ d(CopyOnWriteArrayList copyOnWriteArrayList, int i10, c0 c0Var) {
        this.f2530c = copyOnWriteArrayList;
        this.f2528a = i10;
        this.f2529b = c0Var;
    }

    public void a(u1.f fVar) {
        Iterator it = this.f2530c.iterator();
        while (it.hasNext()) {
            h0 h0Var = (h0) it.next();
            f0.J(h0Var.f5282a, new a2.c0(fVar, 19, h0Var.f5283b));
        }
    }
}
