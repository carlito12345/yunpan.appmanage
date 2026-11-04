package ce;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class m extends i0 {
    public m() {
        this.f3114c = (byte) 37;
        this.X = (byte) 0;
        this.Y = new String("\\PIPE\\LANMAN");
        this.R = 8;
        this.V = 0;
        this.T = 5000;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        return new String(g.b.l(super.toString(), "]", new StringBuilder("NetShareEnum[")));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) throws UnsupportedEncodingException {
        try {
            byte[] bytes = "WrLeh\u0000B13BWz\u0000".getBytes(HTTP.ASCII);
            q.q(0L, bArr, 0);
            System.arraycopy(bytes, 0, bArr, 2, bytes.length);
            int length = bytes.length;
            q.q(1L, bArr, 2 + length);
            q.q(this.S, bArr, length + 4);
            return length + 6;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        return 0;
    }
}
