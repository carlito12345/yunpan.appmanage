package ce;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

/* loaded from: classes.dex */
public final class k0 extends a {
    public static final boolean L = wd.a.a("jcifs.smb1.smb.client.disablePlainTextPasswords", true);
    public static final byte[] M;
    public final y0 F;
    public final String G;
    public byte[] H;
    public int I;
    public final String K;

    static {
        byte[] bArr = {1, 1, 1, 1, 1, 1, 1, 1, 0};
        M = bArr;
        Properties properties = wd.a.f17870a;
        String property = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.CheckDirectory");
        if (property != null) {
            bArr[0] = Byte.parseByte(property);
        }
        String property2 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.CreateDirectory");
        if (property2 != null) {
            bArr[2] = Byte.parseByte(property2);
        }
        String property3 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.Delete");
        if (property3 != null) {
            bArr[3] = Byte.parseByte(property3);
        }
        String property4 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.DeleteDirectory");
        if (property4 != null) {
            bArr[4] = Byte.parseByte(property4);
        }
        String property5 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.OpenAndX");
        if (property5 != null) {
            bArr[5] = Byte.parseByte(property5);
        }
        String property6 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.Rename");
        if (property6 != null) {
            bArr[6] = Byte.parseByte(property6);
        }
        String property7 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.Transaction");
        if (property7 != null) {
            bArr[7] = Byte.parseByte(property7);
        }
        String property8 = properties.getProperty("jcifs.smb1.smb.client.TreeConnectAndX.QueryInformation");
        if (property8 != null) {
            bArr[8] = Byte.parseByte(property8);
        }
    }

    public k0(y0 y0Var, String str, String str2, q qVar) {
        super(qVar);
        this.F = y0Var;
        this.K = str;
        this.G = str2;
        this.f3114c = (byte) 117;
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    @Override // ce.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int o(int i10, byte[] bArr) {
        int i11;
        String str = this.G;
        y0 y0Var = this.F;
        if (y0Var.f3233h.f3024w.f3001g == 0) {
            y0Var.f3234i.getClass();
            if (y0Var.f3234i.f3107c.length() > 0) {
                System.arraycopy(this.H, 0, bArr, i10, this.I);
                i11 = this.I + i10;
            } else {
                i11 = i10 + 1;
                bArr[i10] = 0;
            }
        }
        int iU = u(this.K, bArr, i11, this.f3126q) + i11;
        try {
            System.arraycopy(str.getBytes(HTTP.ASCII), 0, bArr, iU, str.length());
            int length = str.length() + iU;
            bArr[length] = 0;
            return (length + 1) - i10;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    @Override // ce.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int t(int i10, byte[] bArr) {
        y0 y0Var = this.F;
        if (y0Var.f3233h.f3024w.f3001g == 0) {
            y0Var.f3234i.getClass();
            if (y0Var.f3234i.f3107c.length() > 0) {
                a1 a1Var = y0Var.f3233h.f3024w;
                if (a1Var.f3002h) {
                    byte[] bArrB = y0Var.f3234i.b(a1Var.f3009p);
                    this.H = bArrB;
                    this.I = bArrB.length;
                } else {
                    if (L) {
                        throw new RuntimeException("Plain text passwords are disabled");
                    }
                    byte[] bArr2 = new byte[(y0Var.f3234i.f3107c.length() + 1) * 2];
                    this.H = bArr2;
                    this.I = u(y0Var.f3234i.f3107c, bArr2, 0, this.f3126q);
                }
            } else {
                this.I = 1;
            }
        }
        bArr[i10] = 0;
        bArr[i10 + 1] = 0;
        q.q(this.I, bArr, i10 + 2);
        return 4;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComTreeConnectAndX[");
        sb2.append(super.toString());
        sb2.append(",disconnectTid=false,passwordLength=");
        sb2.append(this.I);
        sb2.append(",password=");
        sb2.append(de.c.d(0, this.H));
        sb2.append(",path=");
        sb2.append(this.K);
        sb2.append(",service=");
        return new String(g.b.l(this.G, "]", sb2));
    }

    @Override // ce.a
    public final int v(byte b10) {
        int i10 = b10 & 255;
        byte[] bArr = M;
        if (i10 == 0) {
            return bArr[2];
        }
        if (i10 == 1) {
            return bArr[4];
        }
        if (i10 == 6) {
            return bArr[3];
        }
        if (i10 == 7) {
            return bArr[6];
        }
        if (i10 == 8) {
            return bArr[8];
        }
        if (i10 == 16) {
            return bArr[0];
        }
        if (i10 == 37) {
            return bArr[7];
        }
        if (i10 != 45) {
            return 0;
        }
        return bArr[5];
    }
}
