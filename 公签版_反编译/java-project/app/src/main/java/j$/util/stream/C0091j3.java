package j$.util.stream;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.j3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0091j3 extends AbstractC0101l3 implements IntConsumer {

    /* renamed from: c, reason: collision with root package name */
    final int[] f9475c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.AbstractC0101l3
    public final void b(Object obj, long j10) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i10 = 0; i10 < j10; i10++) {
            intConsumer.accept(this.f9475c[i10]);
        }
    }

    C0091j3(int i10) {
        this.f9475c = new int[i10];
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        int i11 = this.f9496b;
        this.f9496b = i11 + 1;
        this.f9475c[i11] = i10;
    }
}
