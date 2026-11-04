package j$.util;

import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.Comparator$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Comparator$CC {
    public static Comparator a() {
        return EnumC0028e.INSTANCE;
    }

    public static <T, U extends Comparable<? super U>> Comparator<T> comparing(Function<? super T, ? extends U> function) {
        Objects.requireNonNull(function);
        return new C0024b(function, 2);
    }

    public static <T> Comparator<T> comparingInt(ToIntFunction<? super T> toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C0024b(toIntFunction, 0);
    }

    public static <T> Comparator<T> comparingLong(ToLongFunction<? super T> toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C0024b(toLongFunction, 3);
    }
}
