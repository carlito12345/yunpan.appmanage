package org.bouncycastle.pqc.crypto.mlkem;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class PolyVec {
    private MLKEMEngine engine;
    private int kyberK;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVec() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public static void pointwiseAccountMontgomery(Poly poly, PolyVec polyVec, PolyVec polyVec2, MLKEMEngine mLKEMEngine) {
        Poly poly2 = new Poly(mLKEMEngine);
        Poly.baseMultMontgomery(poly, polyVec.getVectorIndex(0), polyVec2.getVectorIndex(0));
        for (int i10 = 1; i10 < mLKEMEngine.getKyberK(); i10++) {
            Poly.baseMultMontgomery(poly2, polyVec.getVectorIndex(i10), polyVec2.getVectorIndex(i10));
            poly.addCoeffs(poly2);
        }
        poly.reduce();
    }

    public void addPoly(PolyVec polyVec) {
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            getVectorIndex(i10).addCoeffs(polyVec.getVectorIndex(i10));
        }
    }

    public byte[] compressPolyVec() {
        conditionalSubQ();
        byte[] bArr = new byte[this.engine.getKyberPolyVecCompressedBytes()];
        int i10 = 32;
        int i11 = 4;
        if (this.engine.getKyberPolyVecCompressedBytes() == this.kyberK * 320) {
            short[] sArr = new short[4];
            int i12 = 0;
            int i13 = 0;
            while (i12 < this.kyberK) {
                int i14 = 0;
                while (i14 < 64) {
                    int i15 = 0;
                    while (i15 < i11) {
                        sArr[i15] = (short) (((((getVectorIndex(i12).getCoeffIndex((i14 * 4) + i15) << 10) + 1665) * 1290167) >> 32) & 1023);
                        i15++;
                        i11 = 4;
                    }
                    short s8 = sArr[0];
                    bArr[i13] = (byte) s8;
                    short s10 = sArr[1];
                    bArr[i13 + 1] = (byte) ((s8 >> 8) | (s10 << 2));
                    short s11 = sArr[2];
                    bArr[i13 + 2] = (byte) ((s10 >> 6) | (s11 << 4));
                    int i16 = s11 >> 4;
                    short s12 = sArr[3];
                    bArr[i13 + 3] = (byte) ((s12 << 6) | i16);
                    bArr[i13 + 4] = (byte) (s12 >> 2);
                    i13 += 5;
                    i14++;
                    i11 = 4;
                }
                i12++;
                i11 = 4;
            }
        } else {
            if (this.engine.getKyberPolyVecCompressedBytes() != this.kyberK * 352) {
                throw new RuntimeException("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
            }
            short[] sArr2 = new short[8];
            int i17 = 0;
            int i18 = 0;
            while (i17 < this.kyberK) {
                int i19 = 0;
                while (i19 < i10) {
                    for (int i20 = 0; i20 < 8; i20++) {
                        sArr2[i20] = (short) (((((getVectorIndex(i17).getCoeffIndex((i19 * 8) + i20) << 11) + 1664) * 645084) >> 31) & 2047);
                    }
                    short s13 = sArr2[0];
                    bArr[i18] = (byte) s13;
                    short s14 = sArr2[1];
                    bArr[i18 + 1] = (byte) ((s13 >> 8) | (s14 << 3));
                    short s15 = sArr2[2];
                    bArr[i18 + 2] = (byte) ((s14 >> 5) | (s15 << 6));
                    bArr[i18 + 3] = (byte) (s15 >> 2);
                    int i21 = s15 >> 10;
                    short s16 = sArr2[3];
                    bArr[i18 + 4] = (byte) (i21 | (s16 << 1));
                    short s17 = sArr2[4];
                    bArr[i18 + 5] = (byte) ((s16 >> 7) | (s17 << 4));
                    short s18 = sArr2[5];
                    bArr[i18 + 6] = (byte) ((s17 >> 4) | (s18 << 7));
                    bArr[i18 + 7] = (byte) (s18 >> 1);
                    int i22 = s18 >> 9;
                    short s19 = sArr2[6];
                    bArr[i18 + 8] = (byte) (i22 | (s19 << 2));
                    int i23 = s19 >> 6;
                    short s20 = sArr2[7];
                    bArr[i18 + 9] = (byte) (i23 | (s20 << 5));
                    bArr[i18 + 10] = (byte) (s20 >> 3);
                    i18 += 11;
                    i19++;
                    i10 = 32;
                }
                i17++;
                i10 = 32;
            }
        }
        return bArr;
    }

    public void conditionalSubQ() {
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            getVectorIndex(i10).conditionalSubQ();
        }
    }

    public void decompressPolyVec(byte[] bArr) {
        short s8 = 7;
        short s10 = 5;
        int i10 = 3;
        short s11 = 6;
        int i11 = 8;
        short s12 = 4;
        if (this.engine.getKyberPolyVecCompressedBytes() == this.kyberK * 320) {
            int i12 = 0;
            int i13 = 0;
            while (i12 < this.kyberK) {
                int i14 = 0;
                while (i14 < 64) {
                    int i15 = bArr[i13] & 255;
                    byte b10 = bArr[i13 + 1];
                    byte b11 = bArr[i13 + 2];
                    byte b12 = bArr[i13 + 3];
                    short[] sArr = {(short) (i15 | ((short) ((b10 & 255) << i11))), (short) (((b10 & 255) >> 2) | ((short) ((b11 & 255) << 6))), (short) (((short) ((b12 & 255) << 4)) | ((b11 & 255) >> 4)), (short) (((b12 & 255) >> 6) | ((short) ((bArr[i13 + 4] & 255) << 2)))};
                    i13 += 5;
                    for (int i16 = 0; i16 < 4; i16++) {
                        this.vec[i12].setCoeffIndex((i14 * 4) + i16, (short) ((((sArr[i16] & 1023) * MLKEMEngine.KyberQ) + 512) >> 10));
                    }
                    i14++;
                    i11 = 8;
                }
                i12++;
                i11 = 8;
            }
            return;
        }
        if (this.engine.getKyberPolyVecCompressedBytes() != this.kyberK * 352) {
            throw new RuntimeException("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
        }
        int i17 = 0;
        int i18 = 0;
        while (i17 < this.kyberK) {
            int i19 = 0;
            while (i19 < 32) {
                int i20 = bArr[i18] & 255;
                byte b13 = bArr[i18 + 1];
                short s13 = (short) (i20 | (((short) (b13 & 255)) << 8));
                byte b14 = bArr[i18 + 2];
                short s14 = (short) (((b13 & 255) >> i10) | (((short) (b14 & 255)) << s10));
                int i21 = ((b14 & 255) >> s11) | (((short) (bArr[i18 + 3] & 255)) << 2);
                byte b15 = bArr[i18 + 4];
                short s15 = (short) (((short) ((b15 & 255) << 10)) | i21);
                int i22 = (b15 & 255) >> 1;
                byte b16 = bArr[i18 + 5];
                short s16 = (short) ((((short) (b16 & 255)) << s8) | i22);
                int i23 = (b16 & 255) >> s12;
                byte b17 = bArr[i18 + 6];
                short s17 = (short) ((((short) (b17 & 255)) << s12) | i23);
                int i24 = ((b17 & 255) >> s8) | (((short) (bArr[i18 + 7] & 255)) << 1);
                byte b18 = bArr[i18 + 8];
                short s18 = (short) (((short) ((b18 & 255) << 9)) | i24);
                int i25 = (b18 & 255) >> 2;
                byte b19 = bArr[i18 + 9];
                s10 = 5;
                short[] sArr2 = {s13, s14, s15, s16, s17, s18, (short) ((((short) (b19 & 255)) << s11) | i25), (short) (((b19 & 255) >> 5) | (((short) (bArr[i18 + 10] & 255)) << 3))};
                i18 += 11;
                for (int i26 = 0; i26 < 8; i26++) {
                    this.vec[i17].setCoeffIndex((i19 * 8) + i26, (short) ((((sArr2[i26] & 2047) * MLKEMEngine.KyberQ) + 1024) >> 11));
                }
                i19++;
                s8 = 7;
                i10 = 3;
                s11 = 6;
                s12 = 4;
            }
            i17++;
            s8 = 7;
            i10 = 3;
            s11 = 6;
            s12 = 4;
        }
    }

    public void fromBytes(byte[] bArr) {
        int i10 = 0;
        while (i10 < this.kyberK) {
            Poly vectorIndex = getVectorIndex(i10);
            int i11 = i10 * 384;
            i10++;
            vectorIndex.fromBytes(Arrays.copyOfRange(bArr, i11, i10 * 384));
        }
    }

    public Poly getVectorIndex(int i10) {
        return this.vec[i10];
    }

    public void polyVecInverseNttToMont() {
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            getVectorIndex(i10).polyInverseNttToMont();
        }
    }

    public void polyVecNtt() {
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            getVectorIndex(i10).polyNtt();
        }
    }

    public void reducePoly() {
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            getVectorIndex(i10).reduce();
        }
    }

    public byte[] toBytes() {
        byte[] bArr = new byte[this.polyVecBytes];
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            System.arraycopy(this.vec[i10].toBytes(), 0, bArr, i10 * 384, 384);
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            stringBuffer.append(this.vec[i10].toString());
            if (i10 != this.kyberK - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public PolyVec(MLKEMEngine mLKEMEngine) {
        this.engine = mLKEMEngine;
        this.kyberK = mLKEMEngine.getKyberK();
        this.polyVecBytes = mLKEMEngine.getKyberPolyVecBytes();
        this.vec = new Poly[this.kyberK];
        for (int i10 = 0; i10 < this.kyberK; i10++) {
            this.vec[i10] = new Poly(mLKEMEngine);
        }
    }
}
