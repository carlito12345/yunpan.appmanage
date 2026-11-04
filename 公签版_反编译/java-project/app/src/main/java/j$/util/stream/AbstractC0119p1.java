package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;

/* renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0119p1 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    L0 f9521a;

    /* renamed from: b, reason: collision with root package name */
    int f9522b;

    /* renamed from: c, reason: collision with root package name */
    Spliterator f9523c;

    /* renamed from: d, reason: collision with root package name */
    Spliterator f9524d;

    /* renamed from: e, reason: collision with root package name */
    ArrayDeque f9525e;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    AbstractC0119p1(L0 l02) {
        this.f9521a = l02;
    }

    protected final ArrayDeque b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int iR = this.f9521a.r();
        while (true) {
            iR--;
            if (iR < this.f9522b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f9521a.b(iR));
        }
    }

    protected static L0 a(ArrayDeque arrayDeque) {
        while (true) {
            L0 l02 = (L0) arrayDeque.pollFirst();
            if (l02 == null) {
                return null;
            }
            if (l02.r() != 0) {
                for (int iR = l02.r() - 1; iR >= 0; iR--) {
                    arrayDeque.addFirst(l02.b(iR));
                }
            } else if (l02.count() > 0) {
                return l02;
            }
        }
    }

    protected final boolean c() {
        if (this.f9521a == null) {
            return false;
        }
        if (this.f9524d != null) {
            return true;
        }
        Spliterator spliterator = this.f9523c;
        if (spliterator == null) {
            ArrayDeque arrayDequeB = b();
            this.f9525e = arrayDequeB;
            L0 l0A = a(arrayDequeB);
            if (l0A != null) {
                this.f9524d = l0A.spliterator();
                return true;
            }
            this.f9521a = null;
            return false;
        }
        this.f9524d = spliterator;
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        L0 l02 = this.f9521a;
        if (l02 == null || this.f9524d != null) {
            return null;
        }
        Spliterator spliterator = this.f9523c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f9522b < l02.r() - 1) {
            L0 l03 = this.f9521a;
            int i10 = this.f9522b;
            this.f9522b = i10 + 1;
            return l03.b(i10).spliterator();
        }
        L0 l0B = this.f9521a.b(this.f9522b);
        this.f9521a = l0B;
        if (l0B.r() == 0) {
            Spliterator spliterator2 = this.f9521a.spliterator();
            this.f9523c = spliterator2;
            return spliterator2.trySplit();
        }
        L0 l04 = this.f9521a;
        this.f9522b = 1;
        return l04.b(0).spliterator();
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long jCount = 0;
        if (this.f9521a == null) {
            return 0L;
        }
        Spliterator spliterator = this.f9523c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i10 = this.f9522b; i10 < this.f9521a.r(); i10++) {
            jCount += this.f9521a.b(i10).count();
        }
        return jCount;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.O trySplit() {
        return (j$.util.O) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        return (j$.util.I) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.L trySplit() {
        return (j$.util.L) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) trySplit();
    }
}
