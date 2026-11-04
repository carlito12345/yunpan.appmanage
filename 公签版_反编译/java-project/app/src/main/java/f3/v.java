package f3;

import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import u1.f0;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final s f5592a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5593b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f5594c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f5595d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5596e;

    /* renamed from: f, reason: collision with root package name */
    public final long[] f5597f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f5598g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f5599h;

    /* renamed from: i, reason: collision with root package name */
    public final long f5600i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f5601j;

    public v(s sVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, int[] iArr3, boolean z, long j10, int i11) {
        a9.o.k(iArr.length == jArr2.length);
        a9.o.k(jArr.length == jArr2.length);
        a9.o.k(iArr2.length == jArr2.length);
        this.f5592a = sVar;
        this.f5594c = jArr;
        this.f5595d = iArr;
        this.f5596e = i10;
        this.f5597f = jArr2;
        this.f5598g = iArr2;
        this.f5599h = iArr3;
        this.f5601j = z;
        this.f5600i = j10;
        this.f5593b = i11;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | PKIFailureInfo.duplicateCertReq;
        }
    }

    public final int a(long j10) {
        long[] jArr = this.f5597f;
        int i10 = 0;
        if (!(jArr.length > 0)) {
            return -1;
        }
        if (this.f5601j) {
            return f0.d(jArr, j10, false);
        }
        int[] iArr = this.f5599h;
        int length = iArr.length - 1;
        int i11 = -1;
        while (i10 <= length) {
            int iG = ta.q.g(length, i10, 2, i10);
            if (jArr[iArr[iG]] <= j10) {
                i10 = iG + 1;
                i11 = iG;
            } else {
                length = iG - 1;
            }
        }
        if (i11 == -1) {
            return -1;
        }
        long j11 = jArr[iArr[i11]];
        if (j11 == j10) {
            while (i11 > 0 && jArr[iArr[i11 - 1]] == j11) {
                i11--;
            }
        }
        return iArr[i11];
    }

    public final int b(long j10) {
        long[] jArr = this.f5597f;
        int i10 = 0;
        if (!(jArr.length > 0)) {
            return -1;
        }
        if (this.f5601j) {
            return f0.a(jArr, j10, true);
        }
        int[] iArr = this.f5599h;
        int length = iArr.length - 1;
        int i11 = -1;
        while (i10 <= length) {
            int iG = ta.q.g(length, i10, 2, i10);
            if (jArr[iArr[iG]] >= j10) {
                length = iG - 1;
                i11 = iG;
            } else {
                i10 = iG + 1;
            }
        }
        if (i11 == -1) {
            return -1;
        }
        long j11 = jArr[iArr[i11]];
        if (j11 == j10) {
            while (i11 < iArr.length - 1) {
                int i12 = i11 + 1;
                if (jArr[iArr[i12]] != j11) {
                    break;
                }
                i11 = i12;
            }
        }
        return iArr[i11];
    }
}
