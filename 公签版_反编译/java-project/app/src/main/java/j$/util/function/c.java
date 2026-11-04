package j$.util.function;

import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9146a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function f9147b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function f9148c;

    public /* synthetic */ c(Function function, Function function2, int i10) {
        this.f9146a = i10;
        this.f9147b = function;
        this.f9148c = function2;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public final /* synthetic */ Function mo10andThen(Function function) {
        switch (this.f9146a) {
        }
        return Function$CC.$default$andThen(this, function);
    }

    public final /* synthetic */ Function compose(Function function) {
        switch (this.f9146a) {
        }
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f9146a) {
            case 0:
                return this.f9148c.apply(this.f9147b.apply(obj));
            default:
                return this.f9147b.apply(this.f9148c.apply(obj));
        }
    }
}
