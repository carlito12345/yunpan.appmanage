package ce;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class g0 extends a {
    public static final int O = wd.a.c(1, "jcifs.smb1.smb.client.SessionSetupAndX.TreeConnectAndX");
    public static final boolean P = wd.a.a("jcifs.smb1.smb.client.disablePlainTextPasswords", true);
    public final byte[] F;
    public final byte[] G;
    public final byte[] H;
    public final int I;
    public final String K;
    public final String L;
    public final y0 M;
    public final Object N;

    public g0(y0 y0Var, q qVar, Object obj) throws r0, UnsupportedEncodingException {
        super(qVar);
        this.H = null;
        this.f3114c = (byte) 115;
        this.M = y0Var;
        this.N = obj;
        y0Var.f3233h.getClass();
        b1 b1Var = y0Var.f3233h;
        int i10 = b1Var.B;
        this.I = i10;
        a1 a1Var = b1Var.f3024w;
        int i11 = a1Var.f3001g;
        if (i11 != 1) {
            if (i11 != 0) {
                throw new r0("Unsupported");
            }
            if (!(obj instanceof p)) {
                throw new r0("Unsupported credential type");
            }
            p pVar = (p) obj;
            this.F = new byte[0];
            this.G = new byte[0];
            String str = pVar.f3106b;
            this.K = str;
            if (this.f3126q) {
                this.K = str.toUpperCase();
            }
            this.L = pVar.f3105a.toUpperCase();
            return;
        }
        if (!(obj instanceof p)) {
            if (!(obj instanceof byte[])) {
                throw new r0("Unsupported credential type");
            }
            this.H = (byte[]) obj;
            return;
        }
        p pVar2 = (p) obj;
        if (pVar2 == p.l) {
            this.F = new byte[0];
            this.G = new byte[0];
            this.I = Integer.MAX_VALUE & i10;
        } else if (a1Var.f3002h) {
            byte[] bArrB = pVar2.b(a1Var.f3009p);
            this.F = bArrB;
            byte[] bArrH = pVar2.h(y0Var.f3233h.f3024w.f3009p);
            this.G = bArrH;
            if (bArrB.length == 0 && bArrH.length == 0) {
                throw new RuntimeException("Null setup prohibited.");
            }
        } else {
            if (P) {
                throw new RuntimeException("Plain text passwords are disabled");
            }
            if (this.f3126q) {
                String str2 = pVar2.f3107c;
                this.F = new byte[0];
                byte[] bArr = new byte[(str2.length() + 1) * 2];
                this.G = bArr;
                u(str2, bArr, 0, this.f3126q);
            } else {
                String str3 = pVar2.f3107c;
                byte[] bArr2 = new byte[(str3.length() + 1) * 2];
                this.F = bArr2;
                this.G = new byte[0];
                u(str3, bArr2, 0, this.f3126q);
            }
        }
        String str4 = pVar2.f3106b;
        this.K = str4;
        if (this.f3126q) {
            this.K = str4.toUpperCase();
        }
        this.L = pVar2.f3105a.toUpperCase();
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        int iU;
        byte[] bArr2 = this.H;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
            iU = bArr2.length + i10;
        } else {
            byte[] bArr3 = this.F;
            System.arraycopy(bArr3, 0, bArr, i10, bArr3.length);
            int length = bArr3.length + i10;
            byte[] bArr4 = this.G;
            System.arraycopy(bArr4, 0, bArr, length, bArr4.length);
            int length2 = length + bArr4.length;
            int iU2 = u(this.K, bArr, length2, this.f3126q) + length2;
            iU = iU2 + u(this.L, bArr, iU2, this.f3126q);
        }
        y0 y0Var = this.M;
        b1 b1Var = y0Var.f3233h;
        int iU3 = u(q0.f3152w0, bArr, iU, this.f3126q) + iU;
        b1 b1Var2 = y0Var.f3233h;
        return (u(q0.f3153x0, bArr, iU3, this.f3126q) + iU3) - i10;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        int i11;
        y0 y0Var = this.M;
        q.q(y0Var.f3233h.z, bArr, i10);
        q.q(y0Var.f3233h.f3026y, bArr, i10 + 2);
        b1 b1Var = y0Var.f3233h;
        q.q(1L, bArr, i10 + 4);
        q.r(0, bArr, i10 + 6);
        int i12 = i10 + 10;
        if (this.H != null) {
            q.q(r2.length, bArr, i12);
            i11 = i10 + 12;
        } else {
            q.q(this.F.length, bArr, i12);
            q.q(this.G.length, bArr, i10 + 12);
            i11 = i10 + 14;
        }
        bArr[i11] = 0;
        bArr[i11 + 1] = 0;
        bArr[i11 + 2] = 0;
        bArr[i11 + 3] = 0;
        q.r(this.I, bArr, i11 + 4);
        return (i11 + 8) - i10;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComSessionSetupAndX[");
        sb2.append(super.toString());
        sb2.append(",snd_buf_size=");
        y0 y0Var = this.M;
        sb2.append(y0Var.f3233h.z);
        sb2.append(",maxMpxCount=");
        sb2.append(y0Var.f3233h.f3026y);
        sb2.append(",VC_NUMBER=1,sessionKey=0,lmHash.length=");
        byte[] bArr = this.F;
        sb2.append(bArr == null ? 0 : bArr.length);
        sb2.append(",ntHash.length=");
        byte[] bArr2 = this.G;
        sb2.append(bArr2 != null ? bArr2.length : 0);
        sb2.append(",capabilities=");
        sb2.append(this.I);
        sb2.append(",accountName=");
        sb2.append(this.K);
        sb2.append(",primaryDomain=");
        sb2.append(this.L);
        sb2.append(",NATIVE_OS=");
        sb2.append(q0.f3152w0);
        sb2.append(",NATIVE_LANMAN=");
        return new String(g.b.l(q0.f3153x0, "]", sb2));
    }

    @Override // ce.a
    public final int v(byte b10) {
        if (b10 == 117) {
            return O;
        }
        return 0;
    }
}
