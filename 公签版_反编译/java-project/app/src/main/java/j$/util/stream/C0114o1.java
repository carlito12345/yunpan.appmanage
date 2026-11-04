package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.o1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0114o1 extends AbstractC0119p1 {
    C0114o1(X0 x02) {
        super(x02);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        L0 l0A;
        if (!c()) {
            return false;
        }
        boolean zTryAdvance = this.f9524d.tryAdvance(consumer);
        if (!zTryAdvance) {
            if (this.f9523c == null && (l0A = AbstractC0119p1.a(this.f9525e)) != null) {
                Spliterator spliterator = l0A.spliterator();
                this.f9524d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.f9521a = null;
        }
        return zTryAdvance;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f9521a == null) {
            return;
        }
        if (this.f9524d == null) {
            Spliterator spliterator = this.f9523c;
            if (spliterator == null) {
                ArrayDeque arrayDequeB = b();
                while (true) {
                    L0 l0A = AbstractC0119p1.a(arrayDequeB);
                    if (l0A != null) {
                        l0A.forEach(consumer);
                    } else {
                        this.f9521a = null;
                        return;
                    }
                }
            } else {
                spliterator.forEachRemaining(consumer);
            }
        } else {
            while (tryAdvance(consumer)) {
            }
        }
    }
}
