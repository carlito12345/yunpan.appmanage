package t7;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class o implements n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final transient Object f14841a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final n f14842b;

    /* renamed from: c, reason: collision with root package name */
    public volatile transient boolean f14843c;

    /* renamed from: d, reason: collision with root package name */
    public transient Object f14844d;

    public o(n nVar) {
        this.f14842b = nVar;
    }

    @Override // t7.n
    public final Object get() {
        if (!this.f14843c) {
            synchronized (this.f14841a) {
                try {
                    if (!this.f14843c) {
                        Object obj = this.f14842b.get();
                        this.f14844d = obj;
                        this.f14843c = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f14844d;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder("Suppliers.memoize(");
        if (this.f14843c) {
            obj = "<supplier that returned " + this.f14844d + ">";
        } else {
            obj = this.f14842b;
        }
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }
}
