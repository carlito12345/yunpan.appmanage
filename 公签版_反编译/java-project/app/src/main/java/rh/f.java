package rh;

import j$.util.function.Predicate$CC;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public final /* synthetic */ class f implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13785a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f13786b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ph.l f13787c;

    public /* synthetic */ f(p pVar, ph.l lVar, int i10) {
        this.f13785a = i10;
        this.f13786b = pVar;
        this.f13787c = lVar;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i10 = this.f13785a;
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f13785a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i10 = this.f13785a;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f13785a) {
            case 0:
                return this.f13786b.b(this.f13787c, (ph.l) obj);
            default:
                return this.f13786b.d(this.f13787c, (ph.q) obj);
        }
    }
}
