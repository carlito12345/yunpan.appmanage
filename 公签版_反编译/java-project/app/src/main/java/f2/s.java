package f2;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
public final class s implements w1.h {

    /* renamed from: a, reason: collision with root package name */
    public final w1.h f5375a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5376b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f5377c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f5378d;

    /* renamed from: e, reason: collision with root package name */
    public int f5379e;

    public s(w1.h hVar, int i10, r0 r0Var) {
        a9.o.k(i10 > 0);
        this.f5375a = hVar;
        this.f5376b = i10;
        this.f5377c = r0Var;
        this.f5378d = new byte[1];
        this.f5379e = i10;
    }

    @Override // w1.h
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // w1.h
    public final void f(w1.x xVar) {
        xVar.getClass();
        this.f5375a.f(xVar);
    }

    @Override // w1.h
    public final Map g() {
        return this.f5375a.g();
    }

    @Override // w1.h
    public final Uri getUri() {
        return this.f5375a.getUri();
    }

    @Override // w1.h
    public final long j(w1.j jVar) {
        throw new UnsupportedOperationException();
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) {
        int i12 = this.f5379e;
        w1.h hVar = this.f5375a;
        if (i12 == 0) {
            byte[] bArr2 = this.f5378d;
            int i13 = 0;
            if (hVar.read(bArr2, 0, 1) != -1) {
                int i14 = (bArr2[0] & 255) << 4;
                if (i14 != 0) {
                    byte[] bArr3 = new byte[i14];
                    int i15 = i14;
                    while (i15 > 0) {
                        int i16 = hVar.read(bArr3, i13, i15);
                        if (i16 != -1) {
                            i13 += i16;
                            i15 -= i16;
                        }
                    }
                    while (i14 > 0 && bArr3[i14 - 1] == 0) {
                        i14--;
                    }
                    if (i14 > 0) {
                        u1.q qVar = new u1.q(bArr3, i14);
                        r0 r0Var = this.f5377c;
                        long jMax = !r0Var.f5373m ? r0Var.f5371j : Math.max(r0Var.f5374n.v(true), r0Var.f5371j);
                        int iA = qVar.a();
                        l2.j0 j0Var = r0Var.l;
                        j0Var.getClass();
                        j0Var.a(iA, qVar);
                        j0Var.b(jMax, 1, iA, 0, null);
                        r0Var.f5373m = true;
                    }
                }
                this.f5379e = this.f5376b;
            }
            return -1;
        }
        int i17 = hVar.read(bArr, i10, Math.min(this.f5379e, i11));
        if (i17 != -1) {
            this.f5379e -= i17;
        }
        return i17;
    }
}
