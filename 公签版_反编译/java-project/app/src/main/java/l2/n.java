package l2;

import java.io.EOFException;

/* loaded from: classes.dex */
public final class n implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10513a = new byte[4096];

    @Override // l2.j0
    public final void a(int i10, u1.q qVar) {
        qVar.P(i10);
    }

    @Override // l2.j0
    public final void c(u1.q qVar, int i10, int i11) {
        qVar.P(i10);
    }

    @Override // l2.j0
    public final /* synthetic */ void d(long j10) {
    }

    @Override // l2.j0
    public final int e(r1.h hVar, int i10, boolean z) {
        return f(hVar, i10, z);
    }

    @Override // l2.j0
    public final int f(r1.h hVar, int i10, boolean z) throws EOFException {
        byte[] bArr = this.f10513a;
        int i11 = hVar.read(bArr, 0, Math.min(bArr.length, i10));
        if (i11 != -1) {
            return i11;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // l2.j0
    public final void g(r1.p pVar) {
    }

    @Override // l2.j0
    public final void b(long j10, int i10, int i11, int i12, i0 i0Var) {
    }
}
