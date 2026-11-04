package org.bouncycastle.pqc.crypto.falcon;

/* loaded from: classes3.dex */
class FalconFFT {
    public static void FFT(double[] dArr, int i10, int i11) {
        int i12 = (1 << i11) >> 1;
        int i13 = 2;
        int i14 = i12;
        int i15 = 1;
        while (i15 < i11) {
            int i16 = i14 >> 1;
            int i17 = i13 >> 1;
            int i18 = 0;
            int i19 = 0;
            while (i18 < i17) {
                int i20 = i19 + i16 + i10;
                int i21 = (i13 + i18) << 1;
                double[] dArr2 = FPREngine.fpr_gm_tab;
                double d10 = dArr2[i21];
                double d11 = dArr2[i21 + 1];
                int i22 = i10 + i19;
                int i23 = i22 + i12;
                int i24 = i22 + i16;
                int i25 = i24 + i12;
                while (i22 < i20) {
                    double d12 = dArr[i22];
                    double d13 = dArr[i23];
                    double d14 = dArr[i24];
                    double d15 = dArr[i25];
                    double d16 = (d14 * d10) - (d15 * d11);
                    double d17 = (d15 * d10) + (d14 * d11);
                    dArr[i22] = d12 + d16;
                    dArr[i23] = d13 + d17;
                    dArr[i24] = d12 - d16;
                    dArr[i25] = d13 - d17;
                    i22++;
                    i23++;
                    i24++;
                    i25++;
                }
                i18++;
                i19 += i14;
            }
            i15++;
            i13 <<= 1;
            i14 = i16;
        }
    }

    public static void iFFT(double[] dArr, int i10, int i11) {
        int i12;
        int i13 = 1 << i11;
        int i14 = i13 >> 1;
        int i15 = i11;
        int i16 = i13;
        int i17 = 1;
        while (true) {
            i12 = 0;
            if (i15 <= 1) {
                break;
            }
            i16 >>= 1;
            int i18 = i17 << 1;
            int i19 = 0;
            while (i12 < i14) {
                int i20 = i12 + i17 + i10;
                int i21 = (i16 + i19) << 1;
                double[] dArr2 = FPREngine.fpr_gm_tab;
                double d10 = dArr2[i21];
                double d11 = -dArr2[i21 + 1];
                int i22 = i10 + i12;
                int i23 = i22 + i14;
                int i24 = i22 + i17;
                int i25 = i24 + i14;
                while (i22 < i20) {
                    double d12 = dArr[i22];
                    double d13 = dArr[i23];
                    double d14 = dArr[i24];
                    double d15 = dArr[i25];
                    dArr[i22] = d12 + d14;
                    dArr[i23] = d13 + d15;
                    double d16 = d12 - d14;
                    double d17 = d13 - d15;
                    dArr[i24] = (d16 * d10) - (d17 * d11);
                    dArr[i25] = (d17 * d10) + (d16 * d11);
                    i22++;
                    i23++;
                    i24++;
                    i25++;
                }
                i19++;
                i12 += i18;
            }
            i15--;
            i17 = i18;
        }
        if (i11 > 0) {
            double d18 = FPREngine.fpr_p2_tab[i11];
            while (i12 < i13) {
                int i26 = i10 + i12;
                dArr[i26] = dArr[i26] * d18;
                i12++;
            }
        }
    }

    public static void poly_LDL_fft(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12, int i13) {
        int i14 = (1 << i13) >> 1;
        int i15 = i14;
        int i16 = i11 + i14;
        int i17 = 0;
        int i18 = i11;
        while (i17 < i14) {
            double d10 = dArr[i10 + i17];
            double d11 = dArr[i10 + i15];
            double d12 = dArr2[i18];
            double d13 = dArr2[i16];
            double d14 = 1.0d / ((d11 * d11) + (d10 * d10));
            double d15 = d10 * d14;
            double d16 = d14 * (-d11);
            double d17 = (d12 * d15) - (d13 * d16);
            double d18 = (d15 * d13) + (d16 * d12);
            double d19 = (d18 * d13) + (d17 * d12);
            double d20 = (d12 * d18) + ((-d13) * d17);
            int i19 = i12 + i17;
            dArr3[i19] = dArr3[i19] - d19;
            int i20 = i12 + i15;
            dArr3[i20] = dArr3[i20] - d20;
            dArr2[i18] = d17;
            dArr2[i16] = -d18;
            i17++;
            i15++;
            i18++;
            i16++;
        }
    }

