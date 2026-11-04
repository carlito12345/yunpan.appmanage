package y1;

import android.util.Pair;
import java.io.IOException;

/* loaded from: classes.dex */
public final class s0 implements f2.i0, b2.e {

    /* renamed from: a, reason: collision with root package name */
    public final u0 f18806a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m7.l f18807b;

    public s0(m7.l lVar, u0 u0Var) {
        this.f18807b = lVar;
        this.f18806a = u0Var;
    }

    @Override // f2.i0
    public final void G(int i10, f2.c0 c0Var, f2.t tVar, f2.y yVar, int i11) {
        Pair pairA = a(i10, c0Var);
        if (pairA != null) {
            ((u1.b0) this.f18807b.f10962j).d(new com.android.apksig.internal.util.a(this, pairA, tVar, yVar, i11));
        }
    }

    public final Pair a(int i10, f2.c0 c0Var) {
        f2.c0 c0VarA;
        u0 u0Var = this.f18806a;
        f2.c0 c0Var2 = null;
        if (c0Var != null) {
            int i11 = 0;
            while (true) {
                if (i11 >= u0Var.f18818c.size()) {
                    c0VarA = null;
                    break;
                }
                if (((f2.c0) u0Var.f18818c.get(i11)).f5239d == c0Var.f5239d) {
                    Object obj = u0Var.f18817b;
                    int i12 = a1.f18571k;
                    c0VarA = c0Var.a(Pair.create(obj, c0Var.f5236a));
                    break;
                }
                i11++;
            }
            if (c0VarA == null) {
                return null;
            }
            c0Var2 = c0VarA;
        }
        return Pair.create(Integer.valueOf(i10 + u0Var.f18819d), c0Var2);
    }

    @Override // f2.i0
    public final void c(int i10, f2.c0 c0Var, final f2.t tVar, final f2.y yVar, final IOException iOException, final boolean z) {
        final Pair pairA = a(i10, c0Var);
        if (pairA != null) {
            ((u1.b0) this.f18807b.f10962j).d(new Runnable() { // from class: y1.r0
                @Override // java.lang.Runnable
                public final void run() {
                    z1.e eVar = (z1.e) this.f18798a.f18807b.f10961i;
                    Pair pair = pairA;
                    eVar.c(((Integer) pair.first).intValue(), (f2.c0) pair.second, tVar, yVar, iOException, z);
                }
            });
        }
    }

    @Override // f2.i0
    public final void l(int i10, f2.c0 c0Var, f2.y yVar) {
        Pair pairA = a(i10, c0Var);
        if (pairA != null) {
            ((u1.b0) this.f18807b.f10962j).d(new a2.e0(this, pairA, yVar, 25));
        }
    }

    @Override // f2.i0
    public final void s(int i10, f2.c0 c0Var, f2.t tVar, f2.y yVar) {
        Pair pairA = a(i10, c0Var);
        if (pairA != null) {
            ((u1.b0) this.f18807b.f10962j).d(new q0(this, pairA, tVar, yVar, 1));
        }
    }

    @Override // f2.i0
    public final void w(int i10, f2.c0 c0Var, f2.t tVar, f2.y yVar) {
        Pair pairA = a(i10, c0Var);
        if (pairA != null) {
            ((u1.b0) this.f18807b.f10962j).d(new q0(this, pairA, tVar, yVar, 0));
        }
    }
}
