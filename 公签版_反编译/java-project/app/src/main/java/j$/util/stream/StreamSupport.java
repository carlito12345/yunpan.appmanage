package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;

/* loaded from: classes2.dex */
public final class StreamSupport {
    public static <T> Stream<T> stream(Spliterator<T> spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C0070f2(spliterator, EnumC0071f3.m(spliterator), z);
    }

    public static IntStream b(j$.util.I i10) {
        return new C0043a0(i10, EnumC0071f3.m(i10));
    }

    public static LongStream c(j$.util.L l) {
        return new C0088j0(l, EnumC0071f3.m(l));
    }

    public static E a(j$.util.F f10) {
        return new C0161y(f10, EnumC0071f3.m(f10));
    }
}
