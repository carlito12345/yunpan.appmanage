package g3;

import a2.g1;
import f2.y0;
import java.util.Arrays;
import l2.t;
import r1.e0;
import r1.o;
import r1.p;
import u1.q;

/* loaded from: classes.dex */
public final class c extends i {

    /* renamed from: n, reason: collision with root package name */
    public t f6001n;

    /* renamed from: o, reason: collision with root package name */
    public y0 f6002o;

    @Override // g3.i
    public final long b(q qVar) {
        byte[] bArr = qVar.f15266a;
        if (bArr[0] != -1) {
            return -1L;
        }
        int i10 = (bArr[2] & 255) >> 4;
        if (i10 == 6 || i10 == 7) {
            qVar.P(4);
            qVar.J();
        }
        int iT = l2.b.t(i10, qVar);
        qVar.O(0);
        return iT;
    }

    @Override // g3.i
    public final boolean c(q qVar, long j10, g1 g1Var) {
        byte[] bArr = qVar.f15266a;
        t tVar = this.f6001n;
        if (tVar == null) {
            t tVar2 = new t(bArr, 17);
            this.f6001n = tVar2;
            o oVar = new o(tVar2.c(Arrays.copyOfRange(bArr, 9, qVar.f15268c), null));
            oVar.f13491m = e0.l("audio/ogg");
            g1Var.f175b = new p(oVar);
            return true;
        }
        byte b10 = bArr[0];
        if ((b10 & Byte.MAX_VALUE) == 3) {
            kf.d dVarU = l2.b.u(qVar);
            t tVar3 = new t(tVar.f10517a, tVar.f10518b, tVar.f10519c, tVar.f10520d, tVar.f10521e, tVar.f10523g, tVar.f10524h, tVar.f10526j, dVarU, tVar.l);
            this.f6001n = tVar3;
            this.f6002o = new y0(tVar3, dVarU);
            return true;
        }
        if (b10 != -1) {
            return true;
        }
        y0 y0Var = this.f6002o;
        if (y0Var != null) {
            y0Var.f5443a = j10;
            g1Var.f176c = y0Var;
        }
        ((p) g1Var.f175b).getClass();
        return false;
    }

    @Override // g3.i
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.f6001n = null;
            this.f6002o = null;
        }
    }
}
