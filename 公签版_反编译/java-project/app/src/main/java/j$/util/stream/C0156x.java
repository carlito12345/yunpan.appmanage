package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0156x extends A {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ int f9581s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ Object f9582t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0156x(AbstractC0047b abstractC0047b, int i10, Object obj, int i11) {
        super(abstractC0047b, i10);
        this.f9581s = i11;
        this.f9582t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0156x(B b10, DoubleConsumer doubleConsumer) {
        super(b10, 0);
        this.f9581s = 1;
        this.f9582t = doubleConsumer;
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        switch (this.f9581s) {
            case 0:
                return new C0151w(this, interfaceC0125q2);
            case 1:
                return new r(this, interfaceC0125q2, 5);
            case 2:
                return new C0102m(this, interfaceC0125q2, 6);
            default:
                return new C0060d2(this, interfaceC0125q2);
        }
    }
}
