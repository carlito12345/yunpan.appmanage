package jd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.f;

/* loaded from: classes.dex */
public final class b extends id.c implements id.a {
    public static final Logger B = LoggerFactory.getLogger((Class<?>) b.class);
    public int A;

    /* renamed from: y, reason: collision with root package name */
    public byte[] f9854y;
    public final String z;

    public b(f fVar, byte[] bArr, String str) {
        super(fVar, 6);
        this.f9854y = bArr;
        this.z = str;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(24L, bArr, i10);
        rd.a.e(this.A, bArr, i10 + 2);
        System.arraycopy(this.f9854y, 0, bArr, i10 + 8, 16);
        int i11 = i10 + 24;
        Logger logger = B;
        if (logger.isDebugEnabled()) {
            byte[] bArr2 = this.f9854y;
            StringBuilder sbD = da.b.d("Closing ", ge.a.m(bArr2, 0, bArr2.length), " (");
            sbD.append(this.z);
            sbD.append(")");
            logger.debug(sbD.toString());
        }
        return i11 - i10;
    }

    @Override // id.c
    public final id.d q0(vc.b bVar) {
        return new c(bVar.e(), this.f9854y, this.z);
    }

    @Override // ad.c
    public final int size() {
        return id.b.o0(88, 0);
    }

    @Override // id.a
    public final void w(byte[] bArr) {
        this.f9854y = bArr;
    }

    public b(f fVar, byte[] bArr) {
        this(fVar, bArr, "");
    }
}
