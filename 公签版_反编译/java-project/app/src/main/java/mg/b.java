package mg;

import j$.util.function.Function$CC;
import java.util.Map;
import java.util.function.Function;
import ph.q;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11237a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11238b;

    public /* synthetic */ b(int i10, Object obj) {
        this.f11237a = i10;
        this.f11238b = obj;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public final /* synthetic */ Function mo10andThen(Function function) {
        int i10 = this.f11237a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f11237a) {
            case 0:
                return (String) ((Map.Entry) this.f11238b).getKey();
            default:
                return ((Class) this.f11238b).cast((q) obj);
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i10 = this.f11237a;
        return Function$CC.$default$compose(this, function);
    }
}
