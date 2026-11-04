package f2;

import j$.util.Objects;
import java.io.IOException;

/* loaded from: classes.dex */
public final class i implements i0, b2.e {

    /* renamed from: a, reason: collision with root package name */
    public final Object f5287a;

    /* renamed from: b, reason: collision with root package name */
    public b2.d f5288b;

    /* renamed from: c, reason: collision with root package name */
    public b2.d f5289c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ k f5290d;

    public i(k kVar, Object obj) {
        this.f5290d = kVar;
        this.f5288b = new b2.d(kVar.f5195c.f2530c, 0, null);
        this.f5289c = new b2.d(kVar.f5196d.f2530c, 0, null);
        this.f5287a = obj;
    }

    @Override // f2.i0
    public final void G(int i10, c0 c0Var, t tVar, y yVar, int i11) {
        if (a(i10, c0Var)) {
            b2.d dVar = this.f5288b;
            y yVarB = b(yVar, c0Var);
            dVar.getClass();
            dVar.a(new e0(dVar, tVar, yVarB, i11, 0));
        }
    }

    public final boolean a(int i10, c0 c0Var) {
        c0 c0VarS;
        Object obj = this.f5287a;
        k kVar = this.f5290d;
        if (c0Var != null) {
            c0VarS = kVar.s(obj, c0Var);
            if (c0VarS == null) {
                return false;
            }
        } else {
            c0VarS = null;
        }
        int iU = kVar.u(i10, obj);
        b2.d dVar = this.f5288b;
        if (dVar.f2528a != iU || !Objects.equals(dVar.f2529b, c0VarS)) {
            this.f5288b = new b2.d(kVar.f5195c.f2530c, iU, c0VarS);
        }
        b2.d dVar2 = this.f5289c;
        if (dVar2.f2528a == iU && Objects.equals(dVar2.f2529b, c0VarS)) {
            return true;
        }
        this.f5289c = new b2.d(kVar.f5196d.f2530c, iU, c0VarS);
        return true;
    }

    public final y b(y yVar, c0 c0Var) {
        k kVar = this.f5290d;
        Object obj = this.f5287a;
        long j10 = yVar.f5441c;
        long jT = kVar.t(obj, j10);
        long j11 = yVar.f5442d;
        long jT2 = kVar.t(obj, j11);
        return (jT == j10 && jT2 == j11) ? yVar : new y(yVar.f5439a, yVar.f5440b, jT, jT2);
    }

    @Override // f2.i0
    public final void c(int i10, c0 c0Var, t tVar, y yVar, IOException iOException, boolean z) {
        if (a(i10, c0Var)) {
            b2.d dVar = this.f5288b;
            y yVarB = b(yVar, c0Var);
            dVar.getClass();
            dVar.a(new g0(dVar, tVar, yVarB, iOException, z));
        }
    }

    @Override // f2.i0
    public final void l(int i10, c0 c0Var, y yVar) {
        if (a(i10, c0Var)) {
            b2.d dVar = this.f5288b;
            y yVarB = b(yVar, c0Var);
            dVar.getClass();
            dVar.a(new d2.w(dVar, 1, yVarB));
        }
    }

    @Override // f2.i0
    public final void s(int i10, c0 c0Var, t tVar, y yVar) {
        if (a(i10, c0Var)) {
            b2.d dVar = this.f5288b;
            y yVarB = b(yVar, c0Var);
            dVar.getClass();
            dVar.a(new f0(dVar, tVar, yVarB, 0));
        }
    }

    @Override // f2.i0
    public final void w(int i10, c0 c0Var, t tVar, y yVar) {
        if (a(i10, c0Var)) {
            b2.d dVar = this.f5288b;
            y yVarB = b(yVar, c0Var);
            dVar.getClass();
            dVar.a(new f0(dVar, tVar, yVarB, 1));
        }
    }
}
