package j$.util.concurrent;

import j$.util.B;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class j extends p implements Spliterator {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f9094i;

    /* renamed from: j, reason: collision with root package name */
    long f9095j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(l[] lVarArr, int i10, int i11, int i12, long j10, int i13) {
        super(lVarArr, i10, i11, i12);
        this.f9094i = i13;
        this.f9095j = j10;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        switch (this.f9094i) {
            case 0:
                return 4353;
            default:
                return 4352;
        }
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        switch (this.f9094i) {
        }
        return B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        switch (this.f9094i) {
        }
        return B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        switch (this.f9094i) {
            case 0:
                throw new IllegalStateException();
            default:
                throw new IllegalStateException();
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        switch (this.f9094i) {
            case 0:
                int i10 = this.f9112f;
                int i11 = this.f9113g;
                int i12 = (i10 + i11) >>> 1;
                if (i12 <= i10) {
                    return null;
                }
                l[] lVarArr = this.f9107a;
                this.f9113g = i12;
                long j10 = this.f9095j >>> 1;
                this.f9095j = j10;
                return new j(lVarArr, this.f9114h, i12, i11, j10, 0);
            default:
                int i13 = this.f9112f;
                int i14 = this.f9113g;
                int i15 = (i13 + i14) >>> 1;
                if (i15 <= i13) {
                    return null;
                }
                l[] lVarArr2 = this.f9107a;
                this.f9113g = i15;
                long j11 = this.f9095j >>> 1;
                this.f9095j = j11;
                return new j(lVarArr2, this.f9114h, i15, i14, j11, 1);
        }
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        switch (this.f9094i) {
            case 0:
                consumer.getClass();
                while (true) {
                    l lVarA = a();
                    if (lVarA == null) {
                        break;
                    } else {
                        consumer.accept(lVarA.f9100b);
                    }
                }
            default:
                consumer.getClass();
                while (true) {
                    l lVarA2 = a();
                    if (lVarA2 == null) {
                        break;
                    } else {
                        consumer.accept(lVarA2.f9101c);
                    }
                }
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        switch (this.f9094i) {
            case 0:
                consumer.getClass();
                l lVarA = a();
                if (lVarA != null) {
                    consumer.accept(lVarA.f9100b);
                    break;
                }
                break;
            default:
                consumer.getClass();
                l lVarA2 = a();
                if (lVarA2 != null) {
                    consumer.accept(lVarA2.f9101c);
                    break;
                }
                break;
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        switch (this.f9094i) {
        }
        return this.f9095j;
    }
}
