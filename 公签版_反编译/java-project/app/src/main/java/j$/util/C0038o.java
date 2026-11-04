package j$.util;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0038o implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Consumer f9175a;

    public /* synthetic */ C0038o(Consumer consumer) {
        this.f9175a = consumer;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        this.f9175a.accept(Double.valueOf(d10));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }
}
