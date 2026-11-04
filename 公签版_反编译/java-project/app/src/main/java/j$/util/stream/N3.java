package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class N3 implements Consumer, Spliterator {

    /* renamed from: a, reason: collision with root package name */
    int f9295a = -2;

    /* renamed from: b, reason: collision with root package name */
    Object f9296b;

    /* renamed from: c, reason: collision with root package name */
    C0046a3 f9297c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    N3(Object obj) {
        this.f9296b = obj;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        return null;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return (-this.f9295a) - 1;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17488;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i10 = this.f9295a;
        if (i10 == 0) {
            this.f9296b = obj;
            this.f9295a = i10 + 1;
        } else {
            if (i10 > 0) {
                if (this.f9297c == null) {
                    C0046a3 c0046a3 = new C0046a3();
                    this.f9297c = c0046a3;
                    c0046a3.accept(this.f9296b);
                    this.f9295a++;
                }
                this.f9297c.accept(obj);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f9295a != -2) {
            return false;
        }
        consumer.accept(this.f9296b);
        this.f9295a = -1;
        return true;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        if (this.f9295a == -2) {
            consumer.accept(this.f9296b);
            this.f9295a = -1;
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }
}
