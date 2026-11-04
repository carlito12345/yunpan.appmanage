package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.g1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0074g1 extends O0 implements D0 {
    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
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

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    C0074g1(long j10, IntFunction intFunction) {
        super(j10, intFunction);
    }

    @Override // j$.util.stream.D0
    public final L0 a() {
        int i10 = this.f9300b;
        Object[] objArr = this.f9299a;
        if (i10 >= objArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f9300b), Integer.valueOf(objArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        Object[] objArr = this.f9299a;
        if (j10 != objArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j10), Integer.valueOf(objArr.length)));
        }
        this.f9300b = 0;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        int i10 = this.f9300b;
        Object[] objArr = this.f9299a;
        if (i10 < objArr.length) {
            this.f9300b = 1 + i10;
            objArr[i10] = obj;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(objArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = this.f9300b;
        Object[] objArr = this.f9299a;
        if (i10 < objArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f9300b), Integer.valueOf(objArr.length)));
        }
    }

    @Override // j$.util.stream.O0
    public final String toString() {
        Object[] objArr = this.f9299a;
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(objArr.length - this.f9300b), Arrays.toString(objArr));
    }
}
