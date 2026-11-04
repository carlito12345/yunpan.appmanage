package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class Y extends AbstractC0098l0 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ int f9373s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ Object f9374t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Y(AbstractC0047b abstractC0047b, int i10, Object obj, int i11) {
        super(abstractC0047b, i10);
        this.f9373s = i11;
        this.f9374t = obj;
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        switch (this.f9373s) {
            case 0:
                return new V(this, interfaceC0125q2, 3);
            case 1:
                return new C0083i0(this, interfaceC0125q2);
            case 2:
                return new C0073g0(this, interfaceC0125q2, 5);
            case 3:
                return new C0060d2(this, interfaceC0125q2);
            default:
                return new C0102m(this, interfaceC0125q2, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y(AbstractC0103m0 abstractC0103m0, LongConsumer longConsumer) {
        super(abstractC0103m0, 0);
        this.f9373s = 2;
        this.f9374t = longConsumer;
    }
}
