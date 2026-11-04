package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes3.dex */
class FalconSign {
    public int do_sign_dyn(SamplerCtx samplerCtx, short[] sArr, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, short[] sArr2, int i10, double[] dArr, int i11) {
        int i12 = 1 << i10;
        int i13 = i11 + i12;
        int i14 = i13 + i12;
        int i15 = i14 + i12;
        smallints_to_fpr(dArr, i13, bArr, i10);
        smallints_to_fpr(dArr, i11, bArr2, i10);
        smallints_to_fpr(dArr, i15, bArr3, i10);
        smallints_to_fpr(dArr, i14, bArr4, i10);
        FalconFFT.FFT(dArr, i13, i10);
        FalconFFT.FFT(dArr, i11, i10);
        FalconFFT.FFT(dArr, i15, i10);
        FalconFFT.FFT(dArr, i14, i10);
        FalconFFT.poly_neg(dArr, i13, i10);
        FalconFFT.poly_neg(dArr, i15, i10);
        int i16 = i15 + i12;
        int i17 = i16 + i12;
        System.arraycopy(dArr, i13, dArr, i16, i12);
        FalconFFT.poly_mulselfadj_fft(dArr, i16, i10);
        System.arraycopy(dArr, i11, dArr, i17, i12);
        FalconFFT.poly_muladj_fft(dArr, i17, dArr, i14, i10);
        FalconFFT.poly_mulselfadj_fft(dArr, i11, i10);
        FalconFFT.poly_add(dArr, i11, dArr, i16, i10);
        System.arraycopy(dArr, i13, dArr, i16, i12);
        FalconFFT.poly_muladj_fft(dArr, i13, dArr, i15, i10);
        FalconFFT.poly_add(dArr, i13, dArr, i17, i10);
        FalconFFT.poly_mulselfadj_fft(dArr, i14, i10);
        System.arraycopy(dArr, i15, dArr, i17, i12);
        FalconFFT.poly_mulselfadj_fft(dArr, i17, i10);
        FalconFFT.poly_add(dArr, i14, dArr, i17, i10);
        int i18 = i17 + i12;
        int i19 = 0;
        while (i19 < i12) {
            dArr[i17 + i19] = sArr2[i19];
            i19++;
            i14 = i14;
            i13 = i13;
        }
        int i20 = i14;
        int i21 = i13;
        FalconFFT.FFT(dArr, i17, i10);
        System.arraycopy(dArr, i17, dArr, i18, i12);
        FalconFFT.poly_mul_fft(dArr, i18, dArr, i16, i10);
        FalconFFT.poly_mulconst(dArr, i18, -8.137358613394092E-5d, i10);
        FalconFFT.poly_mul_fft(dArr, i17, dArr, i15, i10);
        FalconFFT.poly_mulconst(dArr, i17, 8.137358613394092E-5d, i10);
        int i22 = i12 * 2;
        System.arraycopy(dArr, i17, dArr, i15, i22);
        ffSampling_fft_dyntree(samplerCtx, dArr, i15, dArr, i16, dArr, i11, dArr, i21, dArr, i20, i10, i10, dArr, i17);
        System.arraycopy(dArr, i15, dArr, i16, i22);
        smallints_to_fpr(dArr, i21, bArr, i10);
        smallints_to_fpr(dArr, i11, bArr2, i10);
        smallints_to_fpr(dArr, i15, bArr3, i10);
        smallints_to_fpr(dArr, i20, bArr4, i10);
        FalconFFT.FFT(dArr, i21, i10);
        FalconFFT.FFT(dArr, i11, i10);
        FalconFFT.FFT(dArr, i15, i10);
        FalconFFT.FFT(dArr, i20, i10);
        FalconFFT.poly_neg(dArr, i21, i10);
        FalconFFT.poly_neg(dArr, i15, i10);
        int i23 = i18 + i12;
        System.arraycopy(dArr, i16, dArr, i18, i12);
        System.arraycopy(dArr, i17, dArr, i23, i12);
        FalconFFT.poly_mul_fft(dArr, i18, dArr, i11, i10);
        FalconFFT.poly_mul_fft(dArr, i23, dArr, i20, i10);
        FalconFFT.poly_add(dArr, i18, dArr, i23, i10);
        System.arraycopy(dArr, i16, dArr, i23, i12);
        FalconFFT.poly_mul_fft(dArr, i23, dArr, i21, i10);
        System.arraycopy(dArr, i18, dArr, i16, i12);
        FalconFFT.poly_mul_fft(dArr, i17, dArr, i15, i10);
        FalconFFT.poly_add(dArr, i17, dArr, i23, i10);
        FalconFFT.iFFT(dArr, i16, i10);
        FalconFFT.iFFT(dArr, i17, i10);
        int i24 = 0;
        int i25 = 0;
        for (int i26 = 0; i26 < i12; i26++) {
            int iFpr_rint = (sArr2[i26] & HPKE.aead_EXPORT_ONLY) - ((int) FPREngine.fpr_rint(dArr[i16 + i26]));
            i24 += iFpr_rint * iFpr_rint;
            i25 |= i24;
        }
        int i27 = (-(i25 >>> 31)) | i24;
        short[] sArr3 = new short[i12];
        for (int i28 = 0; i28 < i12; i28++) {
            sArr3[i28] = (short) (-FPREngine.fpr_rint(dArr[i17 + i28]));
        }
        if (FalconCommon.is_short_half(i27, sArr3, i10) == 0) {
            return 0;
        }
        System.arraycopy(sArr3, 0, sArr, 0, i12);
        return 1;
    }

