package c8;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class m extends z7.a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final m f2930a = new m();

    private m() {
    }

    public static z7.p d(h8.a aVar, int i10) throws IOException {
        int iC = d0.f.c(i10);
        if (iC == 5) {
            return new z7.t(aVar.c0());
        }
        if (iC == 6) {
            return new z7.t(new b8.j(aVar.c0()));
        }
        if (iC == 7) {
            return new z7.t(Boolean.valueOf(aVar.U()));
        }
        if (iC != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(g.b.B(i10)));
        }
        aVar.a0();
        return z7.r.f19479a;
    }

    public static void e(h8.b bVar, z7.p pVar) throws IOException {
        if (pVar == null || (pVar instanceof z7.r)) {
            bVar.P();
            return;
        }
        boolean z = pVar instanceof z7.t;
        if (z) {
            if (!z) {
                throw new IllegalStateException("Not a JSON Primitive: " + pVar);
            }
            z7.t tVar = (z7.t) pVar;
            Serializable serializable = tVar.f19481a;
            if (serializable instanceof Number) {
                bVar.W(tVar.k());
                return;
            } else if (serializable instanceof Boolean) {
                bVar.Y(tVar.b());
                return;
            } else {
                bVar.X(tVar.i());
                return;
            }
        }
        if (pVar instanceof z7.o) {
            bVar.A();
            Iterator it = pVar.f().f19478a.iterator();
            while (it.hasNext()) {
                e(bVar, (z7.p) it.next());
            }
            bVar.L();
            return;
        }
        if (!(pVar instanceof z7.s)) {
            throw new IllegalArgumentException("Couldn't write " + pVar.getClass());
        }
        bVar.J();
        b8.n nVar = (b8.n) ((b8.l) pVar.g().f19480a.entrySet()).f2638b;
        b8.m mVar = nVar.f2654f.f2642d;
        int i10 = nVar.f2653e;
        while (true) {
            b8.m mVar2 = nVar.f2654f;
            if (mVar == mVar2) {
                bVar.M();
                return;
            }
            if (mVar == mVar2) {
                throw new NoSuchElementException();
            }
            if (nVar.f2653e != i10) {
                throw new ConcurrentModificationException();
            }
            b8.m mVar3 = mVar.f2642d;
            bVar.N((String) mVar.f2644f);
            e(bVar, (z7.p) mVar.f2646h);
            mVar = mVar3;
        }
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        z7.p oVar;
        z7.p oVar2;
        if (aVar instanceof o) {
            o oVar3 = (o) aVar;
            int iE0 = oVar3.e0();
            if (iE0 != 5 && iE0 != 2 && iE0 != 4 && iE0 != 10) {
                z7.p pVar = (z7.p) oVar3.s0();
                oVar3.l0();
                return pVar;
            }
            throw new IllegalStateException("Unexpected " + g.b.B(iE0) + " when reading a JsonElement.");
        }
        int iE02 = aVar.e0();
        int iC = d0.f.c(iE02);
        if (iC == 0) {
            aVar.r();
            oVar = new z7.o();
        } else if (iC != 2) {
            oVar = null;
        } else {
            aVar.A();
            oVar = new z7.s();
        }
        if (oVar == null) {
            return d(aVar, iE02);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.R()) {
                String strY = oVar instanceof z7.s ? aVar.Y() : null;
                int iE03 = aVar.e0();
                int iC2 = d0.f.c(iE03);
                if (iC2 == 0) {
                    aVar.r();
                    oVar2 = new z7.o();
                } else if (iC2 != 2) {
                    oVar2 = null;
                } else {
                    aVar.A();
                    oVar2 = new z7.s();
                }
                boolean z = oVar2 != null;
                if (oVar2 == null) {
                    oVar2 = d(aVar, iE03);
                }
                if (oVar instanceof z7.o) {
                    ((z7.o) oVar).k(oVar2);
                } else {
                    ((z7.s) oVar).j(strY, oVar2);
                }
                if (z) {
                    arrayDeque.addLast(oVar);
                    oVar = oVar2;
                }
            } else {
                if (oVar instanceof z7.o) {
                    aVar.L();
                } else {
                    aVar.M();
                }
                if (arrayDeque.isEmpty()) {
                    return oVar;
                }
                oVar = (z7.p) arrayDeque.removeLast();
            }
        }
    }

    @Override // z7.a0
    public final /* bridge */ /* synthetic */ void c(h8.b bVar, Object obj) throws IOException {
        e(bVar, (z7.p) obj);
    }
}
