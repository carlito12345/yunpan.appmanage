package j$.util.stream;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class U implements IntConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0125q2 f9357a;

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        this.f9357a.accept(i10);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }
}
