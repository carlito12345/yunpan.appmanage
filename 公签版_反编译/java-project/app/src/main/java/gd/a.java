package gd;

import ed.c;
import java.util.Enumeration;
import vc.f;

/* loaded from: classes.dex */
public abstract class a extends c implements Enumeration {
    public int G;
    public int H;
    public boolean I;
    public boolean K;
    public int L;
    public int M;
    public final String M0;
    public int N;
    public int N0;
    public int O;
    public byte[] O0;
    public int P;
    public int R;
    public int S;
    public int T;
    public int V;
    public int X;
    public int Y;
    public final int Z;

    /* renamed from: h0, reason: collision with root package name */
    public final int f6130h0;

    /* renamed from: t0, reason: collision with root package name */
    public final byte f6131t0;

    public a(f fVar, byte b10, byte b11) {
        super(fVar, b10, null);
        this.G = 0;
        this.H = 0;
        this.I = true;
        this.K = true;
        this.Z = 0;
        this.f6130h0 = 1;
        this.M0 = "";
        this.f6131t0 = b11;
        this.Y = ((wc.a) fVar).f17841i0 - 512;
        this.X = 1024;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.I;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // java.util.Enumeration
    public final /* bridge */ /* synthetic */ Object nextElement() {
        s0();
        return this;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        int iR0 = ((this.f4927a != 37 || (this.f4928b & 128) == 128) ? i10 : r0(this.M0, i10, bArr) + i10) + this.G;
        int i11 = this.M;
        if (i11 > 0) {
            System.arraycopy(this.O0, 0, bArr, this.f4929c + this.N, i11);
            iR0 = Math.max(iR0, this.f4929c + this.N + this.M + this.H);
        }
        int i12 = this.P;
        if (i12 > 0) {
            System.arraycopy(this.O0, this.L, bArr, this.f4929c + this.R, i12);
            int i13 = this.L;
            int i14 = this.P;
            this.L = i13 + i14;
            iR0 = Math.max(iR0, this.f4929c + this.R + i14);
        }
        return iR0 - i10;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        int iV0;
        rd.a.e(this.T, bArr, i10);
        rd.a.e(this.V, bArr, i10 + 2);
        int i11 = i10 + 4;
        if (this.f4927a != 38) {
            rd.a.e(this.X, bArr, i11);
            rd.a.e(this.Y, bArr, i10 + 6);
            bArr[i10 + 8] = 0;
            bArr[i10 + 9] = 0;
            rd.a.e(0, bArr, i10 + 10);
            rd.a.f(this.Z, bArr, i10 + 12);
            bArr[i10 + 16] = 0;
            i11 = i10 + 18;
            bArr[i10 + 17] = 0;
        }
        rd.a.e(this.M, bArr, i11);
        rd.a.e(this.N, bArr, i11 + 2);
        int i12 = i11 + 4;
        if (this.f4927a == 38) {
            rd.a.e(this.O, bArr, i12);
            i12 = i11 + 6;
        }
        rd.a.e(this.P, bArr, i12);
        rd.a.e(this.P == 0 ? 0 : this.R, bArr, i12 + 2);
        int i13 = i12 + 4;
        if (this.f4927a == 38) {
            rd.a.e(this.S, bArr, i13);
            iV0 = i12 + 6;
        } else {
            int i14 = i12 + 5;
            bArr[i13] = (byte) this.f6130h0;
            int i15 = i12 + 6;
            bArr[i14] = 0;
            iV0 = i15 + v0(i15, bArr);
        }
        return iV0 - i10;
    }

    @Override // ed.c, ad.b, he.d
    public final void reset() {
        super.reset();
        this.I = true;
        this.K = true;
    }

    public final void s0() {
        if (this.K) {
            this.K = false;
            int i10 = (this.f6130h0 * 2) + 63;
            this.N = i10;
            if (this.f4927a == 37 && (this.f4928b & 128) != 128) {
                this.N = m0(i10, this.M0) + i10;
            }
            int i11 = this.N;
            int i12 = i11 % 4;
            int i13 = i12 == 0 ? 0 : 4 - i12;
            this.G = i13;
            this.N = i11 + i13;
            int iU0 = u0(this.O0);
            this.T = iU0;
            this.L = iU0;
            int i14 = this.N0 - this.N;
            int iMin = Math.min(iU0, i14);
            this.M = iMin;
            int i15 = i14 - iMin;
            int i16 = this.N + iMin;
            this.R = i16;
            int i17 = i16 % 4;
            int i18 = i17 == 0 ? 0 : 4 - i17;
            this.H = i18;
            this.R = i16 + i18;
            int iT0 = t0(this.L, this.O0);
            this.V = iT0;
            this.P = Math.min(iT0, i15);
        } else {
            if (this.f4927a != -96) {
                this.f4927a = (byte) 38;
            } else {
                this.f4927a = (byte) (-95);
            }
            this.N = 51;
            int i19 = this.T;
            int i20 = this.O;
            if (i19 - i20 > 0) {
                this.G = 1;
                this.N = 51 + 1;
            }
            int i21 = i20 + this.M;
            this.O = i21;
            int i22 = (this.N0 - this.N) - this.G;
            int iMin2 = Math.min(i19 - i21, i22);
            this.M = iMin2;
            int i23 = i22 - iMin2;
            int i24 = this.N + iMin2;
            this.R = i24;
            int i25 = i24 % 4;
            int i26 = i25 == 0 ? 0 : 4 - i25;
            this.H = i26;
            this.R = i24 + i26;
            int i27 = this.S + this.P;
            this.S = i27;
            this.P = Math.min(this.V - i27, i23 - i26);
        }
        if (this.O + this.M < this.T || this.S + this.P < this.V) {
            return;
        }
        this.I = false;
    }

    public abstract int t0(int i10, byte[] bArr);

    @Override // ed.c
    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.T + ",totalDataCount=" + this.V + ",maxParameterCount=" + this.X + ",maxDataCount=" + this.Y + ",maxSetupCount=0,flags=0x" + ge.a.l(0, 2) + ",timeout=" + this.Z + ",parameterCount=" + this.M + ",parameterOffset=" + this.N + ",parameterDisplacement=" + this.O + ",dataCount=" + this.P + ",dataOffset=" + this.R + ",dataDisplacement=" + this.S + ",setupCount=" + this.f6130h0 + ",pad=" + this.G + ",pad1=" + this.H);
    }

    public abstract int u0(byte[] bArr);

    public abstract int v0(int i10, byte[] bArr);
}
