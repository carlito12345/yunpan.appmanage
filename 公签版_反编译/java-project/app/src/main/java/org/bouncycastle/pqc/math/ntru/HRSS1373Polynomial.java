package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;

/* loaded from: classes3.dex */
public class HRSS1373Polynomial extends HRSSPolynomial {
    private static final int K = 86;
    private static final int L = 1376;
    private static final int M = 344;

    public HRSS1373Polynomial(NTRUHRSSParameterSet nTRUHRSSParameterSet) {
        super(nTRUHRSSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.HRSSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int i10 = 0;
        while (i10 < this.params.packDegree() / 4) {
            short[] sArr = this.coeffs;
            int i11 = i10 * 4;
            int i12 = i10 * 7;
            int i13 = bArr[i12] & 255;
            byte b10 = bArr[i12 + 1];
            sArr[i11] = (short) (i13 | ((((short) (b10 & 255)) & 63) << 8));
            int i14 = ((b10 & 255) >>> 6) | (((short) (bArr[i12 + 2] & 255)) << 2);
            byte b11 = bArr[i12 + 3];
            sArr[i11 + 1] = (short) (i14 | (((short) (b11 & 15)) << 10));
            int i15 = ((b11 & 255) >>> 4) | ((((short) (bArr[i12 + 4] & 255)) & 255) << 4);
            byte b12 = bArr[i12 + 5];
            sArr[i11 + 2] = (short) (i15 | (((short) (b12 & 3)) << 12));
            sArr[i11 + 3] = (short) (((b12 & 255) >>> 2) | (((short) (bArr[i12 + 6] & 255)) << 6));
            i10++;
        }
        if (this.params.packDegree() % 4 == 2) {
            short[] sArr2 = this.coeffs;
            int i16 = i10 * 4;
            int i17 = i10 * 7;
            byte b13 = bArr[i17];
            byte b14 = bArr[i17 + 1];
            sArr2[i16] = (short) (b13 | ((b14 & 63) << 8));
            sArr2[i16 + 1] = (short) (((bArr[i17 + 3] & 15) << 10) | (bArr[i17 + 2] << 2) | (b14 >>> 6));
        }
        this.coeffs[this.params.n() - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.HRSSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int i10) {
        byte[] bArr = new byte[i10];
        short[] sArr = new short[4];
        int i11 = 0;
        while (i11 < this.params.packDegree() / 4) {
            for (int i12 = 0; i12 < 4; i12++) {
                sArr[i12] = (short) Polynomial.modQ(this.coeffs[(i11 * 4) + i12] & HPKE.aead_EXPORT_ONLY, this.params.q());
            }
            int i13 = i11 * 7;
            short s8 = sArr[0];
            bArr[i13] = (byte) (s8 & 255);
            short s10 = sArr[1];
            bArr[i13 + 1] = (byte) ((s8 >>> 8) | ((s10 & 3) << 6));
            bArr[i13 + 2] = (byte) ((s10 >>> 2) & 255);
            short s11 = sArr[2];
            bArr[i13 + 3] = (byte) ((s10 >>> 10) | ((s11 & 15) << 4));
            bArr[i13 + 4] = (byte) ((s11 >>> 4) & 255);
            short s12 = sArr[3];
            bArr[i13 + 5] = (byte) ((s11 >>> 12) | ((s12 & 63) << 2));
            bArr[i13 + 6] = (byte) (s12 >>> 6);
            i11++;
        }
        if (this.params.packDegree() % 4 == 2) {
            sArr[0] = (short) Polynomial.modQ(this.coeffs[this.params.packDegree() - 2] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short sModQ = (short) Polynomial.modQ(this.coeffs[this.params.packDegree() - 1] & HPKE.aead_EXPORT_ONLY, this.params.q());
            sArr[1] = sModQ;
            int i14 = i11 * 7;
            short s13 = sArr[0];
            bArr[i14] = (byte) (s13 & 255);
            bArr[i14 + 1] = (byte) ((s13 >>> 8) | ((sModQ & 3) << 6));
            bArr[i14 + 2] = (byte) ((sModQ >>> 2) & 255);
            bArr[i14 + 3] = (byte) (sModQ >>> 10);
        }
        return bArr;
    }
}
