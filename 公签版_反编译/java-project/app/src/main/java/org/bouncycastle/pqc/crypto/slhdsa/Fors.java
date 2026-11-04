package org.bouncycastle.pqc.crypto.slhdsa;

import java.math.BigInteger;
import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class Fors {
    SLHDSAEngine engine;

    public Fors(SLHDSAEngine sLHDSAEngine) {
        this.engine = sLHDSAEngine;
    }

    public static int[] base2B(byte[] bArr, int i10, int i11) {
        int[] iArr = new int[i11];
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            while (i13 < i10) {
                bigIntegerAdd = bigIntegerAdd.shiftLeft(8).add(BigInteger.valueOf(bArr[i12] & 255));
                i12++;
                i13 += 8;
            }
            i13 -= i10;
            iArr[i14] = bigIntegerAdd.shiftRight(i13).mod(BigInteger.valueOf(2L).pow(i10)).intValue();
        }
        return iArr;
    }

    public byte[] pkFromSig(SIG_FORS[] sig_forsArr, byte[] bArr, byte[] bArr2, ADRS adrs) {
        int i10 = 2;
        byte[][] bArr3 = new byte[2][];
        SLHDSAEngine sLHDSAEngine = this.engine;
        int i11 = sLHDSAEngine.K;
        byte[][] bArr4 = new byte[i11][];
        int i12 = sLHDSAEngine.T;
        int[] iArrBase2B = base2B(bArr, sLHDSAEngine.A, i11);
        int i13 = 0;
        while (i13 < this.engine.K) {
            int i14 = iArrBase2B[i13];
            byte[] sk = sig_forsArr[i13].getSK();
            adrs.setTreeHeight(0);
            int i15 = (i13 * i12) + i14;
            adrs.setTreeIndex(i15);
            bArr3[0] = this.engine.F(bArr2, adrs, sk);
            byte[][] authPath = sig_forsArr[i13].getAuthPath();
            adrs.setTreeIndex(i15);
            int i16 = 0;
            while (i16 < this.engine.A) {
                int i17 = i16 + 1;
                adrs.setTreeHeight(i17);
                if ((i14 / (1 << i16)) % i10 == 0) {
                    adrs.setTreeIndex(adrs.getTreeIndex() / i10);
                    bArr3[1] = this.engine.H(bArr2, adrs, bArr3[0], authPath[i16]);
                } else {
                    adrs.setTreeIndex((adrs.getTreeIndex() - 1) / 2);
                    bArr3[1] = this.engine.H(bArr2, adrs, authPath[i16], bArr3[0]);
                }
                bArr3[0] = bArr3[1];
                i16 = i17;
                i10 = 2;
            }
            bArr4[i13] = bArr3[0];
            i13++;
            i10 = 2;
        }
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setTypeAndClear(4);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr4));
    }

    public SIG_FORS[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        Fors fors = this;
        ADRS adrs2 = new ADRS(adrs);
        SLHDSAEngine sLHDSAEngine = fors.engine;
        int[] iArrBase2B = base2B(bArr, sLHDSAEngine.A, sLHDSAEngine.K);
        SLHDSAEngine sLHDSAEngine2 = fors.engine;
        SIG_FORS[] sig_forsArr = new SIG_FORS[sLHDSAEngine2.K];
        int i10 = sLHDSAEngine2.T;
        int i11 = 0;
        int i12 = 0;
        while (i12 < fors.engine.K) {
            int i13 = iArrBase2B[i12];
            adrs2.setTypeAndClear(6);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setTreeHeight(i11);
            int i14 = i12 * i10;
            adrs2.setTreeIndex(i14 + i13);
            byte[] bArrPRF = fors.engine.PRF(bArr3, bArr2, adrs2);
            adrs2.changeType(3);
            byte[][] bArr4 = new byte[fors.engine.A][];
            int i15 = 0;
            while (i15 < fors.engine.A) {
                int i16 = 1 << i15;
                int i17 = i15;
                byte[][] bArr5 = bArr4;
                bArr5[i17] = treehash(bArr2, (((i13 / i16) ^ 1) * i16) + i14, i17, bArr3, adrs2);
                i15 = i17 + 1;
                bArrPRF = bArrPRF;
                bArr4 = bArr5;
                fors = this;
            }
            sig_forsArr[i12] = new SIG_FORS(bArrPRF, bArr4);
            i12++;
            i11 = 0;
            fors = this;
        }
        return sig_forsArr;
    }

    public byte[] treehash(byte[] bArr, int i10, int i11, byte[] bArr2, ADRS adrs) {
        if (((i10 >>> i11) << i11) != i10) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        ADRS adrs2 = new ADRS(adrs);
        for (int i12 = 0; i12 < (1 << i11); i12++) {
            adrs2.setTypeAndClear(6);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setTreeHeight(0);
            int i13 = i10 + i12;
            adrs2.setTreeIndex(i13);
            byte[] bArrPRF = this.engine.PRF(bArr2, bArr, adrs2);
            adrs2.changeType(3);
            byte[] bArrF = this.engine.F(bArr2, adrs2, bArrPRF);
            adrs2.setTreeHeight(1);
            int i14 = 1;
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == i14) {
                i13 = (i13 - 1) / 2;
                adrs2.setTreeIndex(i13);
                bArrF = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, bArrF);
                i14++;
                adrs2.setTreeHeight(i14);
            }
            linkedList.add(0, new NodeEntry(bArrF, i14));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }
}
