package fg;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final class w extends l {

    /* renamed from: e, reason: collision with root package name */
    public final transient byte[][] f5885e;

    /* renamed from: f, reason: collision with root package name */
    public final transient int[] f5886f;

    public w(byte[][] bArr, int[] iArr) {
        super(l.f5854d.f5855a);
        this.f5885e = bArr;
        this.f5886f = iArr;
    }

    @Override // fg.l
    public final String a() {
        return new l(p()).a();
    }

    @Override // fg.l
    public final String b() {
        return new l(p()).b();
    }

    @Override // fg.l
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (lVar.g() == g() && n(lVar, g())) {
                return true;
            }
        }
        return false;
    }

    @Override // fg.l
    public final l f(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f5885e;
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f5886f;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            messageDigest.update(bArr[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] bArrDigest = messageDigest.digest();
        ue.d.d(bArrDigest, "digestBytes");
        return new l(bArrDigest);
    }

    @Override // fg.l
    public final int g() {
        return this.f5886f[this.f5885e.length - 1];
    }

    @Override // fg.l
    public final String h() {
        return new l(p()).h();
    }

    @Override // fg.l
    public final int hashCode() {
        int i10 = this.f5856b;
        if (i10 != 0) {
            return i10;
        }
        byte[][] bArr = this.f5885e;
        int length = bArr.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            int[] iArr = this.f5886f;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            byte[] bArr2 = bArr[i11];
            int i16 = (i15 - i13) + i14;
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr2[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
        this.f5856b = i12;
        return i12;
    }

    @Override // fg.l
    public final byte[] i() {
        return p();
    }

    @Override // fg.l
    public final byte j(int i10) {
        byte[][] bArr = this.f5885e;
        int length = bArr.length - 1;
        int[] iArr = this.f5886f;
        e0.d(iArr[length], i10, 1L);
        int iB = gg.b.b(this, i10);
        return bArr[iB][(i10 - (iB == 0 ? 0 : iArr[iB - 1])) + iArr[bArr.length + iB]];
    }

    @Override // fg.l
    public final boolean m(int i10, int i11, int i12, byte[] bArr) {
        ue.d.e(bArr, "other");
        if (i10 < 0 || i10 > g() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iB = gg.b.b(this, i10);
        while (i10 < i13) {
            int[] iArr = this.f5886f;
            int i14 = iB == 0 ? 0 : iArr[iB - 1];
            int i15 = iArr[iB] - i14;
            byte[][] bArr2 = this.f5885e;
            int i16 = iArr[bArr2.length + iB];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!e0.a((i10 - i14) + i16, bArr2[iB], i11, bArr, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iB++;
        }
        return true;
    }

    @Override // fg.l
    public final boolean n(l lVar, int i10) {
        ue.d.e(lVar, "other");
        if (g() - i10 < 0) {
            return false;
        }
        int iB = gg.b.b(this, 0);
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int[] iArr = this.f5886f;
            int i13 = iB == 0 ? 0 : iArr[iB - 1];
            int i14 = iArr[iB] - i13;
            byte[][] bArr = this.f5885e;
            int i15 = iArr[bArr.length + iB];
            int iMin = Math.min(i10, i14 + i13) - i11;
            if (!lVar.m(i12, (i11 - i13) + i15, iMin, bArr[iB])) {
                return false;
            }
            i12 += iMin;
            i11 += iMin;
            iB++;
        }
        return true;
    }

    @Override // fg.l
    public final l o() {
        return new l(p()).o();
    }

    @Override // fg.l
    public final byte[] p() {
        byte[] bArr = new byte[g()];
        byte[][] bArr2 = this.f5885e;
        int length = bArr2.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int[] iArr = this.f5886f;
            int i13 = iArr[length + i10];
            int i14 = iArr[i10];
            int i15 = i14 - i11;
            je.i.f0(i12, bArr2[i10], i13, bArr, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // fg.l
    public final void r(i iVar, int i10) {
        ue.d.e(iVar, "buffer");
        int iB = gg.b.b(this, 0);
        int i11 = 0;
        while (i11 < i10) {
            int[] iArr = this.f5886f;
            int i12 = iB == 0 ? 0 : iArr[iB - 1];
            int i13 = iArr[iB] - i12;
            byte[][] bArr = this.f5885e;
            int i14 = iArr[bArr.length + iB];
            int iMin = Math.min(i10, i13 + i12) - i11;
            int i15 = (i11 - i12) + i14;
            u uVar = new u(bArr[iB], i15, i15 + iMin, true, false);
            u uVar2 = iVar.f5852a;
            if (uVar2 == null) {
                uVar.f5881g = uVar;
                uVar.f5880f = uVar;
                iVar.f5852a = uVar;
            } else {
                u uVar3 = uVar2.f5881g;
                ue.d.b(uVar3);
                uVar3.b(uVar);
            }
            i11 += iMin;
            iB++;
        }
        iVar.f5853b += i10;
    }

    @Override // fg.l
    public final String toString() {
        return new l(p()).toString();
    }
}
