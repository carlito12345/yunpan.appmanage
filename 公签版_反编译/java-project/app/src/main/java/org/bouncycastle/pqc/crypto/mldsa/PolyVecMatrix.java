package org.bouncycastle.pqc.crypto.mldsa;

import g.b;

/* loaded from: classes3.dex */
class PolyVecMatrix {
    private final PolyVecL[] matrix;

    public PolyVecMatrix(MLDSAEngine mLDSAEngine) {
        int dilithiumK = mLDSAEngine.getDilithiumK();
        this.matrix = new PolyVecL[dilithiumK];
        for (int i10 = 0; i10 < dilithiumK; i10++) {
            this.matrix[i10] = new PolyVecL(mLDSAEngine);
        }
    }

    private String addString() {
        String strJ = "[";
        int i10 = 0;
        while (i10 < this.matrix.length) {
            StringBuilder sbM = b.m(strJ + "Outer Matrix " + i10 + " [");
            sbM.append(this.matrix[i10].toString());
            String string = sbM.toString();
            strJ = i10 == this.matrix.length + (-1) ? b.j(string, "]\n") : b.j(string, "],\n");
            i10++;
        }
        return b.j(strJ, "]\n");
    }

    public void expandMatrix(byte[] bArr) {
        int i10 = 0;
        while (true) {
            PolyVecL[] polyVecLArr = this.matrix;
            if (i10 >= polyVecLArr.length) {
                return;
            }
            polyVecLArr[i10].uniformBlocks(bArr, i10 << 8);
            i10++;
        }
    }

    public void pointwiseMontgomery(PolyVecK polyVecK, PolyVecL polyVecL) {
        for (int i10 = 0; i10 < this.matrix.length; i10++) {
            polyVecK.getVectorIndex(i10).pointwiseAccountMontgomery(this.matrix[i10], polyVecL);
        }
    }

    public String toString(String str) {
        return str.concat(": \n" + addString());
    }
}
