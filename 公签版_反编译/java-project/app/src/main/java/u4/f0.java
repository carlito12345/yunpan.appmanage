package u4;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class f0 extends a0 {
    public f0(String str, f fVar, int i10) {
        super(str, fVar, i10);
    }

    @Override // u4.a0
    public final int a(p pVar) {
        o oVar = (o) pVar;
        int iC = oVar.c() * oVar.e();
        if (iC < 0) {
            throw new IllegalArgumentException("relative < 0");
        }
        int i10 = this.f15326d;
        if (i10 >= 0) {
            return i10 + iC;
        }
        throw new RuntimeException("fileOffset not yet set");
    }

    @Override // u4.a0
    public final void e() {
        k();
        Iterator it = c().iterator();
        while (it.hasNext()) {
            ((p) it.next()).a(this.f15324b);
        }
    }

    @Override // u4.a0
    public final int h() {
        Collection collectionC = c();
        int size = collectionC.size();
        if (size == 0) {
            return 0;
        }
        return ((p) collectionC.iterator().next()).c() * size;
    }

    @Override // u4.a0
    public final void j(b5.b bVar) {
        Iterator it = c().iterator();
        while (it.hasNext()) {
            ((p) it.next()).d(this.f15324b, bVar);
            bVar.a(this.f15325c);
        }
    }

    public abstract void k();
}
