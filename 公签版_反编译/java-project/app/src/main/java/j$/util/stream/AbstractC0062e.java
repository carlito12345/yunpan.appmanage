package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.ForkJoinPool;

/* renamed from: j$.util.stream.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0062e extends CountedCompleter {

    /* renamed from: g, reason: collision with root package name */
    private static final int f9420g = ForkJoinPool.getCommonPoolParallelism() << 2;

    /* renamed from: a, reason: collision with root package name */
    protected final AbstractC0167z0 f9421a;

    /* renamed from: b, reason: collision with root package name */
    protected Spliterator f9422b;

    /* renamed from: c, reason: collision with root package name */
    protected long f9423c;

    /* renamed from: d, reason: collision with root package name */
    protected AbstractC0062e f9424d;

    /* renamed from: e, reason: collision with root package name */
    protected AbstractC0062e f9425e;

    /* renamed from: f, reason: collision with root package name */
    private Object f9426f;

    protected abstract Object a();

    protected abstract AbstractC0062e e(Spliterator spliterator);

    protected AbstractC0062e(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        super(null);
        this.f9421a = abstractC0167z0;
        this.f9422b = spliterator;
        this.f9423c = 0L;
    }

    protected AbstractC0062e(AbstractC0062e abstractC0062e, Spliterator spliterator) {
        super(abstractC0062e);
        this.f9422b = spliterator;
        this.f9421a = abstractC0062e.f9421a;
        this.f9423c = abstractC0062e.f9423c;
    }

    public static int b() {
        return f9420g;
    }

    public static long g(long j10) {
        long j11 = j10 / f9420g;
        if (j11 > 0) {
            return j11;
        }
        return 1L;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public Object getRawResult() {
        return this.f9426f;
    }

    @Override // java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    protected final void setRawResult(Object obj) {
        if (obj != null) {
            throw new IllegalStateException();
        }
    }

    protected Object c() {
        return this.f9426f;
    }

    protected void f(Object obj) {
        this.f9426f = obj;
    }

    protected final boolean d() {
        return ((AbstractC0062e) getCompleter()) == null;
    }

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f9422b;
        long jEstimateSize = spliterator.estimateSize();
        long jG = this.f9423c;
        if (jG == 0) {
            jG = g(jEstimateSize);
            this.f9423c = jG;
        }
        boolean z = false;
        AbstractC0062e abstractC0062e = this;
        while (jEstimateSize > jG && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            AbstractC0062e abstractC0062eE = abstractC0062e.e(spliteratorTrySplit);
            abstractC0062e.f9424d = abstractC0062eE;
            AbstractC0062e abstractC0062eE2 = abstractC0062e.e(spliterator);
            abstractC0062e.f9425e = abstractC0062eE2;
            abstractC0062e.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC0062e = abstractC0062eE;
                abstractC0062eE = abstractC0062eE2;
            } else {
                abstractC0062e = abstractC0062eE2;
            }
            z = !z;
            abstractC0062eE.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        abstractC0062e.f(abstractC0062e.a());
        abstractC0062e.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        this.f9422b = null;
        this.f9425e = null;
        this.f9424d = null;
    }
}
