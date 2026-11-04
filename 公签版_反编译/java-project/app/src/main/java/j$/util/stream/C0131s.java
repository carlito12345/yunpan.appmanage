package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0131s extends AbstractC0080h2 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ int f9550s;

    /* renamed from: t, reason: collision with root package name */
    final /* synthetic */ Object f9551t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0131s(AbstractC0047b abstractC0047b, int i10, Object obj, int i11) {
        super(abstractC0047b, i10);
        this.f9550s = i11;
        this.f9551t = obj;
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        switch (this.f9550s) {
            case 0:
                return new r(this, interfaceC0125q2, 0);
            case 1:
                return new V(this, interfaceC0125q2, 0);
            case 2:
                return new C0073g0(this, interfaceC0125q2, 0);
            case 3:
                return new C0102m(this, interfaceC0125q2, 1);
            case 4:
                return new C0102m(this, interfaceC0125q2, 2);
            case 5:
                return new C0102m(this, interfaceC0125q2, 3);
            default:
                return new C0097l(this, interfaceC0125q2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0131s(AbstractC0085i2 abstractC0085i2, Consumer consumer) {
        super(abstractC0085i2, 0);
        this.f9550s = 3;
        this.f9551t = consumer;
    }
}
