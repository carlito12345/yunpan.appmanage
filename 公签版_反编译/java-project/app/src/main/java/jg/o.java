package jg;

import java.util.function.Supplier;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9941a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9942b;

    public /* synthetic */ o(int i10, Object obj) {
        this.f9941a = i10;
        this.f9942b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f9941a) {
            case 0:
                return "isEmptyStream for " + ((e) this.f9942b);
            case 1:
                return "isEmptyStream for " + ((e) this.f9942b);
            default:
                return new oh.e((String) this.f9942b);
        }
    }
}
