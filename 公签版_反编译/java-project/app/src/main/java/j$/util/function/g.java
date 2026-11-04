package j$.util.function;

import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9156a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f9157b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Predicate f9158c;

    public /* synthetic */ g(Predicate predicate, Predicate predicate2, int i10) {
        this.f9156a = i10;
        this.f9157b = predicate;
        this.f9158c = predicate2;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f9156a) {
        }
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f9156a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f9156a) {
        }
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f9156a) {
            case 0:
                return this.f9157b.test(obj) && this.f9158c.test(obj);
            default:
                return this.f9157b.test(obj) || this.f9158c.test(obj);
        }
    }
}
