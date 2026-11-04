package j$.util;

import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0041s implements IntConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Consumer f9178a;

    public /* synthetic */ C0041s(Consumer consumer) {
        this.f9178a = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        this.f9178a.accept(Integer.valueOf(i10));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }
}
