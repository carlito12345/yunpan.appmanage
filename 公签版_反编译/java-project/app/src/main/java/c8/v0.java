package c8;

/* loaded from: classes.dex */
public final class v0 implements z7.b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2958a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f2959b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ z7.a0 f2960c;

    public /* synthetic */ v0(Class cls, z7.a0 a0Var, int i10) {
        this.f2958a = i10;
        this.f2959b = cls;
        this.f2960c = a0Var;
    }

    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        switch (this.f2958a) {
            case 0:
                if (aVar.f6121a == this.f2959b) {
                    return this.f2960c;
                }
                return null;
            default:
                Class cls = this.f2959b;
                Class<?> cls2 = aVar.f6121a;
                if (cls.isAssignableFrom(cls2)) {
                    return new c(this, cls2);
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.f2958a) {
            case 0:
                return "Factory[type=" + this.f2959b.getName() + ",adapter=" + this.f2960c + "]";
            default:
                return "Factory[typeHierarchy=" + this.f2959b.getName() + ",adapter=" + this.f2960c + "]";
        }
    }
}
