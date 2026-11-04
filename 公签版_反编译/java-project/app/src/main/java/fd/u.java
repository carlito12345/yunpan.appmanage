package fd;

import androidx.fragment.app.b0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class u extends ed.a {
    public final String L;
    public byte[] M;
    public int N;
    public final vc.b O;
    public final b P;

    public u(vc.b bVar, b bVar2, String str, String str2, ed.c cVar) {
        super(bVar.e(), (byte) 117, cVar);
        this.O = bVar;
        this.P = bVar2;
        this.f4943t = str;
        this.L = str2;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    @Override // ed.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int o0(int i10, byte[] bArr) {
        int i11;
        String str = this.L;
        if (this.P.f5782g == 0) {
            vc.b bVar = this.O;
            if (bVar.g() instanceof vd.j) {
                System.arraycopy(this.M, 0, bArr, i10, this.N);
                i11 = this.N + i10;
            } else {
                i11 = i10 + 1;
                bArr[i10] = 0;
            }
        }
        int iR0 = r0(this.f4943t, i11, bArr) + i11;
        try {
            System.arraycopy(str.getBytes(HTTP.ASCII), 0, bArr, iR0, str.length());
            int length = str.length() + iR0;
            bArr[length] = 0;
            return (length + 1) - i10;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    @Override // ed.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int q0(int i10, byte[] bArr) {
        b bVar = this.P;
        if (bVar.f5782g == 0) {
            vc.b bVar2 = this.O;
            if (bVar2.g() instanceof vd.j) {
                vd.j jVar = (vd.j) bVar2.g();
                if (bVar.f5783h) {
                    try {
                        byte[] bArrB = jVar.b(bVar2, bVar.f5790p);
                        this.M = bArrB;
                        this.N = bArrB.length;
                    } catch (GeneralSecurityException e7) {
                        throw new b0(10, "Failed to encrypt password", e7);
                    }
                } else {
                    if (((wc.a) bVar2.e()).f17863v) {
                        throw new b0("Plain text passwords are disabled", 10);
                    }
                    byte[] bArr2 = new byte[(jVar.f16877d.length() + 1) * 2];
                    this.M = bArr2;
                    this.N = r0(jVar.f16877d, 0, bArr2);
                }
            } else {
                this.N = 1;
            }
        }
        bArr[i10] = 0;
        bArr[i10 + 1] = 0;
        rd.a.e(this.N, bArr, i10 + 2);
        return 4;
    }

    @Override // ed.a
    public final int s0(vc.f fVar, byte b10) {
        int i10 = b10 & 255;
        if (i10 == 0) {
            return ((wc.a) fVar).a("TreeConnectAndX.CreateDirectory");
        }
        if (i10 == 1) {
            return ((wc.a) fVar).a("TreeConnectAndX.DeleteDirectory");
        }
        if (i10 == 6) {
            return ((wc.a) fVar).a("TreeConnectAndX.Delete");
        }
        if (i10 == 7) {
            return ((wc.a) fVar).a("TreeConnectAndX.Rename");
        }
        if (i10 == 8) {
            return ((wc.a) fVar).a("TreeConnectAndX.QueryInformation");
        }
        if (i10 == 16) {
            return ((wc.a) fVar).a("TreeConnectAndX.CheckDirectory");
        }
        if (i10 == 37) {
            return ((wc.a) fVar).a("TreeConnectAndX.Transaction");
        }
        if (i10 != 45) {
            return 0;
        }
        return ((wc.a) fVar).a("TreeConnectAndX.OpenAndX");
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComTreeConnectAndX[");
        sb2.append(super.toString());
        sb2.append(",disconnectTid=false,passwordLength=");
        sb2.append(this.N);
        sb2.append(",password=");
        sb2.append(ge.a.m(this.M, this.N, 0));
        sb2.append(",path=");
        sb2.append(this.f4943t);
        sb2.append(",service=");
        return new String(g.b.l(this.L, "]", sb2));
    }
}
