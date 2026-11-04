package d3;

import l2.l;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: d, reason: collision with root package name */
    public static final long[] f4438d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4439a = new byte[8];

    /* renamed from: b, reason: collision with root package name */
    public int f4440b;

    /* renamed from: c, reason: collision with root package name */
    public int f4441c;

    public static long a(int i10, byte[] bArr, boolean z) {
        long j10 = bArr[0] & 255;
        if (z) {
            j10 &= f4438d[i10 - 1] ^ (-1);
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & 255);
        }
        return j10;
    }

    public static int b(int i10) {
        for (int i11 = 0; i11 < 8; i11++) {
            if ((f4438d[i11] & i10) != 0) {
                return i11 + 1;
            }
        }
        return -1;
    }

    public final long c(l lVar, boolean z, boolean z4, int i10) {
        int i11 = this.f4440b;
        byte[] bArr = this.f4439a;
        if (i11 == 0) {
            if (!lVar.b(bArr, 0, 1, z)) {
                return -1L;
            }
            int iB = b(bArr[0] & 255);
            this.f4441c = iB;
            if (iB == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f4440b = 1;
        }
        int i12 = this.f4441c;
        if (i12 > i10) {
            this.f4440b = 0;
            return -2L;
        }
        if (i12 != 1) {
            lVar.b(bArr, 1, i12 - 1, false);
        }
        this.f4440b = 0;
        return a(this.f4441c, bArr, z4);
    }
}
