package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
final class n4 extends p4 implements LongConsumer, j$.util.L {

    /* renamed from: e, reason: collision with root package name */
    long f9507e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f9508f;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.i(this, consumer);
    }

    @Override // j$.util.O
    public final void forEachRemaining(LongConsumer longConsumer) {
        while (tryAdvance(longConsumer)) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n4(j$.util.L l, int i10) {
        super(l);
        this.f9508f = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n4(j$.util.L l, n4 n4Var, int i10) {
        super(l, n4Var);
        this.f9508f = i10;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9531d = (this.f9531d + 1) & 63;
        this.f9507e = j10;
    }

    @Override // j$.util.stream.p4
    final Spliterator c(Spliterator spliterator) {
        switch (this.f9508f) {
            case 0:
                return new n4((j$.util.L) spliterator, this, 0);
            default:
                return new n4((j$.util.L) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.O trySplit() {
        switch (this.f9508f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f9508f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.L
    public final boolean tryAdvance(LongConsumer longConsumer) {
        switch (this.f9508f) {
            case 0:
                boolean z = this.f9530c;
                Spliterator spliterator = this.f9528a;
                if (z) {
                    this.f9530c = false;
                    boolean zTryAdvance = ((j$.util.L) spliterator).tryAdvance((LongConsumer) this);
                    if (zTryAdvance && b()) {
                        LongPredicate longPredicate = null;
                        longPredicate.test(this.f9507e);
                        throw null;
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    longConsumer.accept(this.f9507e);
                    return zTryAdvance;
                }
                return ((j$.util.L) spliterator).tryAdvance(longConsumer);
            default:
                if (this.f9530c && b() && ((j$.util.L) this.f9528a).tryAdvance((LongConsumer) this)) {
                    LongPredicate longPredicate2 = null;
                    longPredicate2.test(this.f9507e);
                    throw null;
                }
                this.f9530c = false;
                return false;
        }
    }

    @Override // j$.util.stream.p4, j$.util.Spliterator
    public j$.util.L trySplit() {
        switch (this.f9508f) {
            case 1:
                if (this.f9529b.get()) {
                    return null;
                }
                return (j$.util.L) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.O
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f9508f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }
}
