package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.j2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0090j2 implements InterfaceC0110n2 {

    /* renamed from: a, reason: collision with root package name */
    protected final InterfaceC0125q2 f9474a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    public AbstractC0090j2(InterfaceC0125q2 interfaceC0125q2) {
        this.f9474a = (InterfaceC0125q2) Objects.requireNonNull(interfaceC0125q2);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        this.f9474a.n(j10);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void m() {
        this.f9474a.m();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public boolean p() {
        return this.f9474a.p();
    }
}
