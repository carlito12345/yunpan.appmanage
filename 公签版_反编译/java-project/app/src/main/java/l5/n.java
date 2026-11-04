package l5;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class n extends a6.m {
    public n() {
        super(500L);
    }

    @Override // a6.m
    public final void c(Object obj, Object obj2) {
        o oVar = (o) obj;
        oVar.getClass();
        ArrayDeque arrayDeque = o.f10602b;
        synchronized (arrayDeque) {
            arrayDeque.offer(oVar);
        }
    }
}
