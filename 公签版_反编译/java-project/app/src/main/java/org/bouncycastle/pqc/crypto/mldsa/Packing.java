package org.bouncycastle.pqc.crypto.mldsa;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class Packing {
    public static byte[] packPublicKey(PolyVecK polyVecK, MLDSAEngine mLDSAEngine) {
        byte[] bArr = new byte[mLDSAEngine.getCryptoPublicKeyBytes() - 32];
        for (int i10 = 0; i10 < mLDSAEngine.getDilithiumK(); i10++) {
            System.arraycopy(polyVecK.getVectorIndex(i10).polyt1Pack(), 0, bArr, i10 * 320, 320);
        }
        return bArr;
    }

    public static byte[][] packSecretKey(byte[] bArr, byte[] bArr2, byte[] bArr3, PolyVecK polyVecK, PolyVecL polyVecL, PolyVecK polyVecK2, MLDSAEngine mLDSAEngine) {
        byte[][] bArr4 = new byte[6][];
        bArr4[0] = bArr;
        bArr4[1] = bArr3;
        bArr4[2] = bArr2;
        bArr4[3] = new byte[mLDSAEngine.getDilithiumL() * mLDSAEngine.getDilithiumPolyEtaPackedBytes()];
        for (int i10 = 0; i10 < mLDSAEngine.getDilithiumL(); i10++) {
            polyVecL.getVectorIndex(i10).polyEtaPack(bArr4[3], mLDSAEngine.getDilithiumPolyEtaPackedBytes() * i10);
        }
        bArr4[4] = new byte[mLDSAEngine.getDilithiumK() * mLDSAEngine.getDilithiumPolyEtaPackedBytes()];
        for (int i11 = 0; i11 < mLDSAEngine.getDilithiumK(); i11++) {
            polyVecK2.getVectorIndex(i11).polyEtaPack(bArr4[4], mLDSAEngine.getDilithiumPolyEtaPackedBytes() * i11);
        }
        bArr4[5] = new byte[mLDSAEngine.getDilithiumK() * 416];
        for (int i12 = 0; i12 < mLDSAEngine.getDilithiumK(); i12++) {
            polyVecK.getVectorIndex(i12).polyt0Pack(bArr4[5], i12 * 416);
        }
        return bArr4;
    }

    public static void packSignature(byte[] bArr, PolyVecL polyVecL, PolyVecK polyVecK, MLDSAEngine mLDSAEngine) {
        int dilithiumCTilde = mLDSAEngine.getDilithiumCTilde();
        for (int i10 = 0; i10 < mLDSAEngine.getDilithiumL(); i10++) {
            polyVecL.getVectorIndex(i10).zPack(bArr, dilithiumCTilde);
            dilithiumCTilde += mLDSAEngine.getDilithiumPolyZPackedBytes();
        }
        for (int i11 = 0; i11 < mLDSAEngine.getDilithiumOmega() + mLDSAEngine.getDilithiumK(); i11++) {
            bArr[dilithiumCTilde + i11] = 0;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < mLDSAEngine.getDilithiumK(); i13++) {
            for (int i14 = 0; i14 < 256; i14++) {
                if (polyVecK.getVectorIndex(i13).getCoeffIndex(i14) != 0) {
                    bArr[i12 + dilithiumCTilde] = (byte) i14;
                    i12++;
                }
            }
            bArr[mLDSAEngine.getDilithiumOmega() + dilithiumCTilde + i13] = (byte) i12;
        }
    }

    public static PolyVecK unpackPublicKey(PolyVecK polyVecK, byte[] bArr, MLDSAEngine mLDSAEngine) {
        int i10 = 0;
        while (i10 < mLDSAEngine.getDilithiumK()) {
            Poly vectorIndex = polyVecK.getVectorIndex(i10);
            int i11 = i10 * 320;
            i10++;
            vectorIndex.polyt1Unpack(Arrays.copyOfRange(bArr, i11, i10 * 320));
        }
        return polyVecK;
    }

    public static void unpackSecretKey(PolyVecK polyVecK, PolyVecL polyVecL, PolyVecK polyVecK2, byte[] bArr, byte[] bArr2, byte[] bArr3, MLDSAEngine mLDSAEngine) {
        for (int i10 = 0; i10 < mLDSAEngine.getDilithiumL(); i10++) {
            polyVecL.getVectorIndex(i10).polyEtaUnpack(bArr2, mLDSAEngine.getDilithiumPolyEtaPackedBytes() * i10);
        }
        for (int i11 = 0; i11 < mLDSAEngine.getDilithiumK(); i11++) {
            polyVecK2.getVectorIndex(i11).polyEtaUnpack(bArr3, mLDSAEngine.getDilithiumPolyEtaPackedBytes() * i11);
        }
        for (int i12 = 0; i12 < mLDSAEngine.getDilithiumK(); i12++) {
            polyVecK.getVectorIndex(i12).polyt0Unpack(bArr, i12 * 416);
        }
    }

    public static boolean unpackSignature(PolyVecL polyVecL, PolyVecK polyVecK, byte[] bArr, MLDSAEngine mLDSAEngine) {
        int dilithiumCTilde = mLDSAEngine.getDilithiumCTilde();
        int i10 = 0;
        while (i10 < mLDSAEngine.getDilithiumL()) {
            Poly vectorIndex = polyVecL.getVectorIndex(i10);
            int dilithiumPolyZPackedBytes = (mLDSAEngine.getDilithiumPolyZPackedBytes() * i10) + dilithiumCTilde;
            i10++;
            vectorIndex.zUnpack(Arrays.copyOfRange(bArr, dilithiumPolyZPackedBytes, (mLDSAEngine.getDilithiumPolyZPackedBytes() * i10) + dilithiumCTilde));
        }
        int dilithiumL = (mLDSAEngine.getDilithiumL() * mLDSAEngine.getDilithiumPolyZPackedBytes()) + dilithiumCTilde;
        int i11 = 0;
        for (int i12 = 0; i12 < mLDSAEngine.getDilithiumK(); i12++) {
            for (int i13 = 0; i13 < 256; i13++) {
                polyVecK.getVectorIndex(i12).setCoeffIndex(i13, 0);
            }
            if ((bArr[mLDSAEngine.getDilithiumOmega() + dilithiumL + i12] & 255) < i11 || (bArr[mLDSAEngine.getDilithiumOmega() + dilithiumL + i12] & 255) > mLDSAEngine.getDilithiumOmega()) {
                return false;
            }
            for (int i14 = i11; i14 < (bArr[mLDSAEngine.getDilithiumOmega() + dilithiumL + i12] & 255); i14++) {
                if (i14 > i11) {
                    int i15 = dilithiumL + i14;
                    if ((bArr[i15] & 255) <= (bArr[i15 - 1] & 255)) {
                        return false;
                    }
                }
                polyVecK.getVectorIndex(i12).setCoeffIndex(bArr[dilithiumL + i14] & 255, 1);
            }
            i11 = bArr[mLDSAEngine.getDilithiumOmega() + dilithiumL + i12];
        }
        while (i11 < mLDSAEngine.getDilithiumOmega()) {
            if ((bArr[dilithiumL + i11] & 255) != 0) {
                return false;
            }
            i11++;
        }
        return true;
    }
}
