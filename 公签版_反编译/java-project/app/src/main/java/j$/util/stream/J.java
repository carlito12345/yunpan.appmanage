package j$.util.stream;

import j$.util.Optional;

/* loaded from: classes2.dex */
final class J extends K {

    /* renamed from: c, reason: collision with root package name */
    static final F f9254c;

    /* renamed from: d, reason: collision with root package name */
    static final F f9255d;

    J() {
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f9258a) {
            return Optional.d(this.f9259b);
        }
        return null;
    }

    static {
        EnumC0076g3 enumC0076g3 = EnumC0076g3.REFERENCE;
        f9254c = new F(true, enumC0076g3, Optional.a(), new C0117p(10), new C0087j(10));
        f9255d = new F(false, enumC0076g3, Optional.a(), new C0117p(10), new C0087j(10));
    }
}
