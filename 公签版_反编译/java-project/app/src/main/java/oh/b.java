package oh;

import java.util.IdentityHashMap;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final /* synthetic */ class b extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11801a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Supplier f11802b;

    public /* synthetic */ b(Supplier supplier, int i10) {
        this.f11801a = i10;
        this.f11802b = supplier;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f11801a) {
            case 0:
                return ((ah.a) this.f11802b).get();
            case 1:
                ((ah.a) this.f11802b).getClass();
                return new char[2];
            case 2:
                ((ah.a) this.f11802b).getClass();
                return new IdentityHashMap();
            case 3:
                ((ah.a) this.f11802b).getClass();
                return new byte[8192];
            default:
                ((ah.a) this.f11802b).getClass();
                return new char[8192];
        }
    }
}
