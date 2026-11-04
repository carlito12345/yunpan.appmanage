package rh;

/* loaded from: classes3.dex */
public final class s extends t {

    /* renamed from: a, reason: collision with root package name */
    public final Class f13806a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13807b;

    public s(Class cls, String str) {
        this.f13806a = cls;
        this.f13807b = "::".concat(str);
    }

    @Override // rh.p
    public final int a() {
        return 1;
    }

    @Override // rh.t
    public final boolean g(ph.q qVar) {
        return this.f13806a.isInstance(qVar);
    }

    public final String toString() {
        return this.f13807b;
    }
}
