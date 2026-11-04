package fd;

import androidx.fragment.app.b0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class v extends ed.a implements ad.l {
    public boolean L;
    public boolean M;
    public String N;
    public final String O;

    public v(vc.f fVar, ed.c cVar) {
        super(fVar, cVar);
        this.O = "";
    }

    @Override // ad.l
    public final boolean A() {
        return this.f4938m != 65535;
    }

    @Override // ad.l
    public final String G() {
        return this.N;
    }

    @Override // ad.l
    public final boolean U() {
        return this.M;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        int i11 = 0;
        while (bArr[i10 + i11] != 0) {
            int i12 = i11 + 1;
            if (i11 > 32) {
                throw new b0("zero termination not found: " + this, 10);
            }
            i11 = i12;
        }
        try {
            this.N = new String(bArr, i10, i11, HTTP.ASCII);
            return ((i11 + 1) + i10) - i10;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        byte b10 = bArr[i10];
        this.L = (b10 & 1) == 1;
        this.M = (b10 & 2) == 2;
        return 2;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComTreeConnectAndXResponse[");
        sb2.append(super.toString());
        sb2.append(",supportSearchBits=");
        sb2.append(this.L);
        sb2.append(",shareIsInDfs=");
        sb2.append(this.M);
        sb2.append(",service=");
        sb2.append(this.N);
        sb2.append(",nativeFileSystem=");
        return new String(g.b.l(this.O, "]", sb2));
    }
}
