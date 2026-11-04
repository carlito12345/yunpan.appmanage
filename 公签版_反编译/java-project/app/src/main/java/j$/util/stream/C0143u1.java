package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0143u1 extends AbstractC0158x1 implements InterfaceC0115o2 {

    /* renamed from: h, reason: collision with root package name */
    private final int[] f9562h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        o((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    C0143u1(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, int[] iArr) {
        super(iArr.length, spliterator, abstractC0167z0);
        this.f9562h = iArr;
    }

    C0143u1(C0143u1 c0143u1, Spliterator spliterator, long j10, long j11) {
        super(c0143u1, spliterator, j10, j11, c0143u1.f9562h.length);
        this.f9562h = c0143u1.f9562h;
    }

    @Override // j$.util.stream.AbstractC0158x1
    final AbstractC0158x1 b(Spliterator spliterator, long j10, long j11) {
        return new C0143u1(this, spliterator, j10, j11);
    }

    @Override // j$.util.stream.AbstractC0158x1, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        int i11 = this.f9590f;
        if (i11 >= this.f9591g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f9590f));
        }
        int[] iArr = this.f9562h;
        this.f9590f = i11 + 1;
        iArr[i11] = i10;
    }
}
