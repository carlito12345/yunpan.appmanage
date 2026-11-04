package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.v1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0148v1 extends AbstractC0158x1 implements InterfaceC0120p2 {

    /* renamed from: h, reason: collision with root package name */
    private final long[] f9568h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        AbstractC0167z0.G(this, l);
    }

    C0148v1(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, long[] jArr) {
        super(jArr.length, spliterator, abstractC0167z0);
        this.f9568h = jArr;
    }

    C0148v1(C0148v1 c0148v1, Spliterator spliterator, long j10, long j11) {
        super(c0148v1, spliterator, j10, j11, c0148v1.f9568h.length);
        this.f9568h = c0148v1.f9568h;
    }

    @Override // j$.util.stream.AbstractC0158x1
    final AbstractC0158x1 b(Spliterator spliterator, long j10, long j11) {
        return new C0148v1(this, spliterator, j10, j11);
    }

    @Override // j$.util.stream.AbstractC0158x1, j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        int i10 = this.f9590f;
        if (i10 >= this.f9591g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f9590f));
        }
        long[] jArr = this.f9568h;
        this.f9590f = i10 + 1;
        jArr[i10] = j10;
    }
}
