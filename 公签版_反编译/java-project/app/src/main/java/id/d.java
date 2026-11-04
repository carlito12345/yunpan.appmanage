package id;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public abstract class d extends b implements ad.d {
    public boolean A;
    public Exception B;
    public boolean C;

    /* renamed from: x, reason: collision with root package name */
    public boolean f8675x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f8676y;
    public Long z;

    public d(vc.f fVar) {
        super(fVar);
    }

    @Override // he.d
    public final void C() {
        if (this.f8667n && this.f8664j == 259) {
            synchronized (this) {
                notifyAll();
            }
        } else {
            this.f8675x = true;
            synchronized (this) {
                notifyAll();
            }
        }
    }

    @Override // he.d
    public final void D() {
        this.f8676y = true;
        synchronized (this) {
            notifyAll();
        }
    }

    @Override // ad.d
    public void E(ad.c cVar) {
        ad.d dVar = (ad.d) this.f8673w;
        if (dVar != null) {
            dVar.E(cVar);
        }
    }

    @Override // he.d
    public final boolean F() {
        return this.A;
    }

    @Override // he.d
    public final void O() {
        this.f8675x = false;
    }

    @Override // he.d
    public final void P(Long l) {
        this.z = l;
    }

    @Override // he.d
    public final Long R() {
        return this.z;
    }

    @Override // he.d
    public final boolean T() {
        return this.f8676y;
    }

    @Override // he.d
    public final boolean c0() {
        return this.f8675x;
    }

    @Override // he.d
    public final int e() {
        return this.f8665k;
    }

    @Override // he.d
    public final Exception getException() {
        return this.B;
    }

    @Override // id.b
    public final void i0(int i10, int i11, byte[] bArr) throws ad.g {
        if (this.f8671t) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            this.f8672v = bArr2;
        }
        if (!q0(i10, i11, bArr)) {
            throw new ad.g("Signature verification failed for ".concat(getClass().getName()));
        }
        this.C = false;
        C();
    }

    @Override // he.d
    public final void l(Exception exc) {
        this.f8676y = true;
        this.B = exc;
        this.f8675x = true;
        synchronized (this) {
            notifyAll();
        }
    }

    public final boolean q0(int i10, int i11, byte[] bArr) {
        boolean z;
        f fVar = this.f8661g;
        if (fVar == null || this.f8667n || !(((wc.a) this.f8662h).s0 || this.f8664j == 0)) {
            return true;
        }
        synchronized (fVar) {
            fVar.f8679a.reset();
            if ((rd.a.b(i10 + 16, bArr) & 8) == 0) {
                f.f8678b.error("The server did not sign a message we expected to be signed");
            } else {
                byte[] bArr2 = new byte[16];
                int i12 = i10 + 48;
                z = false;
                System.arraycopy(bArr, i12, bArr2, 0, 16);
                for (int i13 = 0; i13 < 16; i13++) {
                    bArr[i12 + i13] = 0;
                }
                fVar.f8679a.update(bArr, i10, i11);
                byte[] bArr3 = new byte[16];
                System.arraycopy(fVar.f8679a.doFinal(), 0, bArr3, 0, 16);
                if (!MessageDigest.isEqual(bArr2, bArr3)) {
                }
            }
            z = true;
        }
        this.A = z;
        return !z;
    }

    @Override // he.d
    public final int r() {
        return this.f8664j;
    }

    @Override // id.b, ad.b, he.d
    public final void reset() {
        super.reset();
        this.f8675x = false;
    }

    @Override // ad.d
    public final ad.d t() {
        return (ad.d) this.f8673w;
    }
}
