package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class Q0 extends S0 {

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f9314k;

    @Override // j$.util.stream.S0, j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        switch (this.f9314k) {
        }
        return new S0(this, spliterator);
    }

    @Override // j$.util.stream.S0, j$.util.stream.AbstractC0062e
    protected final /* bridge */ /* synthetic */ Object a() {
        switch (this.f9314k) {
        }
        return a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        super(abstractC0167z0, spliterator, new R0(intFunction), new C0087j(17));
        this.f9314k = 3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q0(int i10, Spliterator spliterator, AbstractC0167z0 abstractC0167z0) {
        super(abstractC0167z0, spliterator, new C0087j(11), new C0087j(12));
        this.f9314k = i10;
        switch (i10) {
            case 1:
                super(abstractC0167z0, spliterator, new C0087j(13), new C0087j(14));
                break;
            case 2:
                super(abstractC0167z0, spliterator, new C0087j(15), new C0087j(16));
                break;
            default:
                break;
        }
    }
}
