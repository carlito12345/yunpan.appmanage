package org.bouncycastle.pqc.crypto.mldsa;

import d0.f;
import g.b;

/* loaded from: classes3.dex */
class PolyVecK {
    private final Poly[] vec;

    public PolyVecK(MLDSAEngine mLDSAEngine) {
        int dilithiumK = mLDSAEngine.getDilithiumK();
        this.vec = new Poly[dilithiumK];
        for (int i10 = 0; i10 < dilithiumK; i10++) {
            this.vec[i10] = new Poly(mLDSAEngine);
        }
    }

    public void addPolyVecK(PolyVecK polyVecK) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).addPoly(polyVecK.getVectorIndex(i10));
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

    public void conditionalAddQ() {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).conditionalAddQ();
        }
    }

    public void decompose(PolyVecK polyVecK) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).decompose(polyVecK.getVectorIndex(i10));
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

    public int makeHint(PolyVecK polyVecK, PolyVecK polyVecK2) {
        int iPolyMakeHint = 0;
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            iPolyMakeHint += getVectorIndex(i10).polyMakeHint(polyVecK.getVectorIndex(i10), polyVecK2.getVectorIndex(i10));
        }
        return iPolyMakeHint;
    }

    public void packW1(MLDSAEngine mLDSAEngine, byte[] bArr, int i10) {
        for (int i11 = 0; i11 < this.vec.length; i11++) {
            getVectorIndex(i11).packW1(bArr, (mLDSAEngine.getDilithiumPolyW1PackedBytes() * i11) + i10);
        }
    }

    public void pointwisePolyMontgomery(Poly poly, PolyVecK polyVecK) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).pointwiseMontgomery(poly, polyVecK.getVectorIndex(i10));
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

    public void power2Round(PolyVecK polyVecK) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).power2Round(polyVecK.getVectorIndex(i10));
        }
    }

    public void reduce() {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).reduce();
        }
    }

    public void setVectorIndex(int i10, Poly poly) {
        this.vec[i10] = poly;
    }

    public void shiftLeft() {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).shiftLeft();
        }
    }

    public void subtract(PolyVecK polyVecK) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).subtract(polyVecK.getVectorIndex(i10));
        }
    }

    public String toString() {
        String strJ = "[";
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            strJ = strJ + i10 + " " + getVectorIndex(i10).toString();
            if (i10 != this.vec.length - 1) {
                strJ = b.j(strJ, ",\n");
            }
        }
        return b.j(strJ, "]");
    }

    public void uniformEta(byte[] bArr, short s8) {
        int i10 = 0;
        while (true) {
            Poly[] polyArr = this.vec;
            if (i10 >= polyArr.length) {
                return;
            }
            polyArr[i10].uniformEta(bArr, s8);
            i10++;
            s8 = (short) (s8 + 1);
        }
    }

    public void useHint(PolyVecK polyVecK, PolyVecK polyVecK2) {
        for (int i10 = 0; i10 < this.vec.length; i10++) {
            getVectorIndex(i10).polyUseHint(polyVecK.getVectorIndex(i10), polyVecK2.getVectorIndex(i10));
        }
    }

    public String toString(String str) {
        StringBuilder sbB = f.b(str, ": ");
        sbB.append(toString());
        return sbB.toString();
    }
}
