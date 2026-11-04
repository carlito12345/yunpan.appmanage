package j$.util.function;

import java.util.function.IntUnaryOperator;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements IntUnaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9151a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntUnaryOperator f9152b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ IntUnaryOperator f9153c;

    public /* synthetic */ e(IntUnaryOperator intUnaryOperator, IntUnaryOperator intUnaryOperator2, int i10) {
        this.f9151a = i10;
        this.f9152b = intUnaryOperator;
        this.f9153c = intUnaryOperator2;
    }

    public final /* synthetic */ IntUnaryOperator andThen(IntUnaryOperator intUnaryOperator) {
        switch (this.f9151a) {
        }
        return IntUnaryOperator$CC.$default$andThen(this, intUnaryOperator);
    }

    public final /* synthetic */ IntUnaryOperator compose(IntUnaryOperator intUnaryOperator) {
        switch (this.f9151a) {
        }
        return IntUnaryOperator$CC.$default$compose(this, intUnaryOperator);
    }

    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i10) {
        switch (this.f9151a) {
            case 0:
                return this.f9153c.applyAsInt(this.f9152b.applyAsInt(i10));
            default:
                return this.f9152b.applyAsInt(this.f9153c.applyAsInt(i10));
        }
    }
}
