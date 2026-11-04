package ce;

import com.hsae.autosdk.p001os.SocConst;
import com.hsae.autosdk.source.SourceConst;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class d1 extends i0 {
    public static final int P0 = wd.a.c(65535, "jcifs.smb1.smb.client.listSize");
    public static final int Q0 = wd.a.c(200, "jcifs.smb1.smb.client.listCount");
    public final int M0;
    public final int N0;
    public final String O0;

    public d1(String str) {
        if (str.equals("\\")) {
            this.f3131x = str;
        } else {
            this.f3131x = str.concat("\\");
        }
        this.O0 = Marker.ANY_MARKER;
        this.M0 = 22;
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.X = (byte) 1;
        this.N0 = SourceConst.IOCTL_FUNCTION_MIC1;
        this.P = 0;
        this.R = 10;
        this.S = P0;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2FindFirst2[");
        sb2.append(super.toString());
        sb2.append(",searchAttributes=0x");
        android.support.v4.media.session.a.y(this.M0, 2, ",searchCount=", sb2);
        sb2.append(Q0);
        sb2.append(",flags=0x");
        sb2.append(de.c.c(0, 2));
        sb2.append(",informationLevel=0x");
        android.support.v4.media.session.a.y(this.N0, 3, ",searchStorageType=0,filename=", sb2);
        return new String(g.b.l(this.f3131x, "]", sb2));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        q.q(this.M0, bArr, 0);
        q.q(Q0, bArr, 2);
        long j10 = 0;
        q.q(j10, bArr, 4);
        q.q(this.N0, bArr, 6);
        q.r(j10, bArr, 8);
        return u(this.f3131x + this.O0, bArr, 12, this.f3126q) + 12;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        return 2;
    }
}
