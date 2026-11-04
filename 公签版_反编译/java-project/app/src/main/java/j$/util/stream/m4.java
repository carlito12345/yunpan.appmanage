package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
final class m4 extends p4 implements IntConsumer, j$.util.I {

    /* renamed from: e, reason: collision with root package name */
    int f9503e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f9504f;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.h(this, consumer);
    }

    @Override // j$.util.O
    public final void forEachRemaining(IntConsumer intConsumer) {
        while (tryAdvance(intConsumer)) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m4(j$.util.I i10, int i11) {
        super(i10);
        this.f9504f = i11;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m4(j$.util.I i10, m4 m4Var, int i11) {
        super(i10, m4Var);
        this.f9504f = i11;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        this.f9531d = (this.f9531d + 1) & 63;
        this.f9503e = i10;
    }

    @Override // j$.util.stream.p4
    final Spliterator c(Spliterator spliterator) {
        switch (this.f9504f) {
            case 0:
                return new m4((j$.util.I) spliterator, this, 0);
            default:
                return new m4((j$.util.I) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.O trySplit() {
        switch (this.f9504f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f9504f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.I
    public final boolean tryAdvance(IntConsumer intConsumer) {
        switch (this.f9504f) {
            case 0:
                boolean z = this.f9530c;
                Spliterator spliterator = this.f9528a;
                if (z) {
                    this.f9530c = false;
                    boolean zTryAdvance = ((j$.util.I) spliterator).tryAdvance((IntConsumer) this);
                    if (zTryAdvance && b()) {
                        IntPredicate intPredicate = null;
                        intPredicate.test(this.f9503e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    intConsumer.accept(this.f9503e);
                    return zTryAdvance;
                }
                return ((j$.util.I) spliterator).tryAdvance(intConsumer);
            default:
                if (this.f9530c && b() && ((j$.util.I) this.f9528a).tryAdvance((IntConsumer) this)) {
                    IntPredicate intPredicate2 = null;
                    intPredicate2.test(this.f9503e);
                    throw null;
                }
                this.f9530c = false;
                return false;
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public j$.util.I trySplit() {
        switch (this.f9504f) {
            case 1:
                if (this.f9529b.get()) {
                    return null;
                }
                return (j$.util.I) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.O
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f9504f) {
            case 1:
                tryAdvance((IntConsumer) obj);
                return false;
            default:
                return tryAdvance((IntConsumer) obj);
        }
    }
}
