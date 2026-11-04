package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.x1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0158x1 extends CountedCompleter implements InterfaceC0125q2 {

    /* renamed from: a, reason: collision with root package name */
    protected final Spliterator f9585a;

    /* renamed from: b, reason: collision with root package name */
    protected final AbstractC0167z0 f9586b;

    /* renamed from: c, reason: collision with root package name */
    protected final long f9587c;

    /* renamed from: d, reason: collision with root package name */
    protected long f9588d;

    /* renamed from: e, reason: collision with root package name */
    protected long f9589e;

    /* renamed from: f, reason: collision with root package name */
    protected int f9590f;

    /* renamed from: g, reason: collision with root package name */
    protected int f9591g;

    public /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
    }

    public /* synthetic */ void accept(int i10) {
        AbstractC0167z0.I();
        throw null;
    }

    public /* synthetic */ void accept(long j10) {
        AbstractC0167z0.J();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    abstract AbstractC0158x1 b(Spliterator spliterator, long j10, long j11);

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    AbstractC0158x1(int i10, Spliterator spliterator, AbstractC0167z0 abstractC0167z0) {
        this.f9585a = spliterator;
        this.f9586b = abstractC0167z0;
        this.f9587c = AbstractC0062e.g(spliterator.estimateSize());
        this.f9588d = 0L;
        this.f9589e = i10;
    }

    AbstractC0158x1(AbstractC0158x1 abstractC0158x1, Spliterator spliterator, long j10, long j11, int i10) {
        super(abstractC0158x1);
        this.f9585a = spliterator;
        this.f9586b = abstractC0158x1.f9586b;
        this.f9587c = abstractC0158x1.f9587c;
        this.f9588d = j10;
        this.f9589e = j11;
        if (j10 < 0 || j11 < 0 || (j10 + j11) - 1 >= i10) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j10), Long.valueOf(j10), Long.valueOf(j11), Integer.valueOf(i10)));
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f9585a;
        AbstractC0158x1 abstractC0158x1B = this;
        while (spliterator.estimateSize() > abstractC0158x1B.f9587c && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            abstractC0158x1B.setPendingCount(1);
            long jEstimateSize = spliteratorTrySplit.estimateSize();
            abstractC0158x1B.b(spliteratorTrySplit, abstractC0158x1B.f9588d, jEstimateSize).fork();
            abstractC0158x1B = abstractC0158x1B.b(spliterator, abstractC0158x1B.f9588d + jEstimateSize, abstractC0158x1B.f9589e - jEstimateSize);
        }
        abstractC0158x1B.f9586b.H0(spliterator, abstractC0158x1B);
        abstractC0158x1B.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        long j11 = this.f9589e;
        if (j10 > j11) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i10 = (int) this.f9588d;
        this.f9590f = i10;
        this.f9591g = i10 + ((int) j11);
    }
}
