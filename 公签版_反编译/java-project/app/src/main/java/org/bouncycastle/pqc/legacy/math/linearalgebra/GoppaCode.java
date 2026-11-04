package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public final class GoppaCode {

    public static class MaMaPe {

        /* renamed from: h, reason: collision with root package name */
        private GF2Matrix f12493h;

        /* renamed from: p, reason: collision with root package name */
        private Permutation f12494p;

        /* renamed from: s, reason: collision with root package name */
        private GF2Matrix f12495s;

        public MaMaPe(GF2Matrix gF2Matrix, GF2Matrix gF2Matrix2, Permutation permutation) {
            this.f12495s = gF2Matrix;
            this.f12493h = gF2Matrix2;
            this.f12494p = permutation;
        }

        public GF2Matrix getFirstMatrix() {
            return this.f12495s;
        }

        public Permutation getPermutation() {
            return this.f12494p;
        }

        public GF2Matrix getSecondMatrix() {
            return this.f12493h;
        }
    }

    public static class MatrixSet {

        /* renamed from: g, reason: collision with root package name */
        private GF2Matrix f12496g;
        private int[] setJ;

        public MatrixSet(GF2Matrix gF2Matrix, int[] iArr) {
            this.f12496g = gF2Matrix;
            this.setJ = iArr;
        }

        public GF2Matrix getG() {
            return this.f12496g;
        }

        public int[] getSetJ() {
            return this.setJ;
        }
    }

    private GoppaCode() {
    }

    public static MaMaPe computeSystematicForm(GF2Matrix gF2Matrix, SecureRandom secureRandom) {
        GF2Matrix gF2Matrix2;
        boolean z;
        int numColumns = gF2Matrix.getNumColumns();
        GF2Matrix gF2Matrix3 = null;
        while (true) {
            Permutation permutation = new Permutation(numColumns, secureRandom);
            GF2Matrix gF2Matrix4 = (GF2Matrix) gF2Matrix.rightMultiply(permutation);
            GF2Matrix leftSubMatrix = gF2Matrix4.getLeftSubMatrix();
            try {
                gF2Matrix2 = (GF2Matrix) leftSubMatrix.computeInverse();
                z = true;
            } catch (ArithmeticException unused) {
                gF2Matrix2 = gF2Matrix3;
                z = false;
            }
            if (z) {
                return new MaMaPe(leftSubMatrix, ((GF2Matrix) gF2Matrix2.rightMultiply(gF2Matrix4)).getRightSubMatrix(), permutation);
            }
            gF2Matrix3 = gF2Matrix2;
        }
    }

    public static GF2Matrix createCanonicalCheckMatrix(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int degree = gF2mField.getDegree();
        int i10 = 1 << degree;
        int degree2 = polynomialGF2mSmallM.getDegree();
        Class cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, degree2, i10);
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, degree2, i10);
        for (int i11 = 0; i11 < i10; i11++) {
            iArr2[0][i11] = gF2mField.inverse(polynomialGF2mSmallM.evaluateAt(i11));
        }
        for (int i12 = 1; i12 < degree2; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                iArr2[i12][i13] = gF2mField.mult(iArr2[i12 - 1][i13], i13);
            }
        }
        for (int i14 = 0; i14 < degree2; i14++) {
            for (int i15 = 0; i15 < i10; i15++) {
                for (int i16 = 0; i16 <= i14; i16++) {
                    int[] iArr3 = iArr[i14];
                    iArr3[i15] = gF2mField.add(iArr3[i15], gF2mField.mult(iArr2[i16][i15], polynomialGF2mSmallM.getCoefficient((degree2 + i16) - i14)));
                }
            }
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, degree2 * degree, (i10 + 31) >>> 5);
        for (int i17 = 0; i17 < i10; i17++) {
            int i18 = i17 >>> 5;
            int i19 = 1 << (i17 & 31);
            for (int i20 = 0; i20 < degree2; i20++) {
                int i21 = iArr[i20][i17];
                for (int i22 = 0; i22 < degree; i22++) {
                    if (((i21 >>> i22) & 1) != 0) {
                        int[] iArr5 = iArr4[(((i20 + 1) * degree) - i22) - 1];
                        iArr5[i18] = iArr5[i18] ^ i19;
                    }
                }
            }
        }
        return new GF2Matrix(i10, iArr4);
    }

    public static GF2Vector syndromeDecode(GF2Vector gF2Vector, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int degree = 1 << gF2mField.getDegree();
        GF2Vector gF2Vector2 = new GF2Vector(degree);
        if (!gF2Vector.isZero()) {
            PolynomialGF2mSmallM[] polynomialGF2mSmallMArrModPolynomialToFracton = new PolynomialGF2mSmallM(gF2Vector.toExtensionFieldVector(gF2mField)).modInverse(polynomialGF2mSmallM).addMonomial(1).modSquareRootMatrix(polynomialGF2mSmallMArr).modPolynomialToFracton(polynomialGF2mSmallM);
            PolynomialGF2mSmallM polynomialGF2mSmallM2 = polynomialGF2mSmallMArrModPolynomialToFracton[0];
            PolynomialGF2mSmallM polynomialGF2mSmallMMultiply = polynomialGF2mSmallM2.multiply(polynomialGF2mSmallM2);
            PolynomialGF2mSmallM polynomialGF2mSmallM3 = polynomialGF2mSmallMArrModPolynomialToFracton[1];
            PolynomialGF2mSmallM polynomialGF2mSmallMAdd = polynomialGF2mSmallMMultiply.add(polynomialGF2mSmallM3.multiply(polynomialGF2mSmallM3).multWithMonomial(1));
            PolynomialGF2mSmallM polynomialGF2mSmallMMultWithElement = polynomialGF2mSmallMAdd.multWithElement(gF2mField.inverse(polynomialGF2mSmallMAdd.getHeadCoefficient()));
            for (int i10 = 0; i10 < degree; i10++) {
                if (polynomialGF2mSmallMMultWithElement.evaluateAt(i10) == 0) {
                    gF2Vector2.setBit(i10);
                }
            }
        }
        return gF2Vector2;
    }
}
