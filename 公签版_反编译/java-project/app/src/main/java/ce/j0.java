package ce;

import java.util.Enumeration;

/* loaded from: classes.dex */
public abstract class j0 extends q implements Enumeration {
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public int I;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int R;
    public byte S;
    public boolean T = true;
    public boolean V = true;
    public byte[] X = null;
    public int Y;
    public int Z;

    /* renamed from: h0, reason: collision with root package name */
    public g[] f3078h0;

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        this.D = 0;
        this.C = 0;
        int i11 = this.I;
        if (i11 > 0) {
            int i12 = this.K - (i10 - this.f3116e);
            this.C = i12;
            int i13 = i10 + i12;
            System.arraycopy(bArr, i13, this.X, this.L, i11);
            i10 = i13 + this.I;
        }
        int i14 = this.R;
        if (i14 > 0) {
            int i15 = this.M - (i10 - this.f3116e);
            this.D = i15;
            System.arraycopy(bArr, i10 + i15, this.X, this.P + this.N, i14);
        }
        if (!this.E && this.L + this.I == this.G) {
            this.E = true;
        }
        if (!this.F && this.N + this.R == this.H) {
            this.F = true;
        }
        if (this.E && this.F) {
            this.T = false;
            w(this.X);
            v(this.P, this.H, this.X);
        }
        return this.C + this.I + this.D + this.R;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.f3119h == 0 && this.T;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        int iF = q.f(i10, bArr);
        this.G = iF;
        if (this.P == 0) {
            this.P = iF;
        }
        this.H = q.f(i10 + 2, bArr);
        this.I = q.f(i10 + 6, bArr);
        this.K = q.f(i10 + 8, bArr);
        this.L = q.f(i10 + 10, bArr);
        this.R = q.f(i10 + 12, bArr);
        this.M = q.f(i10 + 14, bArr);
        this.N = q.f(i10 + 16, bArr);
        int i11 = bArr[i10 + 18] & 255;
        this.O = i11;
        int i12 = i10 + 20;
        if (i11 != 0 && de.d.f4630b > 2) {
            q.A.getClass();
        }
        return i12 - i10;
    }

    @Override // ce.q
    public final void m() {
        super.m();
        this.P = 0;
        this.T = true;
        this.V = true;
        this.F = false;
        this.E = false;
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        if (this.V) {
            this.V = false;
        }
        return this;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.G + ",totalDataCount=" + this.H + ",parameterCount=" + this.I + ",parameterOffset=" + this.K + ",parameterDisplacement=" + this.L + ",dataCount=" + this.R + ",dataOffset=" + this.M + ",dataDisplacement=" + this.N + ",setupCount=" + this.O + ",pad=" + this.C + ",pad1=" + this.D);
    }

    public abstract int v(int i10, int i11, byte[] bArr);

    public abstract int w(byte[] bArr);
}
