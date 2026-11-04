package jd;

import ad.g;
import ad.i;
import java.util.LinkedList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.f;

/* loaded from: classes.dex */
public final class e extends id.d implements i {
    public static final Logger H = LoggerFactory.getLogger((Class<?>) e.class);
    public long D;
    public long E;
    public final byte[] F;
    public final String G;

    public e(String str, f fVar) {
        super(fVar);
        this.F = new byte[16];
        this.G = str;
    }

    @Override // id.d, ad.d
    public final void E(ad.c cVar) {
        if (this.f8675x && (cVar instanceof id.a)) {
            ((id.a) cVar).w(this.F);
        }
        super.E(cVar);
    }

    @Override // ad.i
    public final long getLastWriteTime() {
        return this.D;
    }

    @Override // ad.i
    public final long getSize() {
        return this.E;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        int iB;
        if (rd.a.a(i10, bArr) != 89) {
            throw new g("Structure size is not 89");
        }
        byte b10 = bArr[i10 + 2];
        byte b11 = bArr[i10 + 3];
        rd.a.b(i10 + 4, bArr);
        rd.a.d(i10 + 8, bArr);
        rd.a.d(i10 + 16, bArr);
        this.D = rd.a.d(i10 + 24, bArr);
        rd.a.d(i10 + 32, bArr);
        rd.a.c(i10 + 40, bArr);
        this.E = rd.a.c(i10 + 48, bArr);
        rd.a.b(i10 + 56, bArr);
        byte[] bArr2 = this.F;
        System.arraycopy(bArr, i10 + 64, bArr2, 0, 16);
        int iB2 = rd.a.b(i10 + 80, bArr);
        int iB3 = rd.a.b(i10 + 84, bArr);
        int iMax = i10 + 88;
        if (iB2 > 0 && iB3 > 0) {
            LinkedList linkedList = new LinkedList();
            int i11 = this.f8658d + iB2;
            do {
                iB = rd.a.b(i11, bArr);
                int iA = rd.a.a(i11 + 4, bArr);
                int iA2 = rd.a.a(i11 + 6, bArr);
                int iA3 = rd.a.a(i11 + 10, bArr);
                int iB4 = rd.a.b(i11 + 12, bArr);
                int i12 = iA + i11;
                System.arraycopy(bArr, i12, new byte[iA2], 0, iA2);
                int iMax2 = Math.max(Math.max(i11 + 16, i12 + iA2), iA3 + i11 + iB4);
                if (iB > 0) {
                    i11 += iB;
                }
                iMax = Math.max(iMax, iMax2);
            } while (iB > 0);
        }
        Logger logger = H;
        if (logger.isDebugEnabled()) {
            logger.debug("Opened " + this.G + ": " + ge.a.m(bArr2, 0, bArr2.length));
        }
        return iMax - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}
