package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0174w implements LongConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Consumer f9608a;

    public /* synthetic */ C0174w(Consumer consumer) {
        this.f9608a = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9608a.accept(Long.valueOf(j10));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }
}
