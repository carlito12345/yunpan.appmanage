package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
abstract class H3 {

    /* renamed from: a, reason: collision with root package name */
    protected final Spliterator f9239a;

    /* renamed from: b, reason: collision with root package name */
    protected final boolean f9240b;

    /* renamed from: c, reason: collision with root package name */
    protected final int f9241c;

    /* renamed from: d, reason: collision with root package name */
    private final long f9242d;

    /* renamed from: e, reason: collision with root package name */
    private final AtomicLong f9243e;

    protected abstract Spliterator c(Spliterator spliterator);

    H3(Spliterator spliterator, long j10, long j11) {
        this.f9239a = spliterator;
        this.f9240b = j11 < 0;
        this.f9242d = j11 >= 0 ? j11 : 0L;
        this.f9241c = 128;
        this.f9243e = new AtomicLong(j11 >= 0 ? j10 + j11 : j10);
    }

    H3(Spliterator spliterator, H3 h32) {
        this.f9239a = spliterator;
        this.f9240b = h32.f9240b;
        this.f9243e = h32.f9243e;
        this.f9242d = h32.f9242d;
        this.f9241c = h32.f9241c;
    }

    protected final long b(long j10) {
        AtomicLong atomicLong;
        long j11;
        boolean z;
        long jMin;
        do {
            atomicLong = this.f9243e;
            j11 = atomicLong.get();
            z = this.f9240b;
            if (j11 != 0) {
                jMin = Math.min(j11, j10);
                if (jMin <= 0) {
                    break;
                }
            } else {
                if (z) {
                    return j10;
                }
                return 0L;
            }
        } while (!atomicLong.compareAndSet(j11, j11 - jMin));
        if (z) {
            return Math.max(j10 - jMin, 0L);
        }
        long j12 = this.f9242d;
        return j11 > j12 ? Math.max(jMin - (j11 - j12), 0L) : jMin;
    }

    protected final G3 d() {
        if (this.f9243e.get() > 0) {
            return G3.MAYBE_MORE;
        }
        return this.f9240b ? G3.UNLIMITED : G3.NO_MORE;
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public final Spliterator m9trySplit() {
        Spliterator spliteratorTrySplit;
        if (this.f9243e.get() == 0 || (spliteratorTrySplit = this.f9239a.trySplit()) == null) {
            return null;
        }
        return c(spliteratorTrySplit);
    }

    public final long estimateSize() {
        return this.f9239a.estimateSize();
    }

    public final int characteristics() {
        return this.f9239a.characteristics() & (-16465);
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.O m8trySplit() {
        return (j$.util.O) m9trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.I m6trySplit() {
        return (j$.util.I) m9trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.L m7trySplit() {
        return (j$.util.L) m9trySplit();
    }

    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) m9trySplit();
    }
}
