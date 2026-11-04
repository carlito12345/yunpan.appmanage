package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0128r1 extends C0124q1 implements C0 {
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

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        AbstractC0167z0.G(this, l);
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

    C0128r1(long j10) {
        super(j10);
    }

    @Override // j$.util.stream.C0, j$.util.stream.D0
    public final J0 a() {
        int i10 = this.f9538b;
        long[] jArr = this.f9537a;
        if (i10 >= jArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f9538b), Integer.valueOf(jArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        long[] jArr = this.f9537a;
        if (j10 != jArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j10), Integer.valueOf(jArr.length)));
        }
        this.f9538b = 0;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        int i10 = this.f9538b;
        long[] jArr = this.f9537a;
        if (i10 < jArr.length) {
            this.f9538b = 1 + i10;
            jArr[i10] = j10;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(jArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = this.f9538b;
        long[] jArr = this.f9537a;
        if (i10 < jArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f9538b), Integer.valueOf(jArr.length)));
        }
    }

    @Override // j$.util.stream.C0124q1
    public final String toString() {
        long[] jArr = this.f9537a;
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(jArr.length - this.f9538b), Arrays.toString(jArr));
    }
}
