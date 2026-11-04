package g2;

import a9.o;
import i3.g;
import java.nio.ByteBuffer;
import x1.h;
import x1.j;

/* loaded from: classes.dex */
public final class b extends j implements i3.e {

    /* renamed from: n, reason: collision with root package name */
    public final i3.j f5980n;

    public b(i3.j jVar) {
        super(new g[2], new i3.c[2]);
        int i10 = this.f18101g;
        x1.g[] gVarArr = this.f18099e;
        o.t(i10 == gVarArr.length);
        for (x1.g gVar : gVarArr) {
            gVar.k(1024);
        }
        this.f5980n = jVar;
    }

    @Override // x1.j
    public final x1.g g() {
        return new g();
    }

    @Override // x1.j
    public final h h() {
        return new i3.c(this);
    }

    @Override // x1.j
    public final x1.e i(Throwable th2) {
        return new i3.f(th2);
    }

    @Override // x1.j
    public final x1.e j(x1.g gVar, h hVar, boolean z) {
        g gVar2 = (g) gVar;
        i3.c cVar = (i3.c) hVar;
        try {
            ByteBuffer byteBuffer = gVar2.f18087e;
            byteBuffer.getClass();
            byte[] bArrArray = byteBuffer.array();
            int iLimit = byteBuffer.limit();
            i3.j jVar = this.f5980n;
            if (z) {
                jVar.reset();
            }
            i3.d dVarE = jVar.e(0, iLimit, bArrArray);
            long j10 = gVar2.f18089g;
            long j11 = gVar2.f8495j;
            cVar.f18092c = j10;
            cVar.f8491e = dVarE;
            if (j11 != Long.MAX_VALUE) {
                j10 = j11;
            }
            cVar.f8492f = j10;
            cVar.f18093d = false;
            return null;
        } catch (i3.f e7) {
            return e7;
        }
    }

    @Override // i3.e
    public final void d(long j10) {
    }
}
