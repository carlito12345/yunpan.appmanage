package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.t1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0138t1 extends AbstractC0158x1 implements InterfaceC0110n2 {

    /* renamed from: h, reason: collision with root package name */
    private final double[] f9555h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    C0138t1(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, double[] dArr) {
        super(dArr.length, spliterator, abstractC0167z0);
        this.f9555h = dArr;
    }

    C0138t1(C0138t1 c0138t1, Spliterator spliterator, long j10, long j11) {
        super(c0138t1, spliterator, j10, j11, c0138t1.f9555h.length);
        this.f9555h = c0138t1.f9555h;
    }

    @Override // j$.util.stream.AbstractC0158x1
    final AbstractC0158x1 b(Spliterator spliterator, long j10, long j11) {
        return new C0138t1(this, spliterator, j10, j11);
    }

    @Override // j$.util.stream.AbstractC0158x1, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        int i10 = this.f9590f;
        if (i10 >= this.f9591g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f9590f));
        }
        double[] dArr = this.f9555h;
        this.f9590f = i10 + 1;
        dArr[i10] = d10;
    }
}
