package t7;

import androidx.media3.exoplayer.video.r;

/* loaded from: classes.dex */
public final class p implements n {

    /* renamed from: d, reason: collision with root package name */
    public static final r f14845d = new r(1);

    /* renamed from: a, reason: collision with root package name */
    public final Object f14846a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile n f14847b;

    /* renamed from: c, reason: collision with root package name */
    public Object f14848c;

    public p(n nVar) {
        this.f14847b = nVar;
    }

    @Override // t7.n
    public final Object get() {
        n nVar = this.f14847b;
        r rVar = f14845d;
        if (nVar != rVar) {
            synchronized (this.f14846a) {
                try {
                    if (this.f14847b != rVar) {
                        Object obj = this.f14847b.get();
                        this.f14848c = obj;
                        this.f14847b = rVar;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f14848c;
    }

    public final String toString() {
        Object obj = this.f14847b;
        StringBuilder sb2 = new StringBuilder("Suppliers.memoize(");
        if (obj == f14845d) {
            obj = "<supplier that returned " + this.f14848c + ">";
        }
        sb2.append(obj);
        sb2.append(")");
        return sb2.toString();
    }
}
