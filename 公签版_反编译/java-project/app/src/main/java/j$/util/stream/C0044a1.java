package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.a1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0044a1 extends T2 implements F0, A0 {
    @Override // j$.util.stream.A0, j$.util.stream.D0
    public final F0 a() {
        return this;
    }

    @Override // j$.util.stream.D0
    public final L0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(int i10) {
        AbstractC0167z0.I();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j10) {
        AbstractC0167z0.J();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.R(this, j10, j11);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ Object[] l(IntFunction intFunction) {
        return AbstractC0167z0.K(this, intFunction);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.L0
    public final /* bridge */ /* synthetic */ L0 b(int i10) {
        b(i10);
        throw null;
    }

    @Override // j$.util.stream.K0, j$.util.stream.L0
    public final K0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ void j(Object[] objArr, int i10) {
        AbstractC0167z0.L(this, (Double[]) objArr, i10);
    }

    @Override // j$.util.stream.Z2, j$.util.stream.K0
    public final void d(Object obj, int i10) {
        super.d((double[]) obj, i10);
    }

    @Override // j$.util.stream.Z2, j$.util.stream.K0
    public final void f(Object obj) {
        super.f((DoubleConsumer) obj);
    }

    C0044a1() {
    }

    @Override // j$.util.stream.T2, j$.util.stream.Z2, java.lang.Iterable, j$.lang.Iterable
    public final j$.util.O spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.T2, j$.util.stream.Z2, java.lang.Iterable, j$.lang.Iterable
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        clear();
        v(j10);
    }

    @Override // j$.util.stream.Z2, j$.util.stream.K0
    public final Object e() {
        return (double[]) super.e();
    }
}
