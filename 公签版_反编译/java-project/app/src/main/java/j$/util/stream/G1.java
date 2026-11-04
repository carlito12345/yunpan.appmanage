package j$.util.stream;

import j$.util.C0035l;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class G1 implements V1, InterfaceC0110n2 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f9230a;

    /* renamed from: b, reason: collision with root package name */
    private double f9231b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ DoubleBinaryOperator f9232c;

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
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    G1(DoubleBinaryOperator doubleBinaryOperator) {
        this.f9232c = doubleBinaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        G1 g1 = (G1) v12;
        if (g1.f9230a) {
            return;
        }
        accept(g1.f9231b);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9230a = true;
        this.f9231b = 0.0d;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        if (this.f9230a) {
            this.f9230a = false;
            this.f9231b = d10;
        } else {
            this.f9231b = this.f9232c.applyAsDouble(this.f9231b, d10);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f9230a ? C0035l.a() : C0035l.d(this.f9231b);
    }
}
