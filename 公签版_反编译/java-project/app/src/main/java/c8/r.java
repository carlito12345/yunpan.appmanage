package c8;

import java.io.IOException;

/* loaded from: classes.dex */
public final class r extends z7.a0 {

    /* renamed from: b, reason: collision with root package name */
    public static final q f2942b = new q(0, new r(z7.y.f19483b));

    /* renamed from: a, reason: collision with root package name */
    public final z7.y f2943a;

    public r(z7.y yVar) {
        this.f2943a = yVar;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        int iE0 = aVar.e0();
        int iC = d0.f.c(iE0);
        if (iC == 5 || iC == 6) {
            return this.f2943a.a(aVar);
        }
        if (iC == 8) {
            aVar.a0();
            return null;
        }
        throw new z7.q("Expecting number, got: " + g.b.B(iE0) + "; at path " + aVar.O());
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        bVar.W((Number) obj);
    }
}
