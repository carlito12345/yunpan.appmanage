package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
abstract class A3 {

    /* renamed from: a, reason: collision with root package name */
    final long f9188a;

    /* renamed from: b, reason: collision with root package name */
    final long f9189b;

    /* renamed from: c, reason: collision with root package name */
    Spliterator f9190c;

    /* renamed from: d, reason: collision with root package name */
    long f9191d;

    /* renamed from: e, reason: collision with root package name */
    long f9192e;

    protected abstract Spliterator a(Spliterator spliterator, long j10, long j11, long j12, long j13);

    A3(Spliterator spliterator, long j10, long j11, long j12, long j13) {
        this.f9190c = spliterator;
        this.f9188a = j10;
        this.f9189b = j11;
        this.f9191d = j12;
        this.f9192e = j13;
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m5trySplit() {
        long j10 = this.f9192e;
        if (this.f9188a >= j10 || this.f9191d >= j10) {
            return null;
        }
        while (true) {
            Spliterator spliteratorTrySplit = this.f9190c.trySplit();
            if (spliteratorTrySplit == null) {
                return null;
            }
            long jEstimateSize = spliteratorTrySplit.estimateSize() + this.f9191d;
            long jMin = Math.min(jEstimateSize, this.f9189b);
            long j11 = this.f9188a;
            if (j11 >= jMin) {
                this.f9191d = jMin;
            } else {
                long j12 = this.f9189b;
                if (jMin >= j12) {
                    this.f9190c = spliteratorTrySplit;
                    this.f9192e = jMin;
                } else {
                    long j13 = this.f9191d;
                    if (j13 >= j11 && jEstimateSize <= j12) {
                        this.f9191d = jMin;
                        return spliteratorTrySplit;
                    }
                    this.f9191d = jMin;
                    return a(spliteratorTrySplit, j11, j12, j13, jMin);
                }
            }
        }
    }

    public final long estimateSize() {
        long j10 = this.f9192e;
        long j11 = this.f9188a;
        if (j11 < j10) {
            return j10 - Math.max(j11, this.f9191d);
        }
        return 0L;
    }

    public final int characteristics() {
        return this.f9190c.characteristics();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.O m4trySplit() {
        return (j$.util.O) m5trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.I m2trySplit() {
        return (j$.util.I) m5trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.L m3trySplit() {
        return (j$.util.L) m5trySplit();
    }

    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) m5trySplit();
    }
}
