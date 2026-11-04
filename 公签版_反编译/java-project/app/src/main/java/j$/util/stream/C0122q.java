package j$.util.stream;

import j$.util.function.BiFunction$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* renamed from: j$.util.stream.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0122q implements BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9532a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BiConsumer f9533b;

    public /* synthetic */ C0122q(BiConsumer biConsumer, int i10) {
        this.f9532a = i10;
        this.f9533b = biConsumer;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f9532a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f9532a) {
            case 0:
                this.f9533b.accept(obj, obj2);
                break;
            case 1:
                this.f9533b.accept(obj, obj2);
                break;
            default:
                this.f9533b.accept(obj, obj2);
                break;
        }
        return obj;
    }
}
