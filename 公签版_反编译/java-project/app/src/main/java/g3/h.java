package g3;

import a2.g1;
import java.util.ArrayList;
import java.util.Arrays;
import r1.d0;
import r1.e0;
import r1.p;
import u1.q;
import u7.g0;
import v1.o;

/* loaded from: classes.dex */
public final class h extends i {

    /* renamed from: o, reason: collision with root package name */
    public static final byte[] f6019o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f6020p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: n, reason: collision with root package name */
    public boolean f6021n;

    public static boolean e(q qVar, byte[] bArr) {
        if (qVar.a() < bArr.length) {
            return false;
        }
        int i10 = qVar.f15267b;
        byte[] bArr2 = new byte[bArr.length];
        qVar.l(0, bArr.length, bArr2);
        qVar.O(i10);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // g3.i
    public final long b(q qVar) {
        byte[] bArr = qVar.f15266a;
        return (this.f6030i * o.e(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0)) / 1000000;
    }

    @Override // g3.i
    public final boolean c(q qVar, long j10, g1 g1Var) {
        if (e(qVar, f6019o)) {
            byte[] bArrCopyOf = Arrays.copyOf(qVar.f15266a, qVar.f15268c);
            int i10 = bArrCopyOf[9] & 255;
            ArrayList arrayListA = o.a(bArrCopyOf);
            if (((p) g1Var.f175b) != null) {
                return true;
            }
            r1.o oVar = new r1.o();
            oVar.f13491m = e0.l("audio/ogg");
            oVar.f13492n = e0.l("audio/opus");
            oVar.F = i10;
            oVar.G = 48000;
            oVar.f13495q = arrayListA;
            g1Var.f175b = new p(oVar);
            return true;
        }
        if (!e(qVar, f6020p)) {
            ((p) g1Var.f175b).getClass();
            return false;
        }
        ((p) g1Var.f175b).getClass();
        if (this.f6021n) {
            return true;
        }
        this.f6021n = true;
        qVar.P(8);
        d0 d0VarS = l2.b.s(g0.n(l2.b.v(qVar, false, false).f10503a));
        if (d0VarS == null) {
            return true;
        }
        p pVar = (p) g1Var.f175b;
        pVar.getClass();
        r1.o oVar2 = new r1.o(pVar);
        oVar2.f13490k = d0VarS.b(((p) g1Var.f175b).l);
        g1Var.f175b = new p(oVar2);
        return true;
    }

    @Override // g3.i
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.f6021n = false;
        }
    }
}
