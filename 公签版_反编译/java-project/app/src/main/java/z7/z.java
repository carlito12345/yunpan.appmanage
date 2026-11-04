package z7;

import java.io.IOException;

/* loaded from: classes.dex */
public final class z extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f19485a;

    public z(a0 a0Var) {
        this.f19485a = a0Var;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() != 9) {
            return this.f19485a.b(aVar);
        }
        aVar.a0();
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.P();
        } else {
            this.f19485a.c(bVar, obj);
        }
    }

    public final String toString() {
        return "NullSafeTypeAdapter[" + this.f19485a + "]";
    }
}
