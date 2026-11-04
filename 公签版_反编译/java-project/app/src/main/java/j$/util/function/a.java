package j$.util.function;

import java.util.Comparator;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements BinaryOperator, Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9142a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9143b;

    public /* synthetic */ a(Object obj, int i10) {
        this.f9142a = i10;
        this.f9143b = obj;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f9142a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f9142a) {
            case 0:
                if (((Comparator) this.f9143b).compare(obj, obj2) < 0) {
                    break;
                }
                break;
            default:
                if (((Comparator) this.f9143b).compare(obj, obj2) > 0) {
                    break;
                }
                break;
        }
        return obj2;
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.f9143b).test(obj);
    }
}