    public static void poly_add(double[] dArr, int i10, double[] dArr2, int i11, int i12) {
        int i13 = 1 << i12;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            dArr[i15] = dArr[i15] + dArr2[i11 + i14];
        }
    }

    public static void poly_add_muladj_fft(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5, int i10) {
        int i11 = (1 << i10) >> 1;
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 + i11;
            double d10 = dArr2[i12];
            double d11 = dArr2[i13];
            double d12 = dArr3[i12];
            double d13 = dArr3[i13];
            double d14 = dArr4[i12];
            double d15 = dArr4[i13];
            double d16 = dArr5[i12];
            double d17 = dArr5[i13];
            double d18 = (d11 * d15) + (d10 * d14);
            double d19 = (d11 * d14) - (d10 * d15);
            dArr[i12] = d18 + (d13 * d17) + (d12 * d16);
            dArr[i13] = d19 + ((d13 * d16) - (d12 * d17));
        }
    }

    public static void poly_adj_fft(double[] dArr, int i10, int i11) {
        int i12 = 1 << i11;
        for (int i13 = i12 >> 1; i13 < i12; i13++) {
            int i14 = i10 + i13;
            dArr[i14] = -dArr[i14];
        }
    }

    public static void poly_div_autoadj_fft(double[] dArr, int i10, double[] dArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            double d10 = 1.0d / dArr2[i11 + i14];
            int i15 = i10 + i14;
            dArr[i15] = dArr[i15] * d10;
            int i16 = i15 + i13;
            dArr[i16] = dArr[i16] * d10;
        }
    }

    public static void poly_invnorm2_fft(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12, int i13) {
        int i14 = (1 << i13) >> 1;
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = i11 + i15;
            double d10 = dArr2[i16];
            double d11 = dArr2[i16 + i14];
            int i17 = i12 + i15;
            double d12 = dArr3[i17];
            double d13 = dArr3[i17 + i14];
            double d14 = d12 * d12;
            double d15 = d13 * d13;
            dArr[i10 + i15] = 1.0d / (d15 + (d14 + ((d11 * d11) + (d10 * d10))));
        }
    }

    public static void poly_merge_fft(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12, int i13) {
        int i14 = 1 << i13;
        int i15 = i14 >> 1;
        int i16 = i14 >> 2;
        dArr[i10] = dArr2[i11];
        dArr[i10 + i15] = dArr3[i12];
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = i12 + i17;
            double d10 = dArr3[i18];
            double d11 = dArr3[i18 + i16];
            int i19 = (i17 + i15) << 1;
            double[] dArr4 = FPREngine.fpr_gm_tab;
            double d12 = dArr4[i19];
            double d13 = dArr4[i19 + 1];
            double d14 = (d10 * d12) - (d11 * d13);
            double d15 = (d11 * d12) + (d10 * d13);
            int i20 = i11 + i17;
            double d16 = dArr2[i20];
            double d17 = dArr2[i20 + i16];
            int i21 = i10 + (i17 << 1);
            dArr[i21] = d16 + d14;
            int i22 = i21 + 1;
            dArr[i21 + i15] = d17 + d15;
            dArr[i22] = d16 - d14;
            dArr[i22 + i15] = d17 - d15;
        }
    }

    public static void poly_mul_autoadj_fft(double[] dArr, int i10, double[] dArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            int i16 = i11 + i14;
            dArr[i15] = dArr[i15] * dArr2[i16];
            int i17 = i15 + i13;
            dArr[i17] = dArr[i17] * dArr2[i16];
        }
    }

    public static void poly_mul_fft(double[] dArr, int i10, double[] dArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        int i14 = i11;
        int i15 = i10 + i13;
        int i16 = 0;
        int i17 = i10;
        while (i16 < i13) {
            double d10 = dArr[i17];
            double d11 = dArr[i15];
            double d12 = dArr2[i14];
            double d13 = dArr2[i14 + i13];
            dArr[i17] = (d10 * d12) - (d11 * d13);
            dArr[i15] = (d11 * d12) + (d10 * d13);
            i16++;
            i17++;
            i14++;
            i15++;
        }
    }

    public static void poly_muladj_fft(double[] dArr, int i10, double[] dArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        int i14 = i10;
        int i15 = 0;
        while (i15 < i13) {
            double d10 = dArr[i14];
            int i16 = i14 + i13;
            double d11 = dArr[i16];
            int i17 = i11 + i15;
            double d12 = dArr2[i17];
            double d13 = dArr2[i17 + i13];
            dArr[i14] = (d11 * d13) + (d10 * d12);
            dArr[i16] = (d11 * d12) - (d10 * d13);
            i15++;
            i14++;
        }
    }

    public static void poly_mulconst(double[] dArr, int i10, double d10, int i11) {
        int i12 = 1 << i11;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i10 + i13;
            dArr[i14] = dArr[i14] * d10;
        }
    }

    public static void poly_mulselfadj_fft(double[] dArr, int i10, int i11) {
        int i12 = (1 << i11) >> 1;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i10 + i13;
            double d10 = dArr[i14];
            int i15 = i14 + i12;
            double d11 = dArr[i15];
            dArr[i14] = (d11 * d11) + (d10 * d10);
            dArr[i15] = 0.0d;
        }
    }

    public static void poly_neg(double[] dArr, int i10, int i11) {
        int i12 = 1 << i11;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i10 + i13;
            dArr[i14] = -dArr[i14];
        }
    }

    public static void poly_split_fft(double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12, int i13) {
        int i14 = 1 << i13;
        int i15 = i14 >> 1;
        int i16 = i14 >> 2;
        dArr[i10] = dArr3[i12];
        dArr2[i11] = dArr3[i12 + i15];
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = i12 + (i17 << 1);
            double d10 = dArr3[i18];
            int i19 = i18 + 1;
            double d11 = dArr3[i18 + i15];
            double d12 = dArr3[i19];
            double d13 = dArr3[i19 + i15];
            int i20 = i10 + i17;
            dArr[i20] = (d10 + d12) * 0.5d;
            dArr[i20 + i16] = (d11 + d13) * 0.5d;
            double d14 = d10 - d12;
            double d15 = d11 - d13;
            int i21 = (i17 + i15) << 1;
            double[] dArr4 = FPREngine.fpr_gm_tab;
            double d16 = dArr4[i21];
            double d17 = -dArr4[i21 + 1];
            int i22 = i11 + i17;
            dArr2[i22] = ((d14 * d16) - (d15 * d17)) * 0.5d;
            dArr2[i22 + i16] = ((d15 * d16) + (d14 * d17)) * 0.5d;
        }
    }

    public static void poly_sub(double[] dArr, int i10, double[] dArr2, int i11, int i12) {
        int i13 = 1 << i12;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            dArr[i15] = dArr[i15] - dArr2[i11 + i14];
        }
    }
}