    public void ffSampling_fft_dyntree(SamplerCtx samplerCtx, double[] dArr, int i10, double[] dArr2, int i11, double[] dArr3, int i12, double[] dArr4, int i13, double[] dArr5, int i14, int i15, int i16, double[] dArr6, int i17) {
        if (i16 == 0) {
            double dSqrt = Math.sqrt(dArr3[i12]) * FPREngine.fpr_inv_sigma[i15];
            dArr[i10] = SamplerZ.sample(samplerCtx, dArr[i10], dSqrt);
            dArr2[i11] = SamplerZ.sample(samplerCtx, dArr2[i11], dSqrt);
            return;
        }
        int i18 = 1 << i16;
        int i19 = i18 >> 1;
        FalconFFT.poly_LDL_fft(dArr3, i12, dArr4, i13, dArr5, i14, i16);
        int i20 = i17 + i19;
        FalconFFT.poly_split_fft(dArr6, i17, dArr6, i20, dArr3, i12, i16);
        System.arraycopy(dArr6, i17, dArr3, i12, i18);
        FalconFFT.poly_split_fft(dArr6, i17, dArr6, i20, dArr5, i14, i16);
        System.arraycopy(dArr6, i17, dArr5, i14, i18);
        System.arraycopy(dArr4, i13, dArr6, i17, i18);
        System.arraycopy(dArr3, i12, dArr4, i13, i19);
        int i21 = i13 + i19;
        System.arraycopy(dArr5, i14, dArr4, i21, i19);
        int i22 = i17 + i18;
        int i23 = i22 + i19;
        FalconFFT.poly_split_fft(dArr6, i22, dArr6, i23, dArr2, i11, i16);
        int i24 = i16 - 1;
        ffSampling_fft_dyntree(samplerCtx, dArr6, i22, dArr6, i23, dArr5, i14, dArr5, i14 + i19, dArr4, i21, i15, i24, dArr6, i22 + i18);
        int i25 = i17 + (i18 << 1);
        FalconFFT.poly_merge_fft(dArr6, i25, dArr6, i22, dArr6, i23, i16);
        System.arraycopy(dArr2, i11, dArr6, i22, i18);
        FalconFFT.poly_sub(dArr6, i22, dArr6, i25, i16);
        System.arraycopy(dArr6, i25, dArr2, i11, i18);
        FalconFFT.poly_mul_fft(dArr6, i17, dArr6, i22, i16);
        FalconFFT.poly_add(dArr, i10, dArr6, i17, i16);
        FalconFFT.poly_split_fft(dArr6, i17, dArr6, i20, dArr, i10, i16);
        ffSampling_fft_dyntree(samplerCtx, dArr6, i17, dArr6, i20, dArr3, i12, dArr3, i12 + i19, dArr4, i13, i15, i24, dArr6, i22);
        FalconFFT.poly_merge_fft(dArr, i10, dArr6, i17, dArr6, i20, i16);
    }

    public void sign_dyn(short[] sArr, SHAKEDigest sHAKEDigest, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, short[] sArr2, int i10, double[] dArr) {
        SamplerCtx samplerCtx;
        do {
            samplerCtx = new SamplerCtx();
            samplerCtx.sigma_min = FPREngine.fpr_sigma_min[i10];
            samplerCtx.f12304p.prng_init(sHAKEDigest);
        } while (do_sign_dyn(samplerCtx, sArr, bArr, bArr2, bArr3, bArr4, sArr2, i10, dArr, 0) == 0);
    }

    public void smallints_to_fpr(double[] dArr, int i10, byte[] bArr, int i11) {
        int i12 = 1 << i11;
        for (int i13 = 0; i13 < i12; i13++) {
            dArr[i10 + i13] = bArr[i13];
        }
    }
}
