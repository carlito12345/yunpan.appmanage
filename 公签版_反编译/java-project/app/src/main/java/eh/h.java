package eh;

import j$.util.Objects;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import jg.n;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4993a;

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i10 = this.f4993a;
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f4993a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i10 = this.f4993a;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4993a) {
            case 0:
                return i.f4994f.matcher((String) obj).matches();
            case 1:
                return Objects.nonNull((n) obj);
            case 2:
                return !((n) obj).f9926b;
            default:
                kg.f fVar = (kg.f) obj;
                return fVar.f10317a > 0 || fVar.f10318b > 0;
        }
    }
}
