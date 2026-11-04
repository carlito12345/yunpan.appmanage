package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
final class T extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    private Spliterator f9346a;

    /* renamed from: b, reason: collision with root package name */
    private final InterfaceC0125q2 f9347b;

    /* renamed from: c, reason: collision with root package name */
    private final AbstractC0167z0 f9348c;

    /* renamed from: d, reason: collision with root package name */
    private long f9349d;

    T(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, InterfaceC0125q2 interfaceC0125q2) {
        super(null);
        this.f9347b = interfaceC0125q2;
        this.f9348c = abstractC0167z0;
        this.f9346a = spliterator;
        this.f9349d = 0L;
    }

    T(T t10, Spliterator spliterator) {
        super(t10);
        this.f9346a = spliterator;
        this.f9347b = t10.f9347b;
        this.f9349d = t10.f9349d;
        this.f9348c = t10.f9348c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f9346a;
        long jEstimateSize = spliterator.estimateSize();
        long jG = this.f9349d;
        if (jG == 0) {
            jG = AbstractC0062e.g(jEstimateSize);
            this.f9349d = jG;
        }
        boolean zN = EnumC0071f3.SHORT_CIRCUIT.n(this.f9348c.t0());
        InterfaceC0125q2 interfaceC0125q2 = this.f9347b;
        boolean z = false;
        T t10 = this;
        while (true) {
            if (zN && interfaceC0125q2.p()) {
                break;
            }
            if (jEstimateSize <= jG || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            T t11 = new T(t10, spliteratorTrySplit);
            t10.addToPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
            } else {
                T t12 = t10;
                t10 = t11;
                t11 = t12;
            }
            z = !z;
            t10.fork();
            t10 = t11;
            jEstimateSize = spliterator.estimateSize();
        }
        t10.f9348c.h0(spliterator, interfaceC0125q2);
        t10.f9346a = null;
        t10.propagateCompletion();
    }
}
