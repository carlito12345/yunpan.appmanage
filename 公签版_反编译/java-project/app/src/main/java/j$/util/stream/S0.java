package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
class S0 extends AbstractC0062e {

    /* renamed from: h, reason: collision with root package name */
    protected final AbstractC0167z0 f9337h;

    /* renamed from: i, reason: collision with root package name */
    protected final LongFunction f9338i;

    /* renamed from: j, reason: collision with root package name */
    protected final BinaryOperator f9339j;

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0062e abstractC0062e = this.f9424d;
        if (abstractC0062e != null) {
            f((L0) this.f9339j.apply((L0) ((S0) abstractC0062e).c(), (L0) ((S0) this.f9425e).c()));
        }
        super.onCompletion(countedCompleter);
    }

    S0(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC0167z0, spliterator);
        this.f9337h = abstractC0167z0;
        this.f9338i = longFunction;
        this.f9339j = binaryOperator;
    }

    S0(S0 s0, Spliterator spliterator) {
        super(s0, spliterator);
        this.f9337h = s0.f9337h;
        this.f9338i = s0.f9338i;
        this.f9339j = s0.f9339j;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected AbstractC0062e e(Spliterator spliterator) {
        return new S0(this, spliterator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC0062e
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final L0 a() {
        D0 d02 = (D0) this.f9338i.apply(this.f9337h.m0(this.f9422b));
        this.f9337h.H0(this.f9422b, d02);
        return d02.a();
    }
}
