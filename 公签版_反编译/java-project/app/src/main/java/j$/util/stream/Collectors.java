package j$.util.stream;

import j$.util.stream.Collector;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class Collectors {

    /* renamed from: a, reason: collision with root package name */
    static final Set f9204a;

    /* renamed from: b, reason: collision with root package name */
    static final Set f9205b;

    static {
        Collector.Characteristics characteristics = Collector.Characteristics.CONCURRENT;
        Collector.Characteristics characteristics2 = Collector.Characteristics.UNORDERED;
        Collector.Characteristics characteristics3 = Collector.Characteristics.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2, characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2));
        f9204a = Collections.unmodifiableSet(EnumSet.of(characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics2, characteristics3));
        f9205b = Collections.emptySet();
        Collections.unmodifiableSet(EnumSet.of(characteristics2));
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new C0092k(supplier, new C0087j(20), new C0087j(0));
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new C0092k(new C0087j(21), new C0087j(22), new C0087j(1));
    }

    public static <T, A, R, RR> Collector<T, A, RR> collectingAndThen(Collector<T, A, R> collector, Function<R, RR> function) {
        Set setCharacteristics = collector.characteristics();
        Collector.Characteristics characteristics = Collector.Characteristics.IDENTITY_FINISH;
        if (setCharacteristics.contains(characteristics)) {
            if (setCharacteristics.size() == 1) {
                setCharacteristics = f9205b;
            } else {
                EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) setCharacteristics);
                enumSetCopyOf.remove(characteristics);
                setCharacteristics = Collections.unmodifiableSet(enumSetCopyOf);
            }
        }
        return new C0092k(collector.supplier(), collector.accumulator(), collector.combiner(), collector.finisher().mo10andThen(function), setCharacteristics);
    }

    static void a(double[] dArr, double d10) {
        double d11 = d10 - dArr[1];
        double d12 = dArr[0];
        double d13 = d12 + d11;
        dArr[1] = (d13 - d12) - d11;
        dArr[0] = d13;
    }
}
