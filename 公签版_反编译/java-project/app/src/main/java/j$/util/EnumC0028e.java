package j$.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class EnumC0028e implements Comparator, InterfaceC0027d {
    public static final EnumC0028e INSTANCE;

    /* renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ EnumC0028e[] f9140a;

    private EnumC0028e() {
    }

    public static EnumC0028e valueOf(String str) {
        return (EnumC0028e) Enum.valueOf(EnumC0028e.class, str);
    }

    public static EnumC0028e[] values() {
        return (EnumC0028e[]) f9140a.clone();
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    static {
        EnumC0028e enumC0028e = new EnumC0028e();
        INSTANCE = enumC0028e;
        f9140a = new EnumC0028e[]{enumC0028e};
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return new C0025c(this, comparator, 0);
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Function function) {
        return Comparator$EL.a(this, Comparator$CC.comparing(function));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingInt(ToIntFunction toIntFunction) {
        return Comparator$EL.a(this, Comparator$CC.comparingInt(toIntFunction));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Comparator$EL.a(this, Comparator$CC.comparingLong(toLongFunction));
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return Collections.reverseOrder();
    }

    @Override // java.util.Comparator
    public final Comparator thenComparing(Function function, Comparator comparator) {
        Objects.requireNonNull(function);
        Objects.requireNonNull(comparator);
        return Comparator$EL.a(this, new C0025c(comparator, function, 1));
    }

    @Override // java.util.Comparator
    public final Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return Comparator$EL.a(this, new C0024b(toDoubleFunction, 1));
    }
}
