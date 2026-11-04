package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class F3 extends H3 implements Spliterator, Consumer {

    /* renamed from: f, reason: collision with root package name */
    Object f9226f;

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

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    F3(Spliterator spliterator, long j10, long j11) {
        super(spliterator, j10, j11);
    }

    F3(Spliterator spliterator, F3 f32) {
        super(spliterator, f32);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9226f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (d() != G3.NO_MORE && this.f9239a.tryAdvance(this)) {
            if (b(1L) == 1) {
                consumer.accept(this.f9226f);
                this.f9226f = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C0106m3 c0106m3 = null;
        while (true) {
            G3 g3D = d();
            if (g3D == G3.NO_MORE) {
                return;
            }
            G3 g32 = G3.MAYBE_MORE;
            Spliterator spliterator = this.f9239a;
            if (g3D == g32) {
                int i10 = this.f9241c;
                if (c0106m3 == null) {
                    c0106m3 = new C0106m3(i10);
                } else {
                    c0106m3.f9506a = 0;
                }
                long j10 = 0;
                while (spliterator.tryAdvance(c0106m3)) {
                    j10++;
                    if (j10 >= i10) {
                        break;
                    }
                }
                if (j10 == 0) {
                    return;
                }
                long jB = b(j10);
                for (int i11 = 0; i11 < jB; i11++) {
                    consumer.accept(c0106m3.f9502b[i11]);
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // j$.util.stream.H3
    protected final Spliterator c(Spliterator spliterator) {
        return new F3(spliterator, this);
    }
}
