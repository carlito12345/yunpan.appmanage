package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
final class l4 extends p4 implements DoubleConsumer, j$.util.F {

    /* renamed from: e, reason: collision with root package name */
    double f9497e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f9498f;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.a(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.g(this, consumer);
    }

    @Override // j$.util.O
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        while (tryAdvance(doubleConsumer)) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l4(j$.util.F f10, int i10) {
        super(f10);
        this.f9498f = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l4(j$.util.F f10, l4 l4Var, int i10) {
        super(f10, l4Var);
        this.f9498f = i10;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        this.f9531d = (this.f9531d + 1) & 63;
        this.f9497e = d10;
    }

    @Override // j$.util.stream.p4
    final Spliterator c(Spliterator spliterator) {
        switch (this.f9498f) {
            case 0:
                return new l4((j$.util.F) spliterator, this, 0);
            default:
                return new l4((j$.util.F) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.O trySplit() {
        switch (this.f9498f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f9498f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.F
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        switch (this.f9498f) {
            case 0:
                boolean z = this.f9530c;
                Spliterator spliterator = this.f9528a;
                if (z) {
                    this.f9530c = false;
                    boolean zTryAdvance = ((j$.util.F) spliterator).tryAdvance((DoubleConsumer) this);
                    if (zTryAdvance && b()) {
                        DoublePredicate doublePredicate = null;
                        doublePredicate.test(this.f9497e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    doubleConsumer.accept(this.f9497e);
                    return zTryAdvance;
                }
                return ((j$.util.F) spliterator).tryAdvance(doubleConsumer);
            default:
                if (this.f9530c && b() && ((j$.util.F) this.f9528a).tryAdvance((DoubleConsumer) this)) {
                    DoublePredicate doublePredicate2 = null;
                    doublePredicate2.test(this.f9497e);
                    throw null;
                }
                this.f9530c = false;
                return false;
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public j$.util.F trySplit() {
        switch (this.f9498f) {
            case 1:
                if (this.f9529b.get()) {
                    return null;
                }
                return (j$.util.F) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.O
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f9498f) {
            case 1:
                tryAdvance((DoubleConsumer) obj);
                return false;
            default:
                return tryAdvance((DoubleConsumer) obj);
        }
    }
}
