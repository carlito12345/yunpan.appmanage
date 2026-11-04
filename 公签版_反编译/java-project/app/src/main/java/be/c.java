package be;

import ae.g;
import java.io.IOException;
import java.net.UnknownHostException;

/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f2802d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2803e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f2804f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f2805g;

    static {
        int i10;
        wd.a.a("jcifs.smb1.smb.client.useUnicode", true);
        String property = wd.a.f17870a.getProperty("jcifs.smb1.smb.client.domain", null);
        byte[] bytes = new byte[0];
        if (property != null) {
            try {
                bytes = property.getBytes("UTF-16LE");
            } catch (IOException unused) {
            }
        }
        int length = bytes.length;
        byte[] bytes2 = new byte[0];
        try {
            String strG = g.f633m.g();
            if (strG != null) {
                bytes2 = strG.getBytes("UTF-16LE");
            }
        } catch (UnknownHostException | IOException unused2) {
        }
        int length2 = bytes2.length;
        byte[] bArr = new byte[(length > 0 ? length + 4 : 0) + (length2 > 0 ? length2 + 4 : 0) + 4];
        if (length > 0) {
            a.e(0, 2, bArr);
            a.e(2, length, bArr);
            System.arraycopy(bytes, 0, bArr, 4, length);
            i10 = length + 4;
        } else {
            i10 = 0;
        }
        if (length2 > 0) {
            a.e(i10, 1, bArr);
            a.e(i10 + 2, length2, bArr);
            System.arraycopy(bytes2, 0, bArr, i10 + 4, length2);
        }
    }

    public c(byte[] bArr) throws IOException {
        for (int i10 = 0; i10 < 8; i10++) {
            if (bArr[i10] != a.f2795b[i10]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (a.b(8, bArr) != 2) {
            throw new IOException("Not a Type 2 message.");
        }
        int iB = a.b(20, bArr);
        this.f2797a = iB;
        byte[] bArrA = a.a(12, bArr);
        this.f2803e = bArrA.length != 0 ? new String(bArrA, (iB & 1) != 0 ? "UTF-16LE" : a.f2796c) : null;
        int i11 = 24;
        while (true) {
            if (i11 >= 32) {
                break;
            }
            if (bArr[i11] != 0) {
                byte[] bArr2 = new byte[8];
                System.arraycopy(bArr, 24, bArr2, 0, 8);
                this.f2802d = bArr2;
                break;
            }
            i11++;
        }
        int iB2 = a.b(16, bArr);
        if (iB2 == 32 || bArr.length == 32) {
            return;
        }
        int i12 = 32;
        while (true) {
            if (i12 >= 40) {
                break;
            }
            if (bArr[i12] != 0) {
                byte[] bArr3 = new byte[8];
                System.arraycopy(bArr, 32, bArr3, 0, 8);
                this.f2804f = bArr3;
                break;
            }
            i12++;
        }
        if (iB2 == 40 || bArr.length == 40) {
            return;
        }
        byte[] bArrA2 = a.a(40, bArr);
        if (bArrA2.length != 0) {
            this.f2805g = bArrA2;
        }
    }

    public final String toString() {
        String str = this.f2803e;
        byte[] bArr = this.f2802d;
        byte[] bArr2 = this.f2804f;
        byte[] bArr3 = this.f2805g;
        StringBuilder sbD = da.b.d("Type2Message[target=", str, ",challenge=");
        sbD.append(bArr == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr.length, " bytes>"));
        sbD.append(",context=");
        sbD.append(bArr2 == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr2.length, " bytes>"));
        sbD.append(",targetInformation=");
        sbD.append(bArr3 != null ? android.support.v4.media.session.a.s(new StringBuilder("<"), bArr3.length, " bytes>") : "null");
        sbD.append(",flags=0x");
        sbD.append(de.c.c(this.f2797a, 8));
        sbD.append("]");
        return sbD.toString();
    }
}
