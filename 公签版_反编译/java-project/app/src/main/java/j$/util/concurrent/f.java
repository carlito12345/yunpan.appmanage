package j$.util.concurrent;

import j$.util.B;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class f extends p implements Spliterator {

    /* renamed from: i, reason: collision with root package name */
    final ConcurrentHashMap f9090i;

    /* renamed from: j, reason: collision with root package name */
    long f9091j;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 4353;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    f(l[] lVarArr, int i10, int i11, int i12, long j10, ConcurrentHashMap concurrentHashMap) {
        super(lVarArr, i10, i11, i12);
        this.f9090i = concurrentHashMap;
        this.f9091j = j10;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i10 = this.f9112f;
        int i11 = this.f9113g;
        int i12 = (i10 + i11) >>> 1;
        if (i12 <= i10) {
            return null;
        }
        l[] lVarArr = this.f9107a;
        this.f9113g = i12;
        long j10 = this.f9091j >>> 1;
        this.f9091j = j10;
        return new f(lVarArr, this.f9114h, i12, i11, j10, this.f9090i);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        while (true) {
            l lVarA = a();
            if (lVarA == null) {
                return;
            } else {
                consumer.accept(new k(lVarA.f9100b, lVarA.f9101c, this.f9090i));
            }
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        l lVarA = a();
        if (lVarA == null) {
            return false;
        }
        consumer.accept(new k(lVarA.f9100b, lVarA.f9101c, this.f9090i));
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9091j;
    }
}
