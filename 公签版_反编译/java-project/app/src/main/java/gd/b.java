package gd;

import ad.g;
import ed.c;
import java.util.Enumeration;
import vc.f;

/* loaded from: classes.dex */
public abstract class b extends c implements Enumeration {
    public int G;
    public int H;
    public boolean I;
    public boolean K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int R;
    public int S;
    public int T;
    public int V;
    public int X;
    public volatile boolean Y;
    public volatile boolean Z;

    /* renamed from: h0, reason: collision with root package name */
    public byte[] f6132h0;

    public b(f fVar) {
        super(fVar);
        this.Y = true;
        this.Z = true;
    }

    @Override // ed.c, ad.b
    public final int decode(byte[] bArr) throws g {
        int iDecode = super.decode(bArr);
        if (this.l == 0) {
            i0(iDecode + 4, bArr);
        }
        if (this.Z) {
            this.Z = false;
        }
        return iDecode;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.f4932f == 0 && this.Y;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        this.H = 0;
        this.G = 0;
        int i11 = this.N;
        if (i11 > 0) {
            int i12 = this.O - (i10 - this.f4929c);
            this.G = i12;
            int i13 = i10 + i12;
            System.arraycopy(bArr, i13, this.f6132h0, this.P, i11);
            i10 = i13 + this.N;
        }
        int i14 = this.X;
        if (i14 > 0) {
            int i15 = this.R - (i10 - this.f4929c);
            this.H = i15;
            System.arraycopy(bArr, i10 + i15, this.f6132h0, this.V + this.S, i14);
        }
        if (!this.I && this.P + this.N == this.L) {
            this.I = true;
        }
        if (!this.K && this.S + this.X == this.M) {
            this.K = true;
        }
        if (this.I && this.K) {
            t0(this.f6132h0);
            s0(this.V, this.M, this.f6132h0);
            this.Y = false;
        }
        return this.G + this.N + this.H + this.X;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        int iA = rd.a.a(i10, bArr);
        this.L = iA;
        if (this.V == 0) {
            this.V = iA;
        }
        this.M = rd.a.a(i10 + 2, bArr);
        this.N = rd.a.a(i10 + 6, bArr);
        this.O = rd.a.a(i10 + 8, bArr);
        this.P = rd.a.a(i10 + 10, bArr);
        this.X = rd.a.a(i10 + 12, bArr);
        this.R = rd.a.a(i10 + 14, bArr);
        this.S = rd.a.a(i10 + 16, bArr);
        this.T = bArr[i10 + 18] & 255;
        return (i10 + 20) - i10;
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        if (this.Z) {
            this.Z = false;
        }
        return this;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c, ad.b, he.d
    public final void reset() {
        super.reset();
        this.V = 0;
        this.Y = true;
        this.Z = true;
        this.K = false;
        this.I = false;
    }

    public abstract int s0(int i10, int i11, byte[] bArr);

    public abstract int t0(byte[] bArr);

    @Override // ed.c
    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.L + ",totalDataCount=" + this.M + ",parameterCount=" + this.N + ",parameterOffset=" + this.O + ",parameterDisplacement=" + this.P + ",dataCount=" + this.X + ",dataOffset=" + this.R + ",dataDisplacement=" + this.S + ",setupCount=" + this.T + ",pad=" + this.G + ",pad1=" + this.H);
    }
}
