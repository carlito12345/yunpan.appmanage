package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.o3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0116o3 implements Spliterator, Consumer {

    /* renamed from: d, reason: collision with root package name */
    private static final Object f9511d = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final Spliterator f9512a;

    /* renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f9513b;

    /* renamed from: c, reason: collision with root package name */
    private Object f9514c;

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

    C0116o3(Spliterator spliterator) {
        this(spliterator, new ConcurrentHashMap());
    }

    private C0116o3(Spliterator spliterator, ConcurrentHashMap concurrentHashMap) {
        this.f9512a = spliterator;
        this.f9513b = concurrentHashMap;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9514c = obj;
    }

    final void b(Consumer consumer, Object obj) {
        if (this.f9513b.putIfAbsent(obj != null ? obj : f9511d, Boolean.TRUE) == null) {
            consumer.accept(obj);
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        while (this.f9512a.tryAdvance(this)) {
            Object obj = this.f9514c;
            if (obj == null) {
                obj = f9511d;
            }
            if (this.f9513b.putIfAbsent(obj, Boolean.TRUE) == null) {
                consumer.accept(this.f9514c);
                this.f9514c = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        this.f9512a.forEachRemaining(new C0123q0(1, this, consumer));
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f9512a.trySplit();
        if (spliteratorTrySplit != null) {
            return new C0116o3(spliteratorTrySplit, this.f9513b);
        }
        return null;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9512a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return (this.f9512a.characteristics() & (-16469)) | 1;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f9512a.getComparator();
    }
}
