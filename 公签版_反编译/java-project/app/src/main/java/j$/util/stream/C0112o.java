package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0112o implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0125q2 f9509a;

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        this.f9509a.accept(d10);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }
}
