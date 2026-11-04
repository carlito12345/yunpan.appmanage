package j$.util;

import java.util.Comparator;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
class c0 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    private final java.util.Collection f9057a;

    /* renamed from: b, reason: collision with root package name */
    private Iterator f9058b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9059c;

    /* renamed from: d, reason: collision with root package name */
    private long f9060d;

    /* renamed from: e, reason: collision with root package name */
    private int f9061e;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return B.e(this, i10);
    }

    public c0(java.util.Collection collection, int i10) {
        this.f9057a = collection;
        this.f9058b = null;
        this.f9059c = (i10 & 4096) == 0 ? i10 | 16448 : i10;
    }

    public c0(Iterator it, int i10) {
        this.f9057a = null;
        this.f9058b = it;
        this.f9060d = Long.MAX_VALUE;
        this.f9059c = i10 & (-16449);
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        long size;
        Iterator it = this.f9058b;
        if (it == null) {
            java.util.Collection collection = this.f9057a;
            Iterator it2 = collection.iterator();
            this.f9058b = it2;
            size = collection.size();
            this.f9060d = size;
            it = it2;
        } else {
            size = this.f9060d;
        }
        if (size <= 1 || !it.hasNext()) {
            return null;
        }
        int i10 = this.f9061e + 1024;
        if (i10 > size) {
            i10 = (int) size;
        }
        if (i10 > 33554432) {
            i10 = 33554432;
        }
        Object[] objArr = new Object[i10];
        int i11 = 0;
        do {
            objArr[i11] = it.next();
            i11++;
            if (i11 >= i10) {
                break;
            }
        } while (it.hasNext());
        this.f9061e = i11;
        long j10 = this.f9060d;
        if (j10 != Long.MAX_VALUE) {
            this.f9060d = j10 - i11;
        }
        return new V(objArr, 0, i11, this.f9059c);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        consumer.getClass();
        Iterator it = this.f9058b;
        if (it == null) {
            Iterator it2 = this.f9057a.iterator();
            this.f9058b = it2;
            this.f9060d = r0.size();
            it = it2;
        }
        Iterator$EL.forEachRemaining(it, consumer);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        if (this.f9058b == null) {
            this.f9058b = this.f9057a.iterator();
            this.f9060d = r0.size();
        }
        if (!this.f9058b.hasNext()) {
            return false;
        }
        consumer.accept(this.f9058b.next());
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        if (this.f9058b == null) {
            java.util.Collection collection = this.f9057a;
            this.f9058b = collection.iterator();
            long size = collection.size();
            this.f9060d = size;
            return size;
        }
        return this.f9060d;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f9059c;
    }

    @Override // j$.util.Spliterator
    public Comparator getComparator() {
        if (B.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
