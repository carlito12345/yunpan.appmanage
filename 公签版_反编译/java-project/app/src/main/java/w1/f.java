package w1;

import android.net.Uri;
import android.util.Base64;
import j$.nio.charset.StandardCharsets;
import java.net.URLDecoder;
import r1.f0;

/* loaded from: classes.dex */
public final class f extends c {

    /* renamed from: e, reason: collision with root package name */
    public j f17361e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f17362f;

    /* renamed from: g, reason: collision with root package name */
    public int f17363g;

    /* renamed from: h, reason: collision with root package name */
    public int f17364h;

    public f() {
        super(false);
    }

    @Override // w1.h
    public final void close() {
        if (this.f17362f != null) {
            this.f17362f = null;
            l();
        }
        this.f17361e = null;
    }

    @Override // w1.h
    public final Uri getUri() {
        j jVar = this.f17361e;
        if (jVar != null) {
            return jVar.f17367a;
        }
        return null;
    }

    @Override // w1.h
    public final long j(j jVar) throws i, f0 {
        m();
        this.f17361e = jVar;
        Uri uriNormalizeScheme = jVar.f17367a.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        a9.o.l("data".equals(scheme), "Unsupported scheme: %s", scheme);
        String schemeSpecificPart = uriNormalizeScheme.getSchemeSpecificPart();
        String str = u1.f0.f15206a;
        String[] strArrSplit = schemeSpecificPart.split(",", -1);
        if (strArrSplit.length != 2) {
            throw new f0("Unexpected URI format: " + uriNormalizeScheme, null, true, 0);
        }
        String str2 = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f17362f = Base64.decode(str2, 0);
            } catch (IllegalArgumentException e7) {
                throw new f0(da.b.c("Error while parsing Base64 encoded string: ", str2), e7, true, 0);
            }
        } else {
            this.f17362f = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
        }
        byte[] bArr = this.f17362f;
        long length = bArr.length;
        long j10 = jVar.f17371e;
        if (j10 > length) {
            this.f17362f = null;
            throw new i(2008);
        }
        int i10 = (int) j10;
        this.f17363g = i10;
        int length2 = bArr.length - i10;
        this.f17364h = length2;
        long j11 = jVar.f17372f;
        if (j11 != -1) {
            this.f17364h = (int) Math.min(length2, j11);
        }
        n(jVar);
        return j11 != -1 ? j11 : this.f17364h;
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f17364h;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        byte[] bArr2 = this.f17362f;
        String str = u1.f0.f15206a;
        System.arraycopy(bArr2, this.f17363g, bArr, i10, iMin);
        this.f17363g += iMin;
        this.f17364h -= iMin;
        k(iMin);
        return iMin;
    }
}
