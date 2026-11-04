package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class Z0 extends Y0 implements A0 {
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

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    @Override // j$.util.stream.D0
    public final /* bridge */ /* synthetic */ L0 a() {
        a();
        return this;
    }

    Z0(long j10) {
        super(j10);
    }

    @Override // j$.util.stream.A0, j$.util.stream.D0
    public final F0 a() {
        int i10 = this.f9376b;
        double[] dArr = this.f9375a;
        if (i10 >= dArr.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f9376b), Integer.valueOf(dArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        double[] dArr = this.f9375a;
        if (j10 != dArr.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j10), Integer.valueOf(dArr.length)));
        }
        this.f9376b = 0;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        int i10 = this.f9376b;
        double[] dArr = this.f9375a;
        if (i10 < dArr.length) {
            this.f9376b = 1 + i10;
            dArr[i10] = d10;
            return;
        }
        throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(dArr.length)));
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = this.f9376b;
        double[] dArr = this.f9375a;
        if (i10 < dArr.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f9376b), Integer.valueOf(dArr.length)));
        }
    }

    @Override // j$.util.stream.Y0
    public final String toString() {
        double[] dArr = this.f9375a;
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(dArr.length - this.f9376b), Arrays.toString(dArr));
    }
}
