package de;

import java.security.MessageDigest;
import ta.q;

/* loaded from: classes.dex */
public final class e extends MessageDigest implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public int[] f4631a;

    /* renamed from: b, reason: collision with root package name */
    public long f4632b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f4633c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f4634d;

    public e() {
        super("MD4");
        this.f4631a = new int[4];
        this.f4633c = new byte[64];
        this.f4634d = new int[16];
        engineReset();
    }

    public static int a(int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16 = i10 + (((i11 ^ (-1)) & i13) | (i12 & i11)) + i14;
        return (i16 >>> (32 - i15)) | (i16 << i15);
    }

    public static int b(int i10, int i11, int i12, int i13, int i14, int i15) {
        int iX = q.x(i10, (i11 & (i12 | i13)) | (i12 & i13), i14, 1518500249);
        return (iX >>> (32 - i15)) | (iX << i15);
    }

    public static int c(int i10, int i11, int i12, int i13, int i14, int i15) {
        int iX = q.x(i10, (i11 ^ i12) ^ i13, i14, 1859775393);
        return (iX >>> (32 - i15)) | (iX << i15);
    }

    @Override // java.security.MessageDigest, java.security.MessageDigestSpi
    public final Object clone() {
        e eVar = new e();
        eVar.f4631a = (int[]) this.f4631a.clone();
        eVar.f4633c = (byte[]) this.f4633c.clone();
        eVar.f4632b = this.f4632b;
        return eVar;
    }

    public final void d(int i10, byte[] bArr) {
        int i11 = i10;
        int i12 = 0;
        while (true) {
            int[] iArr = this.f4634d;
            if (i12 >= 16) {
                int[] iArr2 = this.f4631a;
                int i13 = iArr2[0];
                int i14 = iArr2[1];
                int i15 = iArr2[2];
                int i16 = iArr2[3];
                int iA = a(i13, i14, i15, i16, iArr[0], 3);
                int iA2 = a(i16, iA, i14, i15, iArr[1], 7);
                int iA3 = a(i15, iA2, iA, i14, iArr[2], 11);
                int iA4 = a(i14, iA3, iA2, iA, iArr[3], 19);
                int iA5 = a(iA, iA4, iA3, iA2, iArr[4], 3);
                int iA6 = a(iA2, iA5, iA4, iA3, iArr[5], 7);
                int iA7 = a(iA3, iA6, iA5, iA4, iArr[6], 11);
                int iA8 = a(iA4, iA7, iA6, iA5, iArr[7], 19);
                int iA9 = a(iA5, iA8, iA7, iA6, iArr[8], 3);
                int iA10 = a(iA6, iA9, iA8, iA7, iArr[9], 7);
                int iA11 = a(iA7, iA10, iA9, iA8, iArr[10], 11);
                int iA12 = a(iA8, iA11, iA10, iA9, iArr[11], 19);
                int iA13 = a(iA9, iA12, iA11, iA10, iArr[12], 3);
                int iA14 = a(iA10, iA13, iA12, iA11, iArr[13], 7);
                int iA15 = a(iA11, iA14, iA13, iA12, iArr[14], 11);
                int iA16 = a(iA12, iA15, iA14, iA13, iArr[15], 19);
                int iB = b(iA13, iA16, iA15, iA14, iArr[0], 3);
                int iB2 = b(iA14, iB, iA16, iA15, iArr[4], 5);
                int iB3 = b(iA15, iB2, iB, iA16, iArr[8], 9);
                int iB4 = b(iA16, iB3, iB2, iB, iArr[12], 13);
                int iB5 = b(iB, iB4, iB3, iB2, iArr[1], 3);
                int iB6 = b(iB2, iB5, iB4, iB3, iArr[5], 5);
                int iB7 = b(iB3, iB6, iB5, iB4, iArr[9], 9);
                int iB8 = b(iB4, iB7, iB6, iB5, iArr[13], 13);
                int iB9 = b(iB5, iB8, iB7, iB6, iArr[2], 3);
                int iB10 = b(iB6, iB9, iB8, iB7, iArr[6], 5);
                int iB11 = b(iB7, iB10, iB9, iB8, iArr[10], 9);
                int iB12 = b(iB8, iB11, iB10, iB9, iArr[14], 13);
                int iB13 = b(iB9, iB12, iB11, iB10, iArr[3], 3);
                int iB14 = b(iB10, iB13, iB12, iB11, iArr[7], 5);
                int iB15 = b(iB11, iB14, iB13, iB12, iArr[11], 9);
                int iB16 = b(iB12, iB15, iB14, iB13, iArr[15], 13);
                int iC = c(iB13, iB16, iB15, iB14, iArr[0], 3);
                int iC2 = c(iB14, iC, iB16, iB15, iArr[8], 9);
                int iC3 = c(iB15, iC2, iC, iB16, iArr[4], 11);
                int iC4 = c(iB16, iC3, iC2, iC, iArr[12], 15);
                int iC5 = c(iC, iC4, iC3, iC2, iArr[2], 3);
                int iC6 = c(iC2, iC5, iC4, iC3, iArr[10], 9);
                int iC7 = c(iC3, iC6, iC5, iC4, iArr[6], 11);
                int iC8 = c(iC4, iC7, iC6, iC5, iArr[14], 15);
                int iC9 = c(iC5, iC8, iC7, iC6, iArr[1], 3);
                int iC10 = c(iC6, iC9, iC8, iC7, iArr[9], 9);
                int iC11 = c(iC7, iC10, iC9, iC8, iArr[5], 11);
                int iC12 = c(iC8, iC11, iC10, iC9, iArr[13], 15);
                int iC13 = c(iC9, iC12, iC11, iC10, iArr[3], 3);
                int iC14 = c(iC10, iC13, iC12, iC11, iArr[11], 9);
                int iC15 = c(iC11, iC14, iC13, iC12, iArr[7], 11);
                int iC16 = c(iC12, iC15, iC14, iC13, iArr[15], 15);
                iArr2[0] = iArr2[0] + iC13;
                iArr2[1] = iArr2[1] + iC16;
                iArr2[2] = iArr2[2] + iC15;
                iArr2[3] = iArr2[3] + iC14;
                return;
            }
            int i17 = i11 + 3;
            int i18 = ((bArr[i11 + 2] & 255) << 16) | ((bArr[i11 + 1] & 255) << 8) | (bArr[i11] & 255);
            i11 += 4;
            iArr[i12] = i18 | ((bArr[i17] & 255) << 24);
            i12++;
        }
    }

    @Override // java.security.MessageDigestSpi
    public final byte[] engineDigest() {
        int i10 = (int) (this.f4632b % 64);
        int i11 = i10 < 56 ? 56 - i10 : 120 - i10;
        int i12 = i11 + 8;
        byte[] bArr = new byte[i12];
        bArr[0] = Byte.MIN_VALUE;
        for (int i13 = 0; i13 < 8; i13++) {
            bArr[i11 + i13] = (byte) ((this.f4632b * 8) >>> (i13 * 8));
        }
        engineUpdate(bArr, 0, i12);
        byte[] bArr2 = new byte[16];
        for (int i14 = 0; i14 < 4; i14++) {
            for (int i15 = 0; i15 < 4; i15++) {
                bArr2[(i14 * 4) + i15] = (byte) (this.f4631a[i14] >>> (i15 * 8));
            }
        }
        engineReset();
        return bArr2;
    }

    @Override // java.security.MessageDigestSpi
    public final void engineReset() {
        int[] iArr = this.f4631a;
        iArr[0] = 1732584193;
        iArr[1] = -271733879;
        iArr[2] = -1732584194;
        iArr[3] = 271733878;
        this.f4632b = 0L;
        for (int i10 = 0; i10 < 64; i10++) {
            this.f4633c[i10] = 0;
        }
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte b10) {
        long j10 = this.f4632b;
        int i10 = (int) (j10 % 64);
        this.f4632b = j10 + 1;
        byte[] bArr = this.f4633c;
        bArr[i10] = b10;
        if (i10 == 63) {
            d(0, bArr);
        }
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte[] bArr, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            long j10 = i11;
            if (i10 + j10 <= bArr.length) {
                long j11 = this.f4632b;
                int i12 = (int) (j11 % 64);
                this.f4632b = j11 + j10;
                int i13 = 64 - i12;
                byte[] bArr2 = this.f4633c;
                int i14 = 0;
                if (i11 >= i13) {
                    System.arraycopy(bArr, i10, bArr2, i12, i13);
                    d(0, bArr2);
                    while (true) {
                        int i15 = i13 + 64;
                        if (i13 + 63 >= i11) {
                            break;
                        }
                        d(i13 + i10, bArr);
                        i13 = i15;
                    }
                    i14 = i13;
                    i12 = 0;
                }
                if (i14 < i11) {
                    System.arraycopy(bArr, i10 + i14, bArr2, i12, i11 - i14);
                    return;
                }
                return;
            }
        }
        throw new ArrayIndexOutOfBoundsException();
    }
}
