package j$.util;

import j$.util.function.Consumer$CC;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class Q implements Iterator, Consumer {

    /* renamed from: a, reason: collision with root package name */
    boolean f9020a = false;

    /* renamed from: b, reason: collision with root package name */
    Object f9021b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ Spliterator f9022c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    Q(Spliterator spliterator) {
        this.f9022c = spliterator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9020a = true;
        this.f9021b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f9020a) {
            this.f9022c.tryAdvance(this);
        }
        return this.f9020a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f9020a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f9020a = false;
        return this.f9021b;
    }
}
