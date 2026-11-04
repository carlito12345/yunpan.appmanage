package org.bouncycastle.pqc.crypto.slhdsa;

import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class HT {
    SLHDSAEngine engine;
    final byte[] htPubKey;
    private final byte[] pkSeed;
    private final byte[] skSeed;
    WotsPlus wots;

    public HT(SLHDSAEngine sLHDSAEngine, byte[] bArr, byte[] bArr2) {
        this.skSeed = bArr;
        this.pkSeed = bArr2;
        this.engine = sLHDSAEngine;
        this.wots = new WotsPlus(sLHDSAEngine);
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(sLHDSAEngine.D - 1);
        adrs.setTreeAddress(0L);
        if (bArr != null) {
            this.htPubKey = xmss_PKgen(bArr, bArr2, adrs);
        } else {
            this.htPubKey = null;
        }
    }

    public byte[] sign(byte[] bArr, long j10, int i10) {
        long j11 = j10;
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j11);
        SIG_XMSS sig_xmssXmss_sign = xmss_sign(bArr, this.skSeed, i10, this.pkSeed, adrs);
        int i11 = this.engine.D;
        SIG_XMSS[] sig_xmssArr = new SIG_XMSS[i11];
        sig_xmssArr[0] = sig_xmssXmss_sign;
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j11);
        byte[] bArrXmss_pkFromSig = xmss_pkFromSig(i10, sig_xmssXmss_sign, bArr, this.pkSeed, adrs);
        int i12 = 1;
        while (true) {
            SLHDSAEngine sLHDSAEngine = this.engine;
            if (i12 >= sLHDSAEngine.D) {
                break;
            }
            int i13 = (int) (((1 << r0) - 1) & j11);
            j11 >>>= sLHDSAEngine.H_PRIME;
            adrs.setLayerAddress(i12);
            adrs.setTreeAddress(j11);
            SIG_XMSS sig_xmssXmss_sign2 = xmss_sign(bArrXmss_pkFromSig, this.skSeed, i13, this.pkSeed, adrs);
            sig_xmssArr[i12] = sig_xmssXmss_sign2;
            if (i12 < this.engine.D - 1) {
                bArrXmss_pkFromSig = xmss_pkFromSig(i13, sig_xmssXmss_sign2, bArrXmss_pkFromSig, this.pkSeed, adrs);
            }
            i12++;
        }
        byte[][] bArr2 = new byte[i11][];
        for (int i14 = 0; i14 != i11; i14++) {
            SIG_XMSS sig_xmss = sig_xmssArr[i14];
            bArr2[i14] = Arrays.concatenate(sig_xmss.sig, Arrays.concatenate(sig_xmss.auth));
        }
        return Arrays.concatenate(bArr2);
    }

    public byte[] treehash(byte[] bArr, int i10, int i11, byte[] bArr2, ADRS adrs) {
        if (((i10 >>> i11) << i11) != i10) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        ADRS adrs2 = new ADRS(adrs);
        for (int i12 = 0; i12 < (1 << i11); i12++) {
            adrs2.setTypeAndClear(0);
            int i13 = i10 + i12;
            adrs2.setKeyPairAddress(i13);
            byte[] bArrPkGen = this.wots.pkGen(bArr, bArr2, adrs2);
            adrs2.setTypeAndClear(2);
            adrs2.setTreeHeight(1);
            adrs2.setTreeIndex(i13);
            int i14 = 1;
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == i14) {
                i13 = (i13 - 1) / 2;
                adrs2.setTreeIndex(i13);
                bArrPkGen = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, bArrPkGen);
                i14++;
                adrs2.setTreeHeight(i14);
            }
            linkedList.add(0, new NodeEntry(bArrPkGen, i14));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }

    public boolean verify(byte[] bArr, SIG_XMSS[] sig_xmssArr, byte[] bArr2, long j10, int i10, byte[] bArr3) {
        ADRS adrs = new ADRS();
        SIG_XMSS sig_xmss = sig_xmssArr[0];
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j10);
        byte[] bArrXmss_pkFromSig = xmss_pkFromSig(i10, sig_xmss, bArr, bArr2, adrs);
        int i11 = 1;
        while (true) {
            SLHDSAEngine sLHDSAEngine = this.engine;
            if (i11 >= sLHDSAEngine.D) {
                return Arrays.areEqual(bArr3, bArrXmss_pkFromSig);
            }
            int i12 = (int) (((1 << r0) - 1) & j10);
            j10 >>>= sLHDSAEngine.H_PRIME;
            SIG_XMSS sig_xmss2 = sig_xmssArr[i11];
            adrs.setLayerAddress(i11);
            adrs.setTreeAddress(j10);
            bArrXmss_pkFromSig = xmss_pkFromSig(i12, sig_xmss2, bArrXmss_pkFromSig, bArr2, adrs);
            i11++;
        }
    }

    public byte[] xmss_PKgen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        return treehash(bArr, 0, this.engine.H_PRIME, bArr2, adrs);
    }

    public byte[] xmss_pkFromSig(int i10, SIG_XMSS sig_xmss, byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        int i11 = 0;
        adrs2.setTypeAndClear(0);
        adrs2.setKeyPairAddress(i10);
        byte[] wOTSSig = sig_xmss.getWOTSSig();
        byte[][] xmssauth = sig_xmss.getXMSSAUTH();
        byte[] bArrPkFromSig = this.wots.pkFromSig(wOTSSig, bArr, bArr2, adrs2);
        adrs2.setTypeAndClear(2);
        adrs2.setTreeIndex(i10);
        while (i11 < this.engine.H_PRIME) {
            int i12 = i11 + 1;
            adrs2.setTreeHeight(i12);
            if ((i10 / (1 << i11)) % 2 == 0) {
                adrs2.setTreeIndex(adrs2.getTreeIndex() / 2);
                bArrPkFromSig = this.engine.H(bArr2, adrs2, bArrPkFromSig, xmssauth[i11]);
            } else {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                bArrPkFromSig = this.engine.H(bArr2, adrs2, xmssauth[i11], bArrPkFromSig);
            }
            i11 = i12;
        }
        return bArrPkFromSig;
    }

    public SIG_XMSS xmss_sign(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, ADRS adrs) {
        byte[][] bArr4 = new byte[this.engine.H_PRIME][];
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setTypeAndClear(2);
        adrs2.setLayerAddress(adrs.getLayerAddress());
        adrs2.setTreeAddress(adrs.getTreeAddress());
        for (int i11 = 0; i11 < this.engine.H_PRIME; i11++) {
            bArr4[i11] = treehash(bArr2, ((i10 >>> i11) ^ 1) << i11, i11, bArr3, adrs2);
        }
        ADRS adrs3 = new ADRS(adrs);
        adrs3.setTypeAndClear(0);
        adrs3.setKeyPairAddress(i10);
        return new SIG_XMSS(this.wots.sign(bArr, bArr2, bArr3, adrs3), bArr4);
    }
}
