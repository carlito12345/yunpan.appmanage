package ce;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class l0 extends a {
    public boolean F;
    public boolean G;
    public String H;

    public l0(q qVar) {
        super(qVar);
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        int i11 = 0;
        while (bArr[i10 + i11] != 0) {
            int i12 = i11 + 1;
            if (i11 > 32) {
                throw new RuntimeException("zero termination not found: " + this);
            }
            i11 = i12;
        }
        try {
            this.H = new String(bArr, i10, i11, HTTP.ASCII);
            return ((i11 + 1) + i10) - i10;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        byte b10 = bArr[i10];
        this.F = (b10 & 1) == 1;
        this.G = (b10 & 2) == 2;
        return 2;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.a, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComTreeConnectAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",supportSearchBits=");
        sb2.append(this.F);
        sb2.append(",shareIsInDfs=");
        sb2.append(this.G);
        sb2.append(",service=");
        return new String(g.b.l(this.H, ",nativeFileSystem=]", sb2));
    }
}
