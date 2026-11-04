package ed;

import ad.h;
import java.security.MessageDigest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class b implements h {

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f4922e = LoggerFactory.getLogger((Class<?>) b.class);

    /* renamed from: a, reason: collision with root package name */
    public final MessageDigest f4923a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f4924b;

    /* renamed from: c, reason: collision with root package name */
    public int f4925c;

    /* renamed from: d, reason: collision with root package name */
    public int f4926d;

    public b(byte[] bArr, int i10) {
        this.f4923a = ge.a.k();
        this.f4924b = bArr;
        this.f4926d = 0;
        Logger logger = f4922e;
        if (logger.isTraceEnabled()) {
            logger.trace("macSigningKey:");
            logger.trace(ge.a.m(bArr, 0, bArr.length));
        }
    }

    public final byte[] a() {
        byte[] bArrDigest = this.f4923a.digest();
        Logger logger = f4922e;
        if (logger.isTraceEnabled()) {
            logger.trace("digest: ");
            logger.trace(ge.a.m(bArrDigest, 0, bArrDigest.length));
        }
        this.f4925c = 0;
        return bArrDigest;
    }

    public final void b(byte[] bArr, int i10, int i11, ad.b bVar, ad.b bVar2) {
        Logger logger = f4922e;
        if (logger.isTraceEnabled()) {
            logger.trace("Signing with seq " + this.f4926d);
        }
        int i12 = this.f4926d;
        ((c) bVar).r = i12;
        if (bVar2 != null) {
            ((c) bVar2).r = i12 + 1;
        }
        try {
            try {
                byte[] bArr2 = this.f4924b;
                c(bArr2, 0, bArr2.length);
                int i13 = i10 + 14;
                for (int i14 = 0; i14 < 8; i14++) {
                    bArr[i13 + i14] = 0;
                }
                rd.a.f(this.f4926d, bArr, i13);
                c(bArr, i10, i11);
                System.arraycopy(a(), 0, bArr, i13, 8);
            } catch (Exception e7) {
                logger.error("Signature failed", (Throwable) e7);
            }
            this.f4926d += 2;
        } catch (Throwable th2) {
            this.f4926d += 2;
            throw th2;
        }
    }

    public final void c(byte[] bArr, int i10, int i11) {
        Logger logger = f4922e;
        if (logger.isTraceEnabled()) {
            logger.trace("update: " + this.f4925c + " " + i10 + ":" + i11);
            logger.trace(ge.a.m(bArr, i10, Math.min(i11, 256)));
        }
        if (i11 == 0) {
            return;
        }
        this.f4923a.update(bArr, i10, i11);
        this.f4925c++;
    }

    public final String toString() {
        byte[] bArr = this.f4924b;
        return "MacSigningKey=".concat(ge.a.m(bArr, 0, bArr.length));
    }

    public b(byte[] bArr) {
        this.f4923a = ge.a.k();
        this.f4924b = bArr;
    }

    public b(byte[] bArr, Object obj) {
        this.f4923a = ge.a.k();
        this.f4924b = bArr;
        this.f4926d = 2;
    }
}
