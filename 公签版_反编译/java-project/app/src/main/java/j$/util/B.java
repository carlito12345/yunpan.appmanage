package j$.util;

import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.SortedSet;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class B {
    public static java.util.Optional n(Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.c()) {
            return java.util.Optional.of(optional.b());
        }
        return java.util.Optional.empty();
    }

    public static Optional j(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        if (optional.isPresent()) {
            return Optional.d(optional.get());
        }
        return Optional.a();
    }

    public static OptionalDouble o(C0035l c0035l) {
        if (c0035l == null) {
            return null;
        }
        if (c0035l.c()) {
            return OptionalDouble.of(c0035l.b());
        }
        return OptionalDouble.empty();
    }

    public static C0035l k(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        if (optionalDouble.isPresent()) {
            return C0035l.d(optionalDouble.getAsDouble());
        }
        return C0035l.a();
    }

    public static OptionalLong q(C0037n c0037n) {
        if (c0037n == null) {
            return null;
        }
        if (c0037n.c()) {
            return OptionalLong.of(c0037n.b());
        }
        return OptionalLong.empty();
    }

    public static C0037n m(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        if (optionalLong.isPresent()) {
            return C0037n.d(optionalLong.getAsLong());
        }
        return C0037n.a();
    }

    public static OptionalInt p(C0036m c0036m) {
        if (c0036m == null) {
            return null;
        }
        if (c0036m.c()) {
            return OptionalInt.of(c0036m.b());
        }
        return OptionalInt.empty();
    }

    public static C0036m l(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        if (optionalInt.isPresent()) {
            return C0036m.d(optionalInt.getAsInt());
        }
        return C0036m.a();
    }

    public static Spliterator f(SortedSet sortedSet) {
        return new C(sortedSet, sortedSet);
    }

    public static long d(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static boolean e(Spliterator spliterator, int i10) {
        return (spliterator.characteristics() & i10) == i10;
    }

    public static boolean h(I i10, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return i10.tryAdvance((IntConsumer) consumer);
        }
        if (f0.f9141a) {
            f0.a(i10.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return i10.tryAdvance((IntConsumer) new C0041s(consumer));
    }

    public static void b(I i10, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            i10.forEachRemaining((IntConsumer) consumer);
        } else {
            if (f0.f9141a) {
                f0.a(i10.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            i10.forEachRemaining((IntConsumer) new C0041s(consumer));
        }
    }

    public static boolean i(L l, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return l.tryAdvance((LongConsumer) consumer);
        }
        if (f0.f9141a) {
            f0.a(l.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return l.tryAdvance((LongConsumer) new C0174w(consumer));
    }

    public static void c(L l, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            l.forEachRemaining((LongConsumer) consumer);
        } else {
            if (f0.f9141a) {
                f0.a(l.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            l.forEachRemaining((LongConsumer) new C0174w(consumer));
        }
    }

    public static boolean g(F f10, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return f10.tryAdvance((DoubleConsumer) consumer);
        }
        if (f0.f9141a) {
            f0.a(f10.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return f10.tryAdvance((DoubleConsumer) new C0038o(consumer));
    }

    public static void a(F f10, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            f10.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (f0.f9141a) {
                f0.a(f10.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            f10.forEachRemaining((DoubleConsumer) new C0038o(consumer));
        }
    }

    B() {
    }

    public Spliterator trySplit() {
        return null;
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public long estimateSize() {
        return 0L;
    }

    public int characteristics() {
        return 16448;
    }
}
