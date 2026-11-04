package c8;

import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class x0 implements z7.b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f2965a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f2966b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ z7.a0 f2967c;

    public x0(Class cls, Class cls2, z7.a0 a0Var) {
        this.f2965a = cls;
        this.f2966b = cls2;
        this.f2967c = a0Var;
    }

    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        Class cls = this.f2965a;
        Class cls2 = aVar.f6121a;
        if (cls2 == cls || cls2 == this.f2966b) {
            return this.f2967c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f2966b.getName() + Marker.ANY_NON_NULL_MARKER + this.f2965a.getName() + ",adapter=" + this.f2967c + "]";
    }
}
