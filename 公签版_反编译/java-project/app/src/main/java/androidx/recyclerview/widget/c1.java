package androidx.recyclerview.widget;

import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public abstract class c1 extends m1 {
    public c1(s5.c cVar) {
        b1 b1Var = new b1(this);
        c cVar2 = new c(this);
        synchronized (d.f2058a) {
            try {
                if (d.f2059b == null) {
                    d.f2059b = Executors.newFixedThreadPool(2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        new f(cVar2, new a2.g1(d.f2059b, 6, cVar)).f2102d.add(b1Var);
    }
}
