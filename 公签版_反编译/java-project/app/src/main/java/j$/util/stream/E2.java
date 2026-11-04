package j$.util.stream;

import java.util.Comparator;

/* loaded from: classes2.dex */
abstract class E2 extends AbstractC0105m2 {

    /* renamed from: b, reason: collision with root package name */
    protected final Comparator f9215b;

    /* renamed from: c, reason: collision with root package name */
    protected boolean f9216c;

    E2(InterfaceC0125q2 interfaceC0125q2, Comparator comparator) {
        super(interfaceC0125q2);
        this.f9215b = comparator;
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        this.f9216c = true;
        return false;
    }
}
