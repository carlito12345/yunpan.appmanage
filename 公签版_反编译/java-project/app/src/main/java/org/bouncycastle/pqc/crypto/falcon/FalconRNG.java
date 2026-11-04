package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class FalconRNG {

    /* renamed from: bd, reason: collision with root package name */
    byte[] f12299bd = new byte[512];
    int ptr = 0;

    /* renamed from: sd, reason: collision with root package name */
    byte[] f12300sd = new byte[256];

    private void QROUND(int i10, int i11, int i12, int i13, int[] iArr) {
        int i14 = iArr[i10] + iArr[i11];
        iArr[i10] = i14;
        int i15 = i14 ^ iArr[i13];
        iArr[i13] = i15;
        int i16 = (i15 >>> 16) | (i15 << 16);
        iArr[i13] = i16;
        int i17 = iArr[i12] + i16;
        iArr[i12] = i17;
        int i18 = iArr[i11] ^ i17;
        iArr[i11] = i18;
        int i19 = (i18 >>> 20) | (i18 << 12);
        iArr[i11] = i19;
        int i20 = iArr[i10] + i19;
        iArr[i10] = i20;
        int i21 = iArr[i13] ^ i20;
        iArr[i13] = i21;
        int i22 = (i21 >>> 24) | (i21 << 8);
        iArr[i13] = i22;
        int i23 = iArr[i12] + i22;
        iArr[i12] = i23;
        int i24 = iArr[i11] ^ i23;
        iArr[i11] = i24;
        iArr[i11] = (i24 >>> 25) | (i24 << 7);
    }

    public long prng_get_u64() {
        int i10 = this.ptr;
        if (i10 >= this.f12299bd.length - 9) {
            prng_refill();
            i10 = 0;
        }
        this.ptr = i10 + 8;
        return Pack.littleEndianToLong(this.f12299bd, i10);
    }

    public byte prng_get_u8() {
        byte[] bArr = this.f12299bd;
        int i10 = this.ptr;
        int i11 = i10 + 1;
        this.ptr = i11;
        byte b10 = bArr[i10];
        if (i11 == bArr.length) {
            prng_refill();
        }
        return b10;
    }

    public void prng_init(SHAKEDigest sHAKEDigest) {
        sHAKEDigest.doOutput(this.f12300sd, 0, 56);
        prng_refill();
    }

    public void prng_refill() {
        int[] iArr = {1634760805, 857760878, 2036477234, 1797285236};
        int[] iArr2 = new int[16];
        int i10 = 0;
        long jLittleEndianToLong = Pack.littleEndianToLong(this.f12300sd, 48);
        int i11 = 0;
        while (i11 < 8) {
            System.arraycopy(iArr, i10, iArr2, i10, 4);
            Pack.littleEndianToInt(this.f12300sd, i10, iArr2, 4, 12);
            int i12 = (int) jLittleEndianToLong;
            iArr2[14] = iArr2[14] ^ i12;
            int i13 = (int) (jLittleEndianToLong >>> 32);
            iArr2[15] = iArr2[15] ^ i13;
            int i14 = 0;
            while (i14 < 10) {
                QROUND(0, 4, 8, 12, iArr2);
                QROUND(1, 5, 9, 13, iArr2);
                QROUND(2, 6, 10, 14, iArr2);
                QROUND(3, 7, 11, 15, iArr2);
                QROUND(0, 5, 10, 15, iArr2);
                QROUND(1, 6, 11, 12, iArr2);
                QROUND(2, 7, 8, 13, iArr2);
                QROUND(3, 4, 9, 14, iArr2);
                i14++;
                i12 = i12;
                i13 = i13;
            }
            int i15 = i13;
            int i16 = i12;
            for (int i17 = 0; i17 < 4; i17++) {
                iArr2[i17] = iArr2[i17] + iArr[i17];
            }
            for (int i18 = 4; i18 < 14; i18++) {
                iArr2[i18] = Pack.littleEndianToInt(this.f12300sd, (i18 * 4) - 16) + iArr2[i18];
            }
            iArr2[14] = iArr2[14] + (Pack.littleEndianToInt(this.f12300sd, 40) ^ i16);
            iArr2[15] = iArr2[15] + (Pack.littleEndianToInt(this.f12300sd, 44) ^ i15);
            jLittleEndianToLong++;
            for (int i19 = 0; i19 < 16; i19++) {
                Pack.intToLittleEndian(iArr2[i19], this.f12299bd, (i11 << 2) + (i19 << 5));
            }
            i11++;
            i10 = 0;
        }
        Pack.longToLittleEndian(jLittleEndianToLong, this.f12300sd, 48);
        this.ptr = 0;
    }
}
