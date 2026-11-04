package j$.lang;

import j$.util.B;
import j$.util.List;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public interface Iterable<T> {
    void forEach(Consumer<? super T> consumer);

    Spliterator<T> spliterator();

    /* renamed from: j$.lang.Iterable$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$forEach(java.lang.Iterable iterable, Consumer consumer) {
            Objects.requireNonNull(consumer);
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }

        public static Spliterator $default$spliterator(java.lang.Iterable iterable) {
            return Spliterators.spliteratorUnknownSize(iterable.iterator(), 0);
        }
    }

    /* renamed from: j$.lang.Iterable$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        public static Spliterator spliterator(java.lang.Iterable iterable) {
            return iterable instanceof Iterable ? ((Iterable) iterable).spliterator() : iterable instanceof LinkedHashSet ? Spliterators.spliterator((LinkedHashSet) iterable, 17) : iterable instanceof SortedSet ? B.f((SortedSet) iterable) : iterable instanceof Set ? Spliterators.spliterator((Set) iterable, 1) : iterable instanceof List ? List.CC.$default$spliterator((java.util.List) iterable) : iterable instanceof Collection ? Spliterators.spliterator((Collection) iterable, 0) : CC.$default$spliterator(iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void forEach(java.lang.Iterable iterable, Consumer consumer) {
            if (iterable instanceof Iterable) {
                ((Iterable) iterable).forEach(consumer);
                return;
            }
            if (!(iterable instanceof Collection)) {
                CC.$default$forEach(iterable, consumer);
                return;
            }
            Objects.requireNonNull(consumer);
            Iterator it = ((Collection) iterable).iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }
    }
}
