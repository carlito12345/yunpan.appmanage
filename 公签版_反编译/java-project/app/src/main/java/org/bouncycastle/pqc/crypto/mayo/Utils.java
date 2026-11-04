package org.bouncycastle.pqc.crypto.mayo;

import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.CTRModeCipher;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class Utils {
    public static void expandP1P2(MayoParameters mayoParameters, long[] jArr, byte[] bArr) {
        int p2Bytes = mayoParameters.getP2Bytes() + mayoParameters.getP1Bytes();
        byte[] bArr2 = new byte[p2Bytes];
        CTRModeCipher cTRModeCipherNewInstance = SICBlockCipher.newInstance(AESEngine.newInstance());
        cTRModeCipherNewInstance.init(true, new ParametersWithIV(new KeyParameter(Arrays.copyOf(bArr, mayoParameters.getPkSeedBytes())), new byte[16]));
        int blockSize = cTRModeCipherNewInstance.getBlockSize();
        byte[] bArr3 = new byte[blockSize];
        byte[] bArr4 = new byte[blockSize];
        int i10 = 0;
        while (true) {
            int i11 = i10 + blockSize;
            if (i11 > p2Bytes) {
                break;
            }
            cTRModeCipherNewInstance.processBlock(bArr3, 0, bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, i10, blockSize);
            i10 = i11;
        }
        if (i10 < p2Bytes) {
            cTRModeCipherNewInstance.processBlock(bArr3, 0, bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, i10, p2Bytes - i10);
        }
        unpackMVecs(bArr2, 0, jArr, 0, (mayoParameters.getP2Limbs() + mayoParameters.getP1Limbs()) / mayoParameters.getMVecLimbs(), mayoParameters.getM());
    }

    public static void packMVecs(long[] jArr, byte[] bArr, int i10, int i11, int i12) {
        int i13 = (i12 + 15) >> 4;
        int i14 = i12 >> 1;
        int i15 = (8 - (i13 << 3)) + i14;
        int i16 = 0;
        int i17 = 0;
        while (i16 < i11) {
            int i18 = 0;
            while (i18 < i13 - 1) {
                Pack.longToLittleEndian(jArr[i17 + i18], bArr, (i18 << 3) + i10);
                i18++;
            }
            Pack.longToLittleEndian(jArr[i17 + i18], bArr, (i18 << 3) + i10, i15);
            i16++;
            i10 += i14;
            i17 += i13;
        }
    }

    public static void unpackMVecs(byte[] bArr, int i10, long[] jArr, int i11, int i12, int i13) {
        int i14 = (i13 + 15) >> 4;
        int i15 = i13 >> 1;
        int i16 = (8 - (i14 << 3)) + i15;
        int i17 = i12 - 1;
        int i18 = (i17 * i14) + i11;
        int i19 = (i17 * i15) + i10;
        while (i17 >= 0) {
            int i20 = 0;
            while (i20 < i14 - 1) {
                jArr[i18 + i20] = Pack.littleEndianToLong(bArr, (i20 << 3) + i19);
                i20++;
            }
            jArr[i18 + i20] = Pack.littleEndianToLong(bArr, (i20 << 3) + i19, i16);
            i17--;
            i18 -= i14;
            i19 -= i15;
        }
    }
}
