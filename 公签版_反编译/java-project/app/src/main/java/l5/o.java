package l5;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayDeque f10602b;

    /* renamed from: a, reason: collision with root package name */
    public Object f10603a;

    static {
        char[] cArr = a6.q.f446a;
        f10602b = new ArrayDeque(0);
    }

    public static o a(Object obj) {
        o oVar;
        ArrayDeque arrayDeque = f10602b;
        synchronized (arrayDeque) {
            oVar = (o) arrayDeque.poll();
        }
        if (oVar == null) {
            oVar = new o();
        }
        oVar.f10603a = obj;
        return oVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        oVar.getClass();
        return this.f10603a.equals(oVar.f10603a);
    }

    public final int hashCode() {
        return this.f10603a.hashCode();
    }
}
