package zh;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public final class b extends bi.a {

    /* renamed from: d, reason: collision with root package name */
    public static final long[][] f19577d = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 4, 256);

    /* renamed from: c, reason: collision with root package name */
    public long f19578c = -1;

    static {
        int i10 = 0;
        while (i10 < 4) {
            for (int i11 = 0; i11 < 256; i11++) {
                long j10 = i10 == 0 ? i11 : f19577d[i10 - 1][i11];
                for (int i12 = 0; i12 < 8; i12++) {
                    j10 = (j10 & 1) == 1 ? (j10 >>> 1) ^ (-3932672073523589310L) : j10 >>> 1;
                }
                f19577d[i10][i11] = j10;
            }
            i10++;
        }
    }

    public b() {
        this.f2818a = 8;
        this.f2819b = "CRC64";
    }

    @Override // bi.a
    public final byte[] a() {
        byte[] bArr = {(byte) (this.f19578c ^ (-1)), (byte) (r2 >>> 8), (byte) (r2 >>> 16), (byte) (r2 >>> 24), (byte) (r2 >>> 32), (byte) (r2 >>> 40), (byte) (r2 >>> 48), (byte) (r2 >>> 56)};
        this.f19578c = -1L;
        return bArr;
    }

    @Override // bi.a
    public final void b(byte[] bArr, int i10, int i11) {
        long[][] jArr;
        int i12 = i11 + i10;
        int i13 = i12 - 3;
        while (true) {
            jArr = f19577d;
            if (i10 >= i13) {
                break;
            }
            long j10 = this.f19578c;
            int i14 = (int) j10;
            this.f19578c = (((j10 >>> 32) ^ (jArr[3][(i14 & 255) ^ (bArr[i10] & 255)] ^ jArr[2][((i14 >>> 8) & 255) ^ (bArr[i10 + 1] & 255)])) ^ jArr[1][((i14 >>> 16) & 255) ^ (bArr[i10 + 2] & 255)]) ^ jArr[0][((i14 >>> 24) & 255) ^ (bArr[i10 + 3] & 255)];
            i10 += 4;
        }
        while (i10 < i12) {
            long[] jArr2 = jArr[0];
            int i15 = i10 + 1;
            int i16 = bArr[i10] & 255;
            long j11 = this.f19578c;
            this.f19578c = (j11 >>> 8) ^ jArr2[i16 ^ (((int) j11) & 255)];
            i10 = i15;
        }
    }
}
