package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.m3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0106m3 extends AbstractC0111n3 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    final Object[] f9502b;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    C0106m3(int i10) {
        this.f9502b = new Object[i10];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i10 = this.f9506a;
        this.f9506a = i10 + 1;
        this.f9502b[i10] = obj;
    }
}
