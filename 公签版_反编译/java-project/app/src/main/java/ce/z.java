package ce;

import java.io.UnsupportedEncodingException;
import java.util.Date;

/* loaded from: classes.dex */
public final class z extends q {
    public int C;
    public final a1 D;

    public z(a1 a1Var) {
        this.D = a1Var;
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        int i11;
        a1 a1Var = this.D;
        int i12 = 0;
        if ((a1Var.f2998d & Integer.MIN_VALUE) == 0) {
            int i13 = a1Var.f3008o;
            byte[] bArr2 = new byte[i13];
            a1Var.f3009p = bArr2;
            System.arraycopy(bArr, i10, bArr2, 0, i13);
            int i14 = a1Var.f3008o;
            i11 = i10 + i14;
            if (this.f3125p > i14) {
                try {
                    if ((this.f3120i & 32768) == 32768) {
                        do {
                            int i15 = i11 + i12;
                            if (bArr[i15] == 0 && bArr[i15 + 1] == 0) {
                                a1Var.f2999e = new String(bArr, i11, i12, "UTF-16LE");
                            }
                            i12 += 2;
                        } while (i12 <= 256);
                        throw new RuntimeException("zero termination not found");
                    }
                    while (bArr[i11 + i12] != 0) {
                        i12++;
                        if (i12 > 256) {
                            throw new RuntimeException("zero termination not found");
                        }
                    }
                    a1Var.f2999e = new String(bArr, i11, i12, q0.f3144m0);
                } catch (UnsupportedEncodingException e7) {
                    if (de.d.f4630b > 1) {
                        e7.printStackTrace(q.A);
                    }
                }
                i11 += i12;
            } else {
                a1Var.f2999e = new String();
            }
        } else {
            System.arraycopy(bArr, i10, new byte[16], 0, 16);
            a1Var.f2999e = new String();
            i11 = i10;
        }
        return i11 - i10;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        int iF = q.f(i10, bArr);
        this.C = iF;
        int i11 = i10 + 2;
        if (iF > 10) {
            return i11 - i10;
        }
        int i12 = i10 + 3;
        byte b10 = bArr[i11];
        a1 a1Var = this.D;
        a1Var.f3000f = b10 & 255;
        a1Var.f3001g = b10 & 1;
        a1Var.f3002h = (b10 & 2) == 2;
        a1Var.f3003i = (b10 & 4) == 4;
        a1Var.f3004j = (b10 & 8) == 8;
        a1Var.f2995a = q.f(i12, bArr);
        a1Var.f3005k = q.f(i10 + 5, bArr);
        a1Var.f2996b = q.g(i10 + 7, bArr);
        a1Var.l = q.g(i10 + 11, bArr);
        a1Var.f2997c = q.g(i10 + 15, bArr);
        a1Var.f2998d = q.g(i10 + 19, bArr);
        a1Var.f3006m = q.l(i10 + 23, bArr);
        a1Var.f3007n = q.f(i10 + 31, bArr);
        a1Var.f3008o = bArr[i10 + 33] & 255;
        return (i10 + 34) - i10;
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
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComNegotiateResponse[");
        sb2.append(super.toString());
        sb2.append(",wordCount=");
        sb2.append(this.f3124n);
        sb2.append(",dialectIndex=");
        sb2.append(this.C);
        sb2.append(",securityMode=0x");
        a1 a1Var = this.D;
        android.support.v4.media.session.a.y(a1Var.f3000f, 1, ",security=", sb2);
        sb2.append(a1Var.f3001g == 0 ? "share" : "user");
        sb2.append(",encryptedPasswords=");
        sb2.append(a1Var.f3002h);
        sb2.append(",maxMpxCount=");
        sb2.append(a1Var.f2995a);
        sb2.append(",maxNumberVcs=");
        sb2.append(a1Var.f3005k);
        sb2.append(",maxBufferSize=");
        sb2.append(a1Var.f2996b);
        sb2.append(",maxRawSize=");
        sb2.append(a1Var.l);
        sb2.append(",sessionKey=0x");
        android.support.v4.media.session.a.y(a1Var.f2997c, 8, ",capabilities=0x", sb2);
        sb2.append(de.c.c(a1Var.f2998d, 8));
        sb2.append(",serverTime=");
        sb2.append(new Date(a1Var.f3006m));
        sb2.append(",serverTimeZone=");
        sb2.append(a1Var.f3007n);
        sb2.append(",encryptionKeyLength=");
        sb2.append(a1Var.f3008o);
        sb2.append(",byteCount=");
        sb2.append(this.f3125p);
        sb2.append(",oemDomainName=");
        return new String(g.b.l(a1Var.f2999e, "]", sb2));
    }
}
