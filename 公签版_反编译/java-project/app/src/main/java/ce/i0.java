package ce;

import java.util.Enumeration;

/* loaded from: classes.dex */
public abstract class i0 extends q implements Enumeration {

    /* renamed from: t0, reason: collision with root package name */
    public static final int f3065t0 = wd.a.c(65535, "jcifs.smb1.smb.client.transaction_buf_size") - 512;
    public int G;
    public int H;
    public int I;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public byte X;
    public int Z;

    /* renamed from: h0, reason: collision with root package name */
    public byte[] f3066h0;
    public int C = 0;
    public int D = 0;
    public boolean E = true;
    public boolean F = true;
    public int S = f3065t0;
    public int T = 0;
    public int V = 1;
    public String Y = "";
    public int R = 1024;

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        return this.E;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final void m() {
        super.m();
        this.E = true;
        this.F = true;
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        if (this.F) {
            this.F = false;
            int i10 = this.V * 2;
            int i11 = i10 + 63;
            this.I = i11;
            byte b10 = this.f3114c;
            if (b10 != -96) {
                if (b10 == 37 && (this.f3115d & 128) != 128) {
                    this.I = n(i11, this.Y) + i11;
                }
            } else if (b10 == -96) {
                this.I = i10 + 65;
            }
            int i12 = this.I;
            int i13 = i12 % 2;
            this.C = i13;
            int i14 = i13 == 0 ? 0 : 2 - i13;
            this.C = i14;
            this.I = i12 + i14;
            int iW = w(this.f3066h0);
            this.O = iW;
            this.G = iW;
            int i15 = this.Z - this.I;
            int iMin = Math.min(iW, i15);
            this.H = iMin;
            int i16 = i15 - iMin;
            int i17 = this.I + iMin;
            this.M = i17;
            int i18 = i17 % 2;
            this.D = i18;
            int i19 = i18 == 0 ? 0 : 2 - i18;
            this.D = i19;
            this.M = i17 + i19;
            int iV = v(this.G, this.f3066h0);
            this.P = iV;
            this.L = Math.min(iV, i16);
        } else {
            if (this.f3114c != -96) {
                this.f3114c = (byte) 38;
            } else {
                this.f3114c = (byte) -95;
            }
            this.I = 51;
            int i20 = this.O;
            int i21 = this.K;
            if (i20 - i21 > 0) {
                this.C = 1;
                this.I = 52;
            }
            int i22 = i21 + this.H;
            this.K = i22;
            int i23 = (this.Z - this.I) - this.C;
            int iMin2 = Math.min(i20 - i22, i23);
            this.H = iMin2;
            int i24 = i23 - iMin2;
            int i25 = this.I + iMin2;
            this.M = i25;
            int i26 = i25 % 2;
            this.D = i26;
            int i27 = i26 == 0 ? 0 : 2 - i26;
            this.D = i27;
            this.M = i25 + i27;
            int i28 = this.N + this.L;
            this.N = i28;
            this.L = Math.min(this.P - i28, i24 - i27);
        }
        if (this.K + this.H >= this.O && this.N + this.L >= this.P) {
            this.E = false;
        }
        return this;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        int i11 = this.C;
        int iU = (this.f3114c != 37 || (this.f3115d & 128) == 128) ? i10 : u(this.Y, bArr, i10, this.f3126q) + i10;
        if (this.H > 0) {
            while (true) {
                int i12 = i11 - 1;
                if (i11 <= 0) {
                    break;
                }
                bArr[iU] = 0;
                iU++;
                i11 = i12;
            }
            System.arraycopy(this.f3066h0, 0, bArr, iU, this.H);
            iU += this.H;
        }
        if (this.L > 0) {
            int i13 = this.D;
            while (true) {
                int i14 = i13 - 1;
                if (i13 <= 0) {
                    break;
                }
                bArr[iU] = 0;
                iU++;
                i13 = i14;
            }
            System.arraycopy(this.f3066h0, this.G, bArr, iU, this.L);
            int i15 = this.G;
            int i16 = this.L;
            this.G = i15 + i16;
            iU += i16;
        }
        return iU - i10;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        int iX;
        q.q(this.O, bArr, i10);
        q.q(this.P, bArr, i10 + 2);
        int i11 = i10 + 4;
        if (this.f3114c != 38) {
            q.q(this.R, bArr, i11);
            q.q(this.S, bArr, i10 + 6);
            bArr[i10 + 8] = 0;
            bArr[i10 + 9] = 0;
            q.q(0, bArr, i10 + 10);
            q.r(this.T, bArr, i10 + 12);
            bArr[i10 + 16] = 0;
            i11 = i10 + 18;
            bArr[i10 + 17] = 0;
        }
        q.q(this.H, bArr, i11);
        q.q(this.I, bArr, i11 + 2);
        int i12 = i11 + 4;
        if (this.f3114c == 38) {
            q.q(this.K, bArr, i12);
            i12 = i11 + 6;
        }
        q.q(this.L, bArr, i12);
        q.q(this.L == 0 ? 0 : this.M, bArr, i12 + 2);
        int i13 = i12 + 4;
        if (this.f3114c == 38) {
            q.q(this.N, bArr, i13);
            iX = i12 + 6;
        } else {
            int i14 = i12 + 5;
            bArr[i13] = (byte) this.V;
            int i15 = i12 + 6;
            bArr[i14] = 0;
            iX = i15 + x(i15, bArr);
        }
        return iX - i10;
    }

    @Override // ce.q
    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.O + ",totalDataCount=" + this.P + ",maxParameterCount=" + this.R + ",maxDataCount=" + this.S + ",maxSetupCount=0,flags=0x" + de.c.c(0, 2) + ",timeout=" + this.T + ",parameterCount=" + this.H + ",parameterOffset=" + this.I + ",parameterDisplacement=" + this.K + ",dataCount=" + this.L + ",dataOffset=" + this.M + ",dataDisplacement=" + this.N + ",setupCount=" + this.V + ",pad=" + this.C + ",pad1=" + this.D);
    }

    public abstract int v(int i10, byte[] bArr);

    public abstract int w(byte[] bArr);

    public abstract int x(int i10, byte[] bArr);
}
