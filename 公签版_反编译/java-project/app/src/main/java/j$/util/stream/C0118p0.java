package j$.util.stream;

import java.util.function.Supplier;

/* renamed from: j$.util.stream.p0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0118p0 implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9519a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EnumC0152w0 f9520b;

    public /* synthetic */ C0118p0(EnumC0152w0 enumC0152w0, int i10) {
        this.f9519a = i10;
        this.f9520b = enumC0152w0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f9519a) {
            case 0:
                return new C0137t0(this.f9520b);
            case 1:
                return new C0132s0(this.f9520b);
            default:
                return new C0142u0(this.f9520b);
        }
    }
}
