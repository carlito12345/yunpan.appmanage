package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.w1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0153w1 extends AbstractC0158x1 {

    /* renamed from: h, reason: collision with root package name */
    private final Object[] f9578h;

    C0153w1(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, Object[] objArr) {
        super(objArr.length, spliterator, abstractC0167z0);
        this.f9578h = objArr;
    }

    C0153w1(C0153w1 c0153w1, Spliterator spliterator, long j10, long j11) {
        super(c0153w1, spliterator, j10, j11, c0153w1.f9578h.length);
        this.f9578h = c0153w1.f9578h;
    }

    @Override // j$.util.stream.AbstractC0158x1
    final AbstractC0158x1 b(Spliterator spliterator, long j10, long j11) {
        return new C0153w1(this, spliterator, j10, j11);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        int i10 = this.f9590f;
        if (i10 >= this.f9591g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f9590f));
        }
        Object[] objArr = this.f9578h;
        this.f9590f = i10 + 1;
        objArr[i10] = obj;
    }
}
