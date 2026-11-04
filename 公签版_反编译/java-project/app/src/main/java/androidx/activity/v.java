package androidx.activity;

import java.io.Serializable;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements te.a, ue.c, ze.a, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public transient ze.a f861a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f862b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f863c;

    /* renamed from: d, reason: collision with root package name */
    public final String f864d;

    /* renamed from: e, reason: collision with root package name */
    public final String f865e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f866f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f867g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v(w wVar) {
        this(0, wVar, w.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V");
        this.f867g = 0;
    }

    public final ze.a a() {
        ue.g.f16110a.getClass();
        return this;
    }

    @Override // te.a
    public final Object b() {
        switch (this.f867g) {
            case 0:
                ((w) this.f862b).d();
                break;
            default:
                ((w) this.f862b).d();
                break;
        }
        return ie.e.f8690c;
    }

    public final ue.a c() {
        Class cls = this.f863c;
        if (this.f866f) {
            ue.g.f16110a.getClass();
            return new ue.f(cls);
        }
        ue.g.f16110a.getClass();
        return new ue.b(cls);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            return this.f864d.equals(vVar.f864d) && this.f865e.equals(vVar.f865e) && ue.d.a(this.f862b, vVar.f862b) && c().equals(vVar.c());
        }
        if (!(obj instanceof v)) {
            return false;
        }
        ze.a aVar = this.f861a;
        if (aVar == null) {
            a();
            this.f861a = this;
            aVar = this;
        }
        return obj.equals(aVar);
    }

    public final int hashCode() {
        c();
        return this.f865e.hashCode() + org.bouncycastle.jcajce.provider.digest.a.c(c().hashCode() * 31, 31, this.f864d);
    }

    public final String toString() {
        ze.a aVar = this.f861a;
        if (aVar == null) {
            a();
            this.f861a = this;
            aVar = this;
        }
        if (aVar != this) {
            return aVar.toString();
        }
        String str = this.f864d;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : g.b.A("function ", str, " (Kotlin reflection is not available)");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public v(Object obj) {
        this(0, obj, w.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V");
        this.f867g = 1;
    }

    public v(int i10, Object obj, Class cls, String str, String str2) {
        this.f862b = obj;
        this.f863c = cls;
        this.f864d = str;
        this.f865e = str2;
        this.f866f = false;
    }
}
