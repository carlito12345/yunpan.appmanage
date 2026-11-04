package jd;

import ad.g;
import ad.i;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.f;

/* loaded from: classes.dex */
public final class c extends id.d implements i {
    public static final Logger I = LoggerFactory.getLogger((Class<?>) c.class);
    public final byte[] D;
    public final String E;
    public int F;
    public long G;
    public long H;

    public c(f fVar, byte[] bArr, String str) {
        super(fVar);
        this.D = bArr;
        this.E = str;
    }

    @Override // ad.i
    public final long getLastWriteTime() {
        return this.G;
    }

    @Override // ad.i
    public final long getSize() {
        return this.H;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        if (rd.a.a(i10, bArr) != 60) {
            throw new g("Expected structureSize = 60");
        }
        this.F = rd.a.a(i10 + 2, bArr);
        rd.a.d(i10 + 8, bArr);
        rd.a.d(i10 + 16, bArr);
        this.G = rd.a.d(i10 + 24, bArr);
        rd.a.d(i10 + 32, bArr);
        rd.a.c(i10 + 40, bArr);
        this.H = rd.a.c(i10 + 48, bArr);
        rd.a.b(i10 + 56, bArr);
        int i11 = i10 + 60;
        Logger logger = I;
        if (logger.isDebugEnabled()) {
            byte[] bArr2 = this.D;
            StringBuilder sbD = da.b.d("Closed ", ge.a.m(bArr2, 0, bArr2.length), " (");
            sbD.append(this.E);
            sbD.append(")");
            logger.debug(sbD.toString());
        }
        return i11 - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}
