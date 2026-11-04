package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.i3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0086i3 extends AbstractC0101l3 implements DoubleConsumer {

    /* renamed from: c, reason: collision with root package name */
    final double[] f9472c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.AbstractC0101l3
    final void b(Object obj, long j10) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i10 = 0; i10 < j10; i10++) {
            doubleConsumer.accept(this.f9472c[i10]);
        }
    }

    C0086i3(int i10) {
        this.f9472c = new double[i10];
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        int i10 = this.f9496b;
        this.f9496b = i10 + 1;
        this.f9472c[i10] = d10;
    }
}
