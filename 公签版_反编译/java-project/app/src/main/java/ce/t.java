package ce;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class t extends q {
    public final /* synthetic */ int C;

    public t(int i10) {
        this.C = i10;
        switch (i10) {
            case 4:
                this.f3114c = (byte) 114;
                this.f3120i = q0.f3145n0;
                break;
            case 6:
                this.f3114c = (byte) 113;
                break;
        }
    }

    @Override // ce.q
    public final int d(int i10, byte[] bArr) {
        switch (this.C) {
        }
        return 0;
    }

    @Override // ce.q
    public final int i(int i10, byte[] bArr) {
        switch (this.C) {
        }
        return 0;
    }

    @Override // ce.q
    public final int o(int i10, byte[] bArr) throws UnsupportedEncodingException {
        switch (this.C) {
            case 0:
                return 0;
            case 1:
                int i11 = i10 + 1;
                bArr[i10] = 4;
                return (u(this.f3131x, bArr, i11, this.f3126q) + i11) - i10;
            case 2:
                int i12 = i10 + 1;
                bArr[i10] = 4;
                return (u(this.f3131x, bArr, i12, this.f3126q) + i12) - i10;
            case 3:
                int i13 = i10 + 1;
                bArr[i10] = 4;
                return (u(this.f3131x, bArr, i13, this.f3126q) + i13) - i10;
            case 4:
                try {
                    byte[] bytes = "\u0002NT LM 0.12\u0000".getBytes(HTTP.ASCII);
                    System.arraycopy(bytes, 0, bArr, i10, bytes.length);
                    return bytes.length;
                } catch (UnsupportedEncodingException unused) {
                    return 0;
                }
            case 5:
                int i14 = i10 + 1;
                bArr[i10] = 4;
                return (u(this.f3131x, bArr, i14, this.f3126q) + i14) - i10;
            default:
                return 0;
        }
    }

    @Override // ce.q
    public final int t(int i10, byte[] bArr) {
        switch (this.C) {
            case 0:
                return 0;
            case 1:
                return 0;
            case 2:
                q.q(6, bArr, i10);
                return 2;
            case 3:
                return 0;
            case 4:
                return 0;
            case 5:
                return 0;
            default:
                return 0;
        }
    }

    @Override // ce.q
    public final String toString() {
        switch (this.C) {
            case 0:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("SmbComBlankResponse[")));
            case 1:
                StringBuilder sb2 = new StringBuilder("SmbComCreateDirectory[");
                sb2.append(super.toString());
                sb2.append(",directoryName=");
                return new String(g.b.l(this.f3131x, "]", sb2));
            case 2:
                StringBuilder sb3 = new StringBuilder("SmbComDelete[");
                sb3.append(super.toString());
                sb3.append(",searchAttributes=0x");
                sb3.append(de.c.c(6, 4));
                sb3.append(",fileName=");
                return new String(g.b.l(this.f3131x, "]", sb3));
            case 3:
                StringBuilder sb4 = new StringBuilder("SmbComDeleteDirectory[");
                sb4.append(super.toString());
                sb4.append(",directoryName=");
                return new String(g.b.l(this.f3131x, "]", sb4));
            case 4:
                StringBuilder sb5 = new StringBuilder("SmbComNegotiate[");
                sb5.append(super.toString());
                sb5.append(",wordCount=");
                return new String(android.support.v4.media.session.a.s(sb5, this.f3124n, ",dialects=NT LM 0.12]"));
            case 5:
                StringBuilder sb6 = new StringBuilder("SmbComQueryInformation[");
                sb6.append(super.toString());
                sb6.append(",filename=");
                return new String(g.b.l(this.f3131x, "]", sb6));
            default:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("SmbComTreeDisconnect[")));
        }
    }

    public t(String str, int i10) {
        this.C = i10;
        switch (i10) {
            case 2:
                this.f3131x = str;
                this.f3114c = (byte) 6;
                break;
            case 3:
                this.f3131x = str;
                this.f3114c = (byte) 1;
                break;
            case 4:
            default:
                this.f3131x = str;
                this.f3114c = (byte) 0;
                break;
            case 5:
                this.f3131x = str;
                this.f3114c = (byte) 8;
                break;
        }
    }
}
