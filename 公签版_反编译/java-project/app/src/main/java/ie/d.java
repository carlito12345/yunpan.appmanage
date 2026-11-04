package ie;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class d implements a, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public ue.e f8686a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f8687b = e.f8689b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f8688c = this;

    /* JADX WARN: Multi-variable type inference failed */
    public d(te.a aVar) {
        this.f8686a = (ue.e) aVar;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, te.a, ue.e] */
    public final Object a() {
        Object objB;
        Object obj = this.f8687b;
        e eVar = e.f8689b;
        if (obj != eVar) {
            return obj;
        }
        synchronized (this.f8688c) {
            objB = this.f8687b;
            if (objB == eVar) {
                ?? r12 = this.f8686a;
                ue.d.b(r12);
                objB = r12.b();
                this.f8687b = objB;
                this.f8686a = null;
            }
        }
        return objB;
    }

    public final String toString() {
        return this.f8687b != e.f8689b ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
