package org.bouncycastle.pqc.crypto.mldsa;

import d0.f;
import g.b;

/* loaded from: classes3.dex */
class PolyVecL {
    private final Poly[] vec;

    public PolyVecL() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public void addPolyVecL(PolyVecL polyVecL) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).addPoly(polyVecL.getVectorIndex(i10));
        }
    }

    public boolean checkNorm(int i10) {
        for (int i11 = 0; i11 < this.vec.length; i11++) {
            if (getVectorIndex(i11).checkNorm(i10)) {
                return true;
            }
        }
        return false;
    }

    public void copyTo(PolyVecL polyVecL) {
        int i10 = 0;
        while (true) {
            Poly[] polyArr = this.vec;
            if (i10 >= polyArr.length) {
                return;
            }
            polyArr[i10].copyTo(polyVecL.vec[i10]);
            i10++;
        }
    }

    public Poly getVectorIndex(int i10) {
        return this.vec[i10];
    }

    public void invNttToMont() {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).invNttToMont();
        }
    }

    public void pointwisePolyMontgomery(Poly poly, PolyVecL polyVecL) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).pointwiseMontgomery(poly, polyVecL.getVectorIndex(i10));
        }
    }

    public void polyVecNtt() {
        int i10 = 0;
        while (true) {
            Poly[] polyArr = this.vec;
            if (i10 >= polyArr.length) {
                return;
            }
            polyArr[i10].polyNtt();
            i10++;
        }
    }

    public void reduce() {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).reduce();
        }
    }

    public String toString() {
        String strJ = "\n[";
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            strJ = strJ + "Inner Matrix " + i10 + " " + getVectorIndex(i10).toString();
            if (i10 != this.vec.length - 1) {
                strJ = b.j(strJ, ",\n");
            }
        }
        return b.j(strJ, "]");
    }

    public void uniformBlocks(byte[] bArr, int i10) {
        int i11 = 0;
        while (true) {
            Poly[] polyArr = this.vec;
            if (i11 >= polyArr.length) {
                return;
            }
            polyArr[i11].uniformBlocks(bArr, (short) (i10 + i11));
            i11++;
        }
    }

    public void uniformEta(byte[] bArr, short s8) {
        int i10 = 0;
        while (i10 < this.vec.length) {
            getVectorIndex(i10).uniformEta(bArr, s8);
            i10++;
            s8 = (short) (s8 + 1);
        }
    }

    public void uniformGamma1(byte[] bArr, short s8) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).uniformGamma1(bArr, (short) ((this.vec.length * s8) + i10));
        }
    }

    public PolyVecL(MLDSAEngine mLDSAEngine) {
        int dilithiumL = mLDSAEngine.getDilithiumL();
        this.vec = new Poly[dilithiumL];
        for (int i10 = 0; i10 < dilithiumL; i10++) {
            this.vec[i10] = new Poly(mLDSAEngine);
        }
    }

    public String toString(String str) {
        StringBuilder sbB = f.b(str, ": ");
        sbB.append(toString());
        return sbB.toString();
    }
}
