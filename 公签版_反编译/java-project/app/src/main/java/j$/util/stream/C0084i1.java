package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.i1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0084i1 extends C0079h1 implements B0 {
    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
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
        o((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    @Override // j$.util.stream.D0
    public final /* bridge */ /* synthetic */ L0 a() {
        a();
        return this;
    }

    C0084i1(long j10) {
        super(j10);
    }

    @Override // j$.util.stream.B0, j$.util.stream.D0
    public final H0 a() {
        int i10 = this.f9458b;
        int[] iArr = this.f9457a;
        if (i10 >= iArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f9458b), Integer.valueOf(iArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        int[] iArr = this.f9457a;
        if (j10 != iArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j10), Integer.valueOf(iArr.length)));
        }
        this.f9458b = 0;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        int i11 = this.f9458b;
        int[] iArr = this.f9457a;
        if (i11 < iArr.length) {
            this.f9458b = 1 + i11;
            iArr[i11] = i10;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(iArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = this.f9458b;
        int[] iArr = this.f9457a;
        if (i10 < iArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f9458b), Integer.valueOf(iArr.length)));
        }
    }

    @Override // j$.util.stream.C0079h1
    public final String toString() {
        int[] iArr = this.f9457a;
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(iArr.length - this.f9458b), Arrays.toString(iArr));
    }
}
