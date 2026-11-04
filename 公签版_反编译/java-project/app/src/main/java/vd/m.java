package vd;

import java.util.StringTokenizer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class m extends yc.a {

    /* renamed from: g, reason: collision with root package name */
    public static final Logger f16892g = LoggerFactory.getLogger((Class<?>) m.class);

    /* renamed from: e, reason: collision with root package name */
    public final String f16893e = null;

    /* renamed from: f, reason: collision with root package name */
    public final String f16894f = null;

    static {
        try {
            new m("S-1-1-0");
            new m("S-1-3-0");
            new m("S-1-5-18");
        } catch (r e7) {
            f16892g.error("Failed to create builtin SIDs", (Throwable) e7);
        }
    }

    public m(byte[] bArr, int i10) {
        this.f19117a = bArr[i10];
        this.f19118b = bArr[i10 + 1];
        byte[] bArr2 = new byte[6];
        this.f19119c = bArr2;
        System.arraycopy(bArr, i10 + 2, bArr2, 0, 6);
        int i11 = i10 + 8;
        int i12 = this.f19118b;
        if (i12 > 100) {
            throw new androidx.fragment.app.b0("Invalid SID sub_authority_count", 10);
        }
        this.f19120d = new int[i12];
        for (int i13 = 0; i13 < this.f19118b; i13++) {
            this.f19120d[i13] = rd.a.b(i11, bArr);
            i11 += 4;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (mVar == this) {
            return true;
        }
        int i10 = mVar.f19118b;
        int i11 = this.f19118b;
        if (i10 != i11) {
            return false;
        }
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                for (int i13 = 0; i13 < 6; i13++) {
                    if (mVar.f19119c[i13] != this.f19119c[i13]) {
                        return false;
                    }
                }
                return mVar.f19117a == this.f19117a;
            }
            if (mVar.f19120d[i12] != this.f19120d[i12]) {
                return false;
            }
            i11 = i12;
        }
    }

    public final int hashCode() {
        int i10 = this.f19119c[5];
        for (int i11 = 0; i11 < this.f19118b; i11++) {
            i10 += this.f19120d[i11] * 65599;
        }
        return i10;
    }

    public final String toString() {
        String string;
        String strS = android.support.v4.media.session.a.s(new StringBuilder("S-"), this.f19117a & 255, "-");
        byte[] bArr = this.f19119c;
        if (bArr[0] == 0 && bArr[1] == 0) {
            long j10 = 0;
            long j11 = 0;
            for (int i10 = 5; i10 > 1; i10--) {
                j10 += (this.f19119c[i10] & 255) << ((int) j11);
                j11 += 8;
            }
            string = strS + j10;
        } else {
            StringBuilder sbM = g.b.m(g.b.j(strS, "0x"));
            sbM.append(ge.a.m(this.f19119c, 0, 6));
            string = sbM.toString();
        }
        for (int i11 = 0; i11 < this.f19118b; i11++) {
            StringBuilder sbB = d0.f.b(string, "-");
            sbB.append(this.f19120d[i11] & 4294967295L);
            string = sbB.toString();
        }
        return string;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(String str) throws r, NumberFormatException {
        long j10;
        StringTokenizer stringTokenizer = new StringTokenizer(str, "-");
        if (stringTokenizer.countTokens() >= 3 && stringTokenizer.nextToken().equals("S")) {
            this.f19117a = Byte.parseByte(stringTokenizer.nextToken());
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.startsWith("0x")) {
                j10 = Long.parseLong(strNextToken.substring(2), 16);
            } else {
                j10 = Long.parseLong(strNextToken);
            }
            this.f19119c = new byte[6];
            int i10 = 5;
            while (j10 > 0) {
                this.f19119c[i10] = (byte) (j10 % 256);
                j10 >>= 8;
                i10--;
            }
            int iCountTokens = (byte) stringTokenizer.countTokens();
            this.f19118b = iCountTokens;
            if (iCountTokens > 0) {
                this.f19120d = new int[iCountTokens];
                for (int i11 = 0; i11 < this.f19118b; i11++) {
                    this.f19120d[i11] = (int) (Long.parseLong(stringTokenizer.nextToken()) & 4294967295L);
                }
                return;
            }
            return;
        }
        throw new r("Bad textual SID format: ".concat(str));
    }
}
