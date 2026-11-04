package l2;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class l implements p {

    /* renamed from: b, reason: collision with root package name */
    public final w1.h f10497b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10498c;

    /* renamed from: d, reason: collision with root package name */
    public long f10499d;

    /* renamed from: f, reason: collision with root package name */
    public int f10501f;

    /* renamed from: g, reason: collision with root package name */
    public int f10502g;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f10500e = new byte[65536];

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10496a = new byte[4096];

    static {
        r1.z.a("media3.extractor");
    }

    public l(w1.h hVar, long j10, long j11) {
        this.f10497b = hVar;
        this.f10499d = j10;
        this.f10498c = j11;
    }

    @Override // l2.p
    public final void a(int i10, int i11, byte[] bArr) {
        c(bArr, i10, i11, false);
    }

    @Override // l2.p
    public final boolean b(byte[] bArr, int i10, int i11, boolean z) {
        int iMin;
        int i12 = this.f10502g;
        if (i12 == 0) {
            iMin = 0;
        } else {
            iMin = Math.min(i12, i11);
            System.arraycopy(this.f10500e, 0, bArr, i10, iMin);
            p(iMin);
        }
        int iN = iMin;
        while (iN < i11 && iN != -1) {
            iN = n(i10, z, bArr, i11, iN);
        }
        if (iN != -1) {
            this.f10499d += iN;
        }
        return iN != -1;
    }

    @Override // l2.p
    public final boolean c(byte[] bArr, int i10, int i11, boolean z) {
        if (!k(i11, z)) {
            return false;
        }
        System.arraycopy(this.f10500e, this.f10501f - i11, bArr, i10, i11);
        return true;
    }

    @Override // l2.p
    public final long d() {
        return this.f10499d + this.f10501f;
    }

    @Override // l2.p
    public final void e(int i10) {
        k(i10, false);
    }

    @Override // l2.p
    public final long getLength() {
        return this.f10498c;
    }

    @Override // l2.p
    public final long getPosition() {
        return this.f10499d;
    }

    @Override // l2.p
    public final void h() {
        this.f10501f = 0;
    }

    @Override // l2.p
    public final void i(int i10) {
        o(i10, false);
    }

    public final boolean k(int i10, boolean z) {
        l(i10);
        int iN = this.f10502g - this.f10501f;
        while (iN < i10) {
            iN = n(this.f10501f, z, this.f10500e, i10, iN);
            if (iN == -1) {
                return false;
            }
            this.f10502g = this.f10501f + iN;
        }
        this.f10501f += i10;
        return true;
    }

    public final void l(int i10) {
        int i11 = this.f10501f + i10;
        byte[] bArr = this.f10500e;
        if (i11 > bArr.length) {
            this.f10500e = Arrays.copyOf(this.f10500e, u1.f0.g(bArr.length * 2, 65536 + i11, i11 + PKIFailureInfo.signerNotTrusted));
        }
    }

    public final int m(int i10, int i11, byte[] bArr) throws EOFException, InterruptedIOException {
        int iMin;
        l(i11);
        int i12 = this.f10502g;
        int i13 = this.f10501f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            iMin = n(i13, true, this.f10500e, i11, 0);
            if (iMin == -1) {
                return -1;
            }
            this.f10502g += iMin;
        } else {
            iMin = Math.min(i11, i14);
        }
        System.arraycopy(this.f10500e, this.f10501f, bArr, i10, iMin);
        this.f10501f += iMin;
        return iMin;
    }

    public final int n(int i10, boolean z, byte[] bArr, int i11, int i12) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i13 = this.f10497b.read(bArr, i10 + i12, i11 - i12);
        if (i13 != -1) {
            return i12 + i13;
        }
        if (i12 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    public final boolean o(int i10, boolean z) {
        int iMin = Math.min(this.f10502g, i10);
        p(iMin);
        int iN = iMin;
        while (iN < i10 && iN != -1) {
            byte[] bArr = this.f10496a;
            iN = n(-iN, z, bArr, Math.min(i10, bArr.length + iN), iN);
        }
        if (iN != -1) {
            this.f10499d += iN;
        }
        return iN != -1;
    }

    public final void p(int i10) {
        int i11 = this.f10502g - i10;
        this.f10502g = i11;
        this.f10501f = 0;
        byte[] bArr = this.f10500e;
        byte[] bArr2 = i11 < bArr.length - PKIFailureInfo.signerNotTrusted ? new byte[65536 + i11] : bArr;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        this.f10500e = bArr2;
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) throws EOFException, InterruptedIOException {
        int i12 = this.f10502g;
        int iN = 0;
        if (i12 != 0) {
            int iMin = Math.min(i12, i11);
            System.arraycopy(this.f10500e, 0, bArr, i10, iMin);
            p(iMin);
            iN = iMin;
        }
        if (iN == 0) {
            iN = n(i10, true, bArr, i11, 0);
        }
        if (iN != -1) {
            this.f10499d += iN;
        }
        return iN;
    }

    @Override // l2.p
    public final void readFully(byte[] bArr, int i10, int i11) {
        b(bArr, i10, i11, false);
    }
}
