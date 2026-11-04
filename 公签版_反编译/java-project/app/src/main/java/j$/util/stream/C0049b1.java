package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.b1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0049b1 extends AbstractC0069f1 implements F0 {
    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.O(this, consumer);
    }

    @Override // j$.util.stream.AbstractC0069f1, j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.R(this, j10, j11);
    }

    @Override // j$.util.stream.AbstractC0069f1, j$.util.stream.L0
    public final /* bridge */ /* synthetic */ L0 b(int i10) {
        b(i10);
        throw null;
    }

    @Override // j$.util.stream.AbstractC0069f1, j$.util.stream.L0
    public final K0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ void j(Object[] objArr, int i10) {
        AbstractC0167z0.L(this, (Double[]) objArr, i10);
    }

    C0049b1() {
    }

    @Override // j$.util.stream.L0
    public final j$.util.O spliterator() {
        return Spliterators.b();
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return Spliterators.b();
    }

    @Override // j$.util.stream.K0
    public final Object e() {
        return AbstractC0167z0.f9604g;
    }
}
