package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class W extends AbstractC0053c0 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ int f9367s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ Object f9368t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ W(AbstractC0047b abstractC0047b, int i10, Object obj, int i11) {
        super(abstractC0047b, i10);
        this.f9367s = i11;
        this.f9368t = obj;
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        switch (this.f9367s) {
            case 0:
                return new V(this, interfaceC0125q2, 1);
            case 1:
                return new V(this, interfaceC0125q2, 2);
            case 2:
                return new Z(this, interfaceC0125q2);
            case 3:
                return new C0102m(this, interfaceC0125q2, 4);
            default:
                return new C0060d2(this, interfaceC0125q2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(AbstractC0058d0 abstractC0058d0, IntConsumer intConsumer) {
        super(abstractC0058d0, 0);
        this.f9367s = 0;
        this.f9368t = intConsumer;
    }
}
