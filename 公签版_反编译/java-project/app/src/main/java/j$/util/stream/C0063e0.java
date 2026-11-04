package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.e0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0063e0 implements LongConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0125q2 f9427a;

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9427a.accept(j10);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }
}
