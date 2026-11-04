package ce;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class j extends i0 {
    public static final String[] P0 = {"WrLehDO\u0000B16BBDz\u0000", "WrLehDz\u0000B16BBDz\u0000"};
    public final String M0;
    public String N0 = null;
    public final int O0;

    public j(String str, int i10) {
        this.M0 = str;
        this.O0 = i10;
        this.f3114c = (byte) 37;
        this.X = (byte) 104;
        this.Y = "\\PIPE\\LANMAN";
        this.R = 8;
        this.S = 16384;
        this.V = 0;
        this.T = 5000;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("NetServerEnum2[");
        sb2.append(super.toString());
        sb2.append(",name=");
        sb2.append(this.Y);
        sb2.append(",serverTypes=");
        return new String(g.b.l(this.O0 == -1 ? "SV_TYPE_ALL" : "SV_TYPE_DOMAIN_ENUM", "]", sb2));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) throws UnsupportedEncodingException {
        char c7 = this.X == 104 ? (char) 0 : (char) 1;
        try {
            byte[] bytes = P0[c7].getBytes(HTTP.ASCII);
            q.q(this.X & 255, bArr, 0);
            System.arraycopy(bytes, 0, bArr, 2, bytes.length);
            int length = bytes.length;
            q.q(1L, bArr, 2 + length);
            q.q(this.S, bArr, length + 4);
            q.r(this.O0, bArr, length + 6);
            int i10 = length + 10;
            int iU = u(this.M0.toUpperCase(), bArr, i10, false) + i10;
            return c7 == 1 ? iU + u(this.N0.toUpperCase(), bArr, iU, false) : iU;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        return 0;
    }
}
