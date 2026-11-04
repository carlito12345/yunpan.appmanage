package td;

import java.io.IOException;
import java.util.HashMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: h, reason: collision with root package name */
    public static final Logger f15068h = LoggerFactory.getLogger((Class<?>) b.class);

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f15069d;

    /* renamed from: e, reason: collision with root package name */
    public final String f15070e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f15071f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f15072g;

    static {
        new HashMap();
    }

    public b(byte[] bArr) throws IOException {
        for (int i10 = 0; i10 < 8; i10++) {
            if (bArr[i10] != a.f15065b[i10]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (a.c(8, bArr) != 2) {
            throw new IOException("Not a Type 2 message.");
        }
        int iC = a.c(20, bArr);
        this.f15067a = iC;
        byte[] bArrB = a.b(12, bArr);
        int iC2 = a.c(16, bArr);
        if (bArrB.length != 0) {
            this.f15070e = new String(bArrB, (iC & 1) != 0 ? "UTF-16LE" : "Cp850");
        }
        int i11 = 24;
        while (true) {
            if (i11 >= 32) {
                break;
            }
            if (bArr[i11] != 0) {
                byte[] bArr2 = new byte[8];
                System.arraycopy(bArr, 24, bArr2, 0, 8);
                this.f15069d = bArr2;
                break;
            }
            i11++;
        }
        if (iC2 < 40 || bArr.length < 40) {
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
                this.f15071f = bArr3;
                break;
            }
            i12++;
        }
        if (iC2 < 48 || bArr.length < 48) {
            return;
        }
        byte[] bArrB2 = a.b(40, bArr);
        if (bArrB2.length != 0) {
            this.f15072g = bArrB2;
        }
    }

    public final String toString() {
        String str = this.f15070e;
        byte[] bArr = this.f15069d;
        byte[] bArr2 = this.f15071f;
        byte[] bArr3 = this.f15072g;
        StringBuilder sbD = da.b.d("Type2Message[target=", str, ",challenge=");
        sbD.append(bArr == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr.length, " bytes>"));
        sbD.append(",context=");
        sbD.append(bArr2 == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr2.length, " bytes>"));
        sbD.append(",targetInformation=");
        sbD.append(bArr3 != null ? android.support.v4.media.session.a.s(new StringBuilder("<"), bArr3.length, " bytes>") : "null");
        sbD.append(",flags=0x");
        sbD.append(ge.a.l(this.f15067a, 8));
        sbD.append("]");
        return sbD.toString();
    }
}
