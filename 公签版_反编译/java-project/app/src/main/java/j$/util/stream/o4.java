package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
final class o4 extends p4 implements Consumer {

    /* renamed from: e, reason: collision with root package name */
    final Predicate f9515e;

    /* renamed from: f, reason: collision with root package name */
    Object f9516f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f9517g;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o4(Spliterator spliterator, Predicate predicate, int i10) {
        super(spliterator);
        this.f9517g = i10;
        this.f9515e = predicate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o4(Spliterator spliterator, o4 o4Var, int i10) {
        super(spliterator, o4Var);
        this.f9517g = i10;
        this.f9515e = o4Var.f9515e;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9531d = (this.f9531d + 1) & 63;
        this.f9516f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        boolean zTryAdvance;
        boolean zTest;
        switch (this.f9517g) {
            case 0:
                boolean z = this.f9530c;
                Spliterator spliterator = this.f9528a;
                if (z) {
                    boolean z4 = false;
                    this.f9530c = false;
                    while (true) {
                        zTryAdvance = spliterator.tryAdvance(this);
                        if (zTryAdvance && b() && this.f9515e.test(this.f9516f)) {
                            z4 = true;
                        }
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    if (z4) {
                        this.f9529b.set(true);
                    }
                    consumer.accept(this.f9516f);
                    return zTryAdvance;
                }
                return spliterator.tryAdvance(consumer);
            default:
                if (this.f9530c && b() && this.f9528a.tryAdvance(this)) {
                    zTest = this.f9515e.test(this.f9516f);
                    if (zTest) {
                        consumer.accept(this.f9516f);
                        return true;
                    }
                } else {
                    zTest = true;
                }
                this.f9530c = false;
                if (!zTest) {
                    this.f9529b.set(true);
                }
                return false;
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public Spliterator trySplit() {
        switch (this.f9517g) {
            case 1:
                if (!this.f9529b.get()) {
                    break;
                }
                break;
        }
        return super.trySplit();
    }

    @Override // j$.util.stream.p4
    final Spliterator c(Spliterator spliterator) {
        switch (this.f9517g) {
            case 0:
                return new o4(spliterator, this, 0);
            default:
                return new o4(spliterator, this, 1);
        }
    }
}
