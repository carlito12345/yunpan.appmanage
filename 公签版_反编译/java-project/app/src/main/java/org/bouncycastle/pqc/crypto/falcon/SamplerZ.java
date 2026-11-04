package org.bouncycastle.pqc.crypto.falcon;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;

/* loaded from: classes3.dex */
class SamplerZ {
    private static int BerExp(FalconRNG falconRNG, double d10, double d11) {
        int iPrng_get_u8;
        int i10 = (int) (1.4426950408889634d * d10);
        double d12 = i10;
        Double.isNaN(d12);
        long jFpr_expm_p63 = ((FPREngine.fpr_expm_p63(d10 - (d12 * 0.6931471805599453d), d11) << 1) - 1) >>> (i10 ^ ((i10 ^ 63) & (-((63 - i10) >>> 31))));
        int i11 = 64;
        do {
            i11 -= 8;
            iPrng_get_u8 = (falconRNG.prng_get_u8() & 255) - (((int) (jFpr_expm_p63 >>> i11)) & 255);
            if (iPrng_get_u8 != 0) {
                break;
            }
        } while (i11 > 0);
        return iPrng_get_u8 >>> 31;
    }

    public static int gaussian0_sampler(FalconRNG falconRNG) {
        int[] iArr = {10745844, 3068844, 3741698, 5559083, 1580863, 8248194, 2260429, 13669192, 2736639, 708981, 4421575, 10046180, 169348, 7122675, 4136815, 30538, 13063405, 7650655, 4132, 14505003, 7826148, 417, 16768101, 11363290, 31, 8444042, 8086568, 1, 12844466, 265321, 0, 1232676, 13644283, 0, 38047, 9111839, 0, 870, 6138264, 0, 14, 12545723, 0, 0, 3104126, 0, 0, 28824, 0, 0, CarSettingID.Recv.IGM_OUTPUT_UNDER_VOLT, 0, 0, 1};
        long jPrng_get_u64 = falconRNG.prng_get_u64();
        int iPrng_get_u8 = falconRNG.prng_get_u8() & 255;
        int i10 = ((int) jPrng_get_u64) & NoConst.I24;
        int i11 = 16777215 & ((int) (jPrng_get_u64 >>> 24));
        int i12 = (iPrng_get_u8 << 16) | ((int) (jPrng_get_u64 >>> 48));
        int i13 = 0;
        for (int i14 = 0; i14 < 54; i14 += 3) {
            int i15 = iArr[i14 + 2];
            i13 += ((i12 - iArr[i14]) - (((i11 - iArr[i14 + 1]) - ((i10 - i15) >>> 31)) >>> 31)) >>> 31;
        }
        return i13;
    }

    public static int sample(SamplerCtx samplerCtx, double d10, double d11) {
        return sampler(samplerCtx, d10, d11);
    }

    private static int sampler(SamplerCtx samplerCtx, double d10, double d11) {
        int iPrng_get_u8;
        double d12;
        double d13;
        int iFpr_floor = (int) FPREngine.fpr_floor(d10);
        double d14 = iFpr_floor;
        Double.isNaN(d14);
        double d15 = d10 - d14;
        double d16 = d11 * d11 * 0.5d;
        double d17 = samplerCtx.sigma_min * d11;
        do {
            int iGaussian0_sampler = gaussian0_sampler(samplerCtx.f12304p);
            iPrng_get_u8 = (((r9 << 1) - 1) * iGaussian0_sampler) + (samplerCtx.f12304p.prng_get_u8() & 1);
            double d18 = iPrng_get_u8;
            Double.isNaN(d18);
            d12 = d18 - d15;
            d13 = iGaussian0_sampler * iGaussian0_sampler;
            Double.isNaN(d13);
        } while (BerExp(samplerCtx.f12304p, ((d12 * d12) * d16) - (d13 * 0.15086504887537272d), d17) == 0);
        return iFpr_floor + iPrng_get_u8;
    }
}
