package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.k3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0096k3 extends AbstractC0101l3 implements LongConsumer {

    /* renamed from: c, reason: collision with root package name */
    final long[] f9486c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.AbstractC0101l3
    public final void b(Object obj, long j10) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i10 = 0; i10 < j10; i10++) {
            longConsumer.accept(this.f9486c[i10]);
        }
    }

    C0096k3(int i10) {
        this.f9486c = new long[i10];
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        int i10 = this.f9496b;
        this.f9496b = i10 + 1;
        this.f9486c[i10] = j10;
    }
}
