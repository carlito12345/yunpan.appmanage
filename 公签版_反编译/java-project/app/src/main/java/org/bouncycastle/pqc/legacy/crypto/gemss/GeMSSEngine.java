package org.bouncycastle.pqc.legacy.crypto.gemss;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import da.b;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.pqc.legacy.crypto.gemss.Mul_GF2x;
import org.bouncycastle.pqc.legacy.crypto.gemss.Rem_GF2n;
import org.bouncycastle.pqc.legacy.crypto.gemss.SecretKeyHFE;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class GeMSSEngine {
    final int ACCESS_last_equations8;
    Pointer Buffer_NB_WORD_GFqn;
    Pointer Buffer_NB_WORD_MUL;
    final boolean ENABLED_REMOVE_ODD_DEGREE;
    final int HFEDELTA;
    final int HFEDeg;
    final int HFEDegI;
    final int HFEDegJ;
    final int HFENr8;
    final int HFENr8c;
    int HFE_odd_degree;
    final int HFEm;
    final int HFEmq;
    final int HFEmq8;
    final int HFEmr;
    final int HFEmr8;
    final int HFEn;
    int HFEn1h_rightmost;
    int HFEn_1rightmost;
    final int HFEnq;
    final int HFEnr;
    final int HFEnv;
    final int HFEnvq;
    final int HFEnvr;
    final int HFEnvr8;
    final int HFEv;
    final int HFEvq;
    final int HFEvr;
    int II;
    int KP;
    int KX;
    final int LOST_BITS;
    int LTRIANGULAR_NV_SIZE;
    final int LTRIANGULAR_N_SIZE;
    final long MASK_GF2m;
    final long MASK_GF2n;
    final int MATRIXn_SIZE;
    final int MATRIXnv_SIZE;
    final int MLv_GFqn_SIZE;
    int MQv_GFqn_SIZE;
    final int NB_BYTES_EQUATION;
    final int NB_BYTES_GFqm;
    final int NB_BYTES_GFqn;
    final int NB_BYTES_GFqnv;
    int NB_COEFS_HFEPOLY;
    final int NB_ITE;
    int NB_MONOMIAL_PK;
    int NB_MONOMIAL_VINEGAR;
    int NB_UINT_HFEVPOLY;
    int NB_WORD_GF2m;
    int NB_WORD_GF2nv;
    final int NB_WORD_GF2nvm;
    int NB_WORD_GFqn;
    final int NB_WORD_GFqv;
    int NB_WORD_MMUL;
    final int NB_WORD_MUL;
    final int NB_WORD_UNCOMP_EQ;
    int POW_II;
    final int SIZE_DIGEST;
    final int SIZE_DIGEST_UINT;
    final int SIZE_ROW;
    final int SIZE_SEED_SK;
    final int SIZE_SIGN_UNCOMPRESSED;
    final int Sha3BitStrength;
    final int ShakeBitStrength;
    final int VAL_BITS_M;
    private int buffer;
    Mul_GF2x mul;
    private SecureRandom random;
    Rem_GF2n rem;
    SHA3Digest sha3Digest;
    final int NB_BITS_UINT = 64;
    final int LEN_UNROLLED_64 = 4;

    /* renamed from: org.bouncycastle.pqc.legacy.crypto.gemss.GeMSSEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams;

        static {
            int[] iArr = new int[FunctionParams.values().length];
            $SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams = iArr;
            try {
                iArr[FunctionParams.N.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.NV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.V.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[FunctionParams.M.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum FunctionParams {
        NV,
        V,
        N,
        M
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0407 A[LOOP:0: B:170:0x0401->B:172:0x0407, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0417 A[LOOP:1: B:174:0x040f->B:176:0x0417, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x040c A[EDGE_INSN: B:179:0x040c->B:173:0x040c BREAK  A[LOOP:0: B:170:0x0401->B:172:0x0407], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x041a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GeMSSEngine(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        Mul_GF2x mul6;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        Rem_GF2n rem192_specialized_trinomial_gf2x;
        int i25;
        int i26;
        int i27;
        int i28;
        this.HFEn = i11;
        this.HFEv = i12;
        this.HFEDELTA = i13;
        this.NB_ITE = i14;
        this.HFEDeg = i15;
        this.HFEDegI = i16;
        this.HFEDegJ = i17;
        this.NB_BYTES_GFqn = (i11 >>> 3) + ((i11 & 7) != 0 ? 1 : 0);
        int i29 = i16 + 1;
        this.SIZE_ROW = i29;
        int i30 = i11 + i12;
        this.HFEnv = i30;
        int i31 = i11 >>> 6;
        this.HFEnq = i31;
        int i32 = i11 & 63;
        this.HFEnr = i32;
        int i33 = i30 >>> 6;
        this.HFEnvq = i33;
        int i34 = i30 & 63;
        this.HFEnvr = i34;
        this.SIZE_SEED_SK = i10 >>> 3;
        int i35 = i11 - 1;
        int i36 = ((i35 << 1) >>> 6) + 1;
        this.NB_WORD_MUL = i36;
        if (i36 == 6) {
            mul6 = new Mul_GF2x.Mul6();
        } else if (i36 == 9) {
            mul6 = new Mul_GF2x.Mul9();
        } else if (i36 == 17) {
            mul6 = new Mul_GF2x.Mul17();
        } else if (i36 != 12) {
            if (i36 == 13) {
                mul6 = new Mul_GF2x.Mul13();
            }
            int i37 = 64 - i32;
            int i38 = i11 - i13;
            this.HFEm = i38;
            int i39 = i38 >>> 6;
            this.HFEmq = i39;
            int i40 = i38 & 63;
            this.HFEmr = i40;
            int i41 = i12 >>> 6;
            this.HFEvq = i41;
            int i42 = i12 & 63;
            this.HFEvr = i42;
            this.NB_WORD_GFqv = i42 != 0 ? i41 + 1 : i41;
            int i43 = i38 >>> 3;
            this.HFEmq8 = i43;
            int i44 = i38 & 7;
            this.HFEmr8 = i44;
            this.NB_BYTES_GFqm = (i44 == 0 ? 1 : 0) + i43;
            this.NB_WORD_UNCOMP_EQ = ((i33 + 1) * i34) + ((((i33 + 1) * i33) >>> 1) * 64);
            int i45 = i30 & 7;
            this.HFEnvr8 = i45;
            this.NB_BYTES_GFqnv = (i30 >>> 3) + (i45 == 0 ? 1 : 0);
            this.VAL_BITS_M = Math.min(i13 + i12, 8 - i44);
            this.MASK_GF2m = GeMSSUtils.maskUINT(i40);
            long jMaskUINT = GeMSSUtils.maskUINT(i32);
            this.MASK_GF2n = jMaskUINT;
            int i46 = (i32 == 0 ? 1 : 0) + i31;
            this.NB_WORD_GFqn = i46;
            this.LTRIANGULAR_N_SIZE = (i46 * i32) + ((((i31 + 1) * i31) >>> 1) * 64);
            this.MATRIXn_SIZE = i11 * i46;
            int i47 = (i34 == 0 ? 1 : 0) + i33;
            this.NB_WORD_GF2nv = i47;
            this.MATRIXnv_SIZE = i30 * i47;
            this.LTRIANGULAR_NV_SIZE = (i34 * i47) + ((((i33 + 1) * i33) >>> 1) * 64);
            int i48 = i12 + 1;
            int i49 = ((i12 * i48) >>> 1) + 1;
            this.NB_MONOMIAL_VINEGAR = i49;
            int i50 = ((i30 + 1) * i30) >>> 1;
            int i51 = i50 + 1;
            this.NB_MONOMIAL_PK = i51;
            this.MQv_GFqn_SIZE = i49 * i46;
            this.ACCESS_last_equations8 = i43 * i51;
            this.NB_BYTES_EQUATION = (i50 + 8) >>> 3;
            int i52 = i51 & 7;
            this.HFENr8 = i52;
            int i53 = (8 - i52) & 7;
            this.HFENr8c = i53;
            this.LOST_BITS = (i44 - 1) * i53;
            this.NB_WORD_MMUL = i36;
            if (i11 != 174) {
                i18 = 0;
                i19 = 13;
            } else if (i11 == 175) {
                i18 = 0;
                i19 = 16;
            } else if (i11 == 177) {
                i18 = 0;
                i19 = 8;
            } else if (i11 == 178) {
                i18 = 0;
                i19 = 31;
            } else if (i11 == 265) {
                i18 = 0;
                i19 = 42;
            } else if (i11 == 266) {
                i18 = 0;
                i19 = 47;
            } else if (i11 == 268) {
                i18 = 0;
                i19 = 25;
            } else if (i11 == 354) {
                i18 = 0;
                i19 = 99;
            } else if (i11 == 358) {
                i18 = 0;
                i19 = 57;
            } else if (i11 == 364) {
                i18 = 0;
                i19 = 9;
            } else if (i11 == 366) {
                i18 = 0;
                i19 = 29;
            } else if (i11 != 402) {
                if (i11 == 537) {
                    i18 = 1;
                    i19 = 10;
                    i20 = 2;
                } else if (i11 == 544) {
                    i18 = 1;
                    i19 = 128;
                    i20 = 3;
                } else if (i11 == 270) {
                    i18 = 0;
                    i19 = 53;
                } else {
                    if (i11 != 271) {
                        throw new IllegalArgumentException(b.a(i11, "error: need to add support for HFEn="));
                    }
                    i18 = 0;
                    i19 = 58;
                }
                if (i20 != 0) {
                    i21 = 64 - i18;
                    i22 = 64 - i20;
                } else {
                    i21 = 0;
                    i22 = 0;
                }
                int i54 = 64 - (i19 & 63);
                i23 = i15 & 1;
                if (i23 == 0) {
                    this.ENABLED_REMOVE_ODD_DEGREE = true;
                    int i55 = (1 << i16) + 1;
                    this.HFE_odd_degree = i55;
                    if (i23 != 0) {
                        throw new IllegalArgumentException("HFEDeg is odd, so to remove the leading term would decrease the degree.");
                    }
                    if (i55 > i15) {
                        throw new IllegalArgumentException("It is useless to remove 0 term.");
                    }
                    if (i55 <= 1) {
                        throw new IllegalArgumentException("The case where the term X^3 is removing is not implemented.");
                    }
                    this.NB_COEFS_HFEPOLY = i17 + 2 + (((i16 - 1) * i16) >>> 1) + i16;
                } else {
                    this.ENABLED_REMOVE_ODD_DEGREE = false;
                    this.NB_COEFS_HFEPOLY = i17 + 2 + ((i16 * i29) >>> 1);
                }
                int i56 = i39 + (i40 != 0 ? 1 : 0);
                this.NB_WORD_GF2m = i56;
                int i57 = (i47 - i56) + (i40 != 0 ? 1 : 0);
                this.NB_WORD_GF2nvm = i57;
                this.SIZE_SIGN_UNCOMPRESSED = ((i14 - 1) * i57) + i47;
                if (i10 <= 128) {
                    this.SIZE_DIGEST = 32;
                    this.SIZE_DIGEST_UINT = 4;
                    this.ShakeBitStrength = 128;
                    this.Sha3BitStrength = 256;
                } else {
                    if (i10 <= 192) {
                        this.SIZE_DIGEST = 48;
                        this.SIZE_DIGEST_UINT = 6;
                        this.ShakeBitStrength = 256;
                        i24 = 384;
                    } else {
                        this.SIZE_DIGEST = 64;
                        this.SIZE_DIGEST_UINT = 8;
                        this.ShakeBitStrength = 256;
                        i24 = 512;
                    }
                    this.Sha3BitStrength = i24;
                }
                this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
                int i58 = (i12 * i29) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
                int i59 = this.NB_WORD_GFqn;
                this.NB_UINT_HFEVPOLY = i58 * i59;
                this.MLv_GFqn_SIZE = i48 * i59;
                if (i15 <= 34 || (i11 > 196 && i15 < 256)) {
                    this.II = i15 != 17 ? 4 : 6;
                    int i60 = this.II;
                    int i61 = 1 << i60;
                    this.POW_II = i61;
                    int i62 = (i15 >>> i60) + (i15 % i61 == 0 ? 1 : 0);
                    this.KP = i62;
                    this.KX = i15 - i62;
                }
                if (i20 != 0) {
                    this.rem = (i11 == 544 && i19 == 128) ? new Rem_GF2n.REM544_PENTANOMIAL_K3_IS_128_GF2X(i18, i20, i32, i37, i21, i22, jMaskUINT) : new Rem_GF2n.REM544_PENTANOMIAL_GF2X(i18, i20, i19, i32, i37, i21, i22, i54, jMaskUINT);
                } else {
                    if (i11 > 256 && i11 < 289 && i19 > 32 && i19 < 64) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    } else if (i11 == 354) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    } else if (i11 == 358) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    } else if (i11 == 402) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    } else if (i36 == 6) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    } else if (i36 == 9) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    } else if (i36 == 12) {
                        rem192_specialized_trinomial_gf2x = new Rem_GF2n.REM384_TRINOMIAL_GF2X(i19, i32, i37, i54, jMaskUINT);
                    }
                    this.rem = rem192_specialized_trinomial_gf2x;
                }
                this.Buffer_NB_WORD_MUL = new Pointer(i36);
                this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
                i25 = 31;
                this.HFEn_1rightmost = 31;
                while (true) {
                    i26 = this.HFEn_1rightmost;
                    if ((i35 >>> i26) != 0) {
                        break;
                    } else {
                        this.HFEn_1rightmost = i26 - 1;
                    }
                }
                i27 = (i11 + 1) >>> 1;
                while (true) {
                    this.HFEn1h_rightmost = i25;
                    i28 = this.HFEn1h_rightmost;
                    if ((i27 >>> i28) != 0) {
                        this.HFEn1h_rightmost = i28 - 1;
                        return;
                    }
                    i25 = i28 - 1;
                }
            } else {
                i18 = 0;
                i19 = CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST;
            }
            i20 = 0;
            if (i20 != 0) {
            }
            int i542 = 64 - (i19 & 63);
            i23 = i15 & 1;
            if (i23 == 0) {
            }
            int i562 = i39 + (i40 != 0 ? 1 : 0);
            this.NB_WORD_GF2m = i562;
            int i572 = (i47 - i562) + (i40 != 0 ? 1 : 0);
            this.NB_WORD_GF2nvm = i572;
            this.SIZE_SIGN_UNCOMPRESSED = ((i14 - 1) * i572) + i47;
            if (i10 <= 128) {
            }
            this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
            int i582 = (i12 * i29) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
            int i592 = this.NB_WORD_GFqn;
            this.NB_UINT_HFEVPOLY = i582 * i592;
            this.MLv_GFqn_SIZE = i48 * i592;
            if (i15 <= 34) {
                this.II = i15 != 17 ? 4 : 6;
                int i602 = this.II;
                int i612 = 1 << i602;
                this.POW_II = i612;
                int i622 = (i15 >>> i602) + (i15 % i612 == 0 ? 1 : 0);
                this.KP = i622;
                this.KX = i15 - i622;
            }
            if (i20 != 0) {
            }
            this.Buffer_NB_WORD_MUL = new Pointer(i36);
            this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
            i25 = 31;
            this.HFEn_1rightmost = 31;
            while (true) {
                i26 = this.HFEn_1rightmost;
                if ((i35 >>> i26) != 0) {
                }
                this.HFEn_1rightmost = i26 - 1;
            }
            i27 = (i11 + 1) >>> 1;
            while (true) {
                this.HFEn1h_rightmost = i25;
                i28 = this.HFEn1h_rightmost;
                if ((i27 >>> i28) != 0) {
                }
                i25 = i28 - 1;
            }
        } else {
            mul6 = new Mul_GF2x.Mul12();
        }
        this.mul = mul6;
        int i372 = 64 - i32;
        int i382 = i11 - i13;
        this.HFEm = i382;
        int i392 = i382 >>> 6;
        this.HFEmq = i392;
        int i402 = i382 & 63;
        this.HFEmr = i402;
        int i412 = i12 >>> 6;
        this.HFEvq = i412;
        int i422 = i12 & 63;
        this.HFEvr = i422;
        this.NB_WORD_GFqv = i422 != 0 ? i412 + 1 : i412;
        int i432 = i382 >>> 3;
        this.HFEmq8 = i432;
        int i442 = i382 & 7;
        this.HFEmr8 = i442;
        this.NB_BYTES_GFqm = (i442 == 0 ? 1 : 0) + i432;
        this.NB_WORD_UNCOMP_EQ = ((i33 + 1) * i34) + ((((i33 + 1) * i33) >>> 1) * 64);
        int i452 = i30 & 7;
        this.HFEnvr8 = i452;
        this.NB_BYTES_GFqnv = (i30 >>> 3) + (i452 == 0 ? 1 : 0);
        this.VAL_BITS_M = Math.min(i13 + i12, 8 - i442);
        this.MASK_GF2m = GeMSSUtils.maskUINT(i402);
        long jMaskUINT2 = GeMSSUtils.maskUINT(i32);
        this.MASK_GF2n = jMaskUINT2;
        int i462 = (i32 == 0 ? 1 : 0) + i31;
        this.NB_WORD_GFqn = i462;
        this.LTRIANGULAR_N_SIZE = (i462 * i32) + ((((i31 + 1) * i31) >>> 1) * 64);
        this.MATRIXn_SIZE = i11 * i462;
        int i472 = (i34 == 0 ? 1 : 0) + i33;
        this.NB_WORD_GF2nv = i472;
        this.MATRIXnv_SIZE = i30 * i472;
        this.LTRIANGULAR_NV_SIZE = (i34 * i472) + ((((i33 + 1) * i33) >>> 1) * 64);
        int i482 = i12 + 1;
        int i492 = ((i12 * i482) >>> 1) + 1;
        this.NB_MONOMIAL_VINEGAR = i492;
        int i502 = ((i30 + 1) * i30) >>> 1;
        int i512 = i502 + 1;
        this.NB_MONOMIAL_PK = i512;
        this.MQv_GFqn_SIZE = i492 * i462;
        this.ACCESS_last_equations8 = i432 * i512;
        this.NB_BYTES_EQUATION = (i502 + 8) >>> 3;
        int i522 = i512 & 7;
        this.HFENr8 = i522;
        int i532 = (8 - i522) & 7;
        this.HFENr8c = i532;
        this.LOST_BITS = (i442 - 1) * i532;
        this.NB_WORD_MMUL = i36;
        if (i11 != 174) {
        }
        i20 = 0;
        if (i20 != 0) {
        }
        int i5422 = 64 - (i19 & 63);
        i23 = i15 & 1;
        if (i23 == 0) {
        }
        int i5622 = i392 + (i402 != 0 ? 1 : 0);
        this.NB_WORD_GF2m = i5622;
        int i5722 = (i472 - i5622) + (i402 != 0 ? 1 : 0);
        this.NB_WORD_GF2nvm = i5722;
        this.SIZE_SIGN_UNCOMPRESSED = ((i14 - 1) * i5722) + i472;
        if (i10 <= 128) {
        }
        this.sha3Digest = new SHA3Digest(this.Sha3BitStrength);
        int i5822 = (i12 * i29) + (this.NB_MONOMIAL_VINEGAR - 1) + this.NB_COEFS_HFEPOLY;
        int i5922 = this.NB_WORD_GFqn;
        this.NB_UINT_HFEVPOLY = i5822 * i5922;
        this.MLv_GFqn_SIZE = i482 * i5922;
        if (i15 <= 34) {
        }
        if (i20 != 0) {
        }
        this.Buffer_NB_WORD_MUL = new Pointer(i36);
        this.Buffer_NB_WORD_GFqn = new Pointer(this.NB_WORD_GFqn);
        i25 = 31;
        this.HFEn_1rightmost = 31;
        while (true) {
            i26 = this.HFEn_1rightmost;
            if ((i35 >>> i26) != 0) {
            }
            this.HFEn_1rightmost = i26 - 1;
        }
        i27 = (i11 + 1) >>> 1;
        while (true) {
            this.HFEn1h_rightmost = i25;
            i28 = this.HFEn1h_rightmost;
            if ((i27 >>> i28) != 0) {
            }
            i25 = i28 - 1;
        }
    }

    private void CMP_AND_SWAP_CST_TIME(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        long jCMP_LT_UINT = 0;
        long jORBITS_UINT = 0;
        long j10 = 0;
        for (int i10 = this.NB_WORD_GFqn - 1; i10 > 0; i10--) {
            jORBITS_UINT |= GeMSSUtils.ORBITS_UINT(pointer2.get(i10) ^ pointer.get(i10));
            j10 += jORBITS_UINT;
        }
        int i11 = 0;
        while (true) {
            int i12 = this.NB_WORD_GFqn;
            if (i11 >= i12) {
                pointer3.setRangeFromXorAndMask_xor(pointer, pointer2, -jCMP_LT_UINT, i12);
                return;
            } else {
                jCMP_LT_UINT |= (-GeMSSUtils.NORBITS_UINT(i11 ^ j10)) & GeMSSUtils.CMP_LT_UINT(pointer2.get(i11), pointer.get(i11));
                i11++;
            }
        }
    }

    private void LOOPIR(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10, int i11, int i12, int i13, boolean z) {
        for (int i14 = 0; i14 < i10; i14++) {
            Pointer pointer4 = new Pointer(pointer3);
            int i15 = 1;
            while (i15 <= i11) {
                LOOPJR(pointer, pointer2, pointer4, 64, i13, i15);
                i15++;
            }
            if (z) {
                LOOPJR(pointer, pointer2, pointer4, i12, i13, i15);
            }
            pointer2.move(i13);
        }
    }

    private void LOOPIR_INIT(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, int i10, int i11) {
        while (i10 < i11) {
            pointer.setRangeClear(0, this.NB_WORD_GFqn);
            pointer2.changeIndex(pointer3);
            LOOPK_COMPLETE(pointer, pointer4, pointer2, 0, this.HFEnvq);
            pointer4.move(this.NB_WORD_GF2nv);
            i10++;
        }
    }

    private void LOOPIR_LOOPK_COMPLETE(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10, int i11) {
        while (i10 < i11) {
            LOOPK_COMPLETE(pointer, pointer2, pointer3, 0, this.HFEnvq);
            i10++;
        }
    }

    private void LOOPJR(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10, int i11, int i12) {
        int iMin = Math.min(i11, i12);
        pointer.set(0L);
        for (int i13 = 0; i13 < i10; i13++) {
            pointer.setXor(GeMSSUtils.XORBITS_UINT(pointer2.getDotProduct(0, pointer3, 0, iMin)) << i13);
            pointer3.move(i12);
        }
        pointer.moveIncremental();
    }

    private long LOOPJR_NOCST_64(Pointer pointer, PointerUnion pointerUnion, int i10, int i11, long j10, int i12, int i13) {
        while (i10 < i11) {
            if ((1 & j10) != 0) {
                pointer.setXorRange(0, pointerUnion, 0, i13);
            }
            pointerUnion.moveNextBytes(i12);
            j10 >>>= 1;
            i10++;
        }
        return j10;
    }

    private void LOOPJR_UNROLLED_64(Pointer pointer, PointerUnion pointerUnion, int i10, int i11, long j10, int i12, int i13) {
        int i14 = i10;
        long jLOOPJR_NOCST_64 = j10;
        while (i14 < i11 - 3) {
            jLOOPJR_NOCST_64 = LOOPJR_NOCST_64(pointer, pointerUnion, 0, 4, jLOOPJR_NOCST_64, i12, i13);
            i14 += 4;
        }
        LOOPJR_NOCST_64(pointer, pointerUnion, i14, i11, jLOOPJR_NOCST_64, i12, i13);
    }

    private void LOOPKR(Pointer pointer, Pointer pointer2, long j10, int i10, int i11) {
        while (i10 < i11) {
            pointer2.setXorRangeAndMaskMove(pointer, this.NB_WORD_GFqn, -(1 & j10));
            j10 >>>= 1;
            i10++;
        }
    }

    private void LOOPK_COMPLETE(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10, int i11) {
        while (i10 < i11) {
            LOOPKR(pointer3, pointer, pointer2.get(i10), 0, 64);
            i10++;
        }
        if (this.HFEnvr != 0) {
            LOOPKR(pointer3, pointer, pointer2.get(i11), 0, this.HFEnvr);
        }
        pointer.move(this.NB_WORD_GFqn);
    }

    private int chooseRootHFE_gf2nx(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.SIZE_DIGEST_UINT);
        Pointer pointer4 = new Pointer(((this.HFEDeg << 1) - 1) * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer((this.HFEDeg + 1) * this.NB_WORD_GFqn);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqn);
        pointer6.setRangeFromXor(complete_sparse_monic_gf2nxVar.poly, pointer2, this.NB_WORD_GFqn);
        int i10 = this.HFEDeg;
        if (i10 <= 34 || (this.HFEn > 196 && i10 < 256)) {
            frobeniusMap_multisqr_HFE_gf2nx(pointer4, complete_sparse_monic_gf2nxVar, pointer6);
        } else {
            int i11 = 2 << this.HFEDegI;
            pointer4.set(this.NB_WORD_GFqn * i11, 1L);
            divsqr_r_HFE_cstdeg_gf2nx(pointer4, i11, i11, this.HFEDeg, complete_sparse_monic_gf2nxVar, pointer6);
            for_sqr_divsqr(pointer4, this.HFEDegI + 1, this.HFEn, complete_sparse_monic_gf2nxVar, pointer6);
        }
        pointer4.setXor(this.NB_WORD_GFqn, 1L);
        int index = pointer5.getIndex();
        pointer5.copyFrom(complete_sparse_monic_gf2nxVar.poly, this.NB_WORD_GFqn);
        for_copy_move(pointer5, complete_sparse_monic_gf2nxVar);
        pointer5.changeIndex(index);
        pointer5.set(this.HFEDeg * this.NB_WORD_GFqn, 1L);
        pointer5.setXorRange(pointer2, this.NB_WORD_GFqn);
        int iGcd_gf2nx = gcd_gf2nx(pointer5, this.HFEDeg, pointer4, pointer4.getD_for_not0_or_plus(this.NB_WORD_GFqn, this.HFEDeg - 1));
        if (this.buffer != 0) {
            pointer4.swap(pointer5);
        }
        if (pointer4.is0_gf2n(0, this.NB_WORD_GFqn) == 0) {
            return 0;
        }
        convMonic_gf2nx(pointer5, iGcd_gf2nx);
        Pointer pointer7 = new Pointer(this.NB_WORD_GFqn * iGcd_gf2nx);
        findRootsSplit_gf2nx(pointer7, pointer5, iGcd_gf2nx);
        if (iGcd_gf2nx == 1) {
            pointer.copyFrom(pointer7, this.NB_WORD_GFqn);
        } else {
            fast_sort_gf2n(pointer7, iGcd_gf2nx);
            getSHA3Hash(pointer3, 0, this.Sha3BitStrength >>> 3, pointer2.toBytes(this.NB_BYTES_GFqn), 0, this.NB_BYTES_GFqn, new byte[this.Sha3BitStrength >>> 3]);
            int iRemainderUnsigned = (int) remainderUnsigned(pointer3.get(), iGcd_gf2nx);
            int i12 = this.NB_WORD_GFqn;
            pointer.copyFrom(0, pointer7, iRemainderUnsigned * i12, i12);
        }
        return iGcd_gf2nx;
    }

    private void choose_LOOPJR(Pointer pointer, PointerUnion pointerUnion, int i10, long j10, int i11, int i12) {
        int i13 = this.HFEnvr;
        if (i13 < 8) {
            LOOPJR_NOCST_64(pointer, pointerUnion, i10, i13, j10, i11, i12);
        } else {
            LOOPJR_UNROLLED_64(pointer, pointerUnion, i10, i13, j10, i11, i12);
        }
    }

    private long convMQ_last_uncompressL_gf2(Pointer pointer, PointerUnion pointerUnion) {
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int i10 = this.HFEnv - 1;
        int i11 = i10 >>> 6;
        int i12 = i10 & 63;
        int iFor_setpk2_end_move_plus = for_setpk2_end_move_plus(pointer, pointerUnion2, i11);
        if (i12 != 0) {
            iFor_setpk2_end_move_plus = setPk2Value(pointer, pointerUnion2, iFor_setpk2_end_move_plus, i11, i12 + 1);
        }
        int i13 = this.HFEnv;
        int i14 = this.LOST_BITS;
        int i15 = i13 - i14;
        int i16 = i15 >>> 6;
        int i17 = i15 & 63;
        if (i17 != 0) {
            int i18 = iFor_setpk2_end_move_plus & 63;
            if (i18 != 0) {
                int i19 = this.NB_MONOMIAL_PK;
                if (((((i19 - i14) + 7) >>> 3) & 7) != 0) {
                    int i20 = (i13 - ((64 - (((i19 - i14) - this.HFEnvr) & 63)) & 63)) >>> 6;
                    pointer.setRangePointerUnion_Check(pointerUnion2, i20, iFor_setpk2_end_move_plus);
                    pointer.set(i20, pointerUnion2.getWithCheck(i20) >>> i18);
                    if (i20 < i16) {
                        int i21 = i20 + 1;
                        long withCheck = pointerUnion2.getWithCheck(i21);
                        pointer.setXor(i20, withCheck << (64 - i18));
                        pointer.set(i21, withCheck >>> i18);
                    } else if (i17 + i18 > 64) {
                        pointer.setXor(i20, pointerUnion2.getWithCheck(i20 + 1) << (64 - i18));
                    }
                } else {
                    pointer.setRangePointerUnion(pointerUnion2, i16, i18);
                    pointer.set(i16, pointerUnion2.get(i16) >>> i18);
                    if (i17 + i18 > 64) {
                        pointer.setXor(i16, pointerUnion2.get(i16 + 1) << (64 - i18));
                    }
                }
            } else if (((((this.NB_MONOMIAL_PK - i14) + 7) >>> 3) & 7) != 0) {
                pointer.setRangePointerUnion(pointerUnion2, i16);
                pointer.set(i16, pointerUnion2.getWithCheck(i16));
            } else {
                i16++;
                pointer.setRangePointerUnion(pointerUnion2, i16);
            }
        } else if (i16 != 0) {
            int i22 = iFor_setpk2_end_move_plus & 63;
            if (i22 == 0) {
                pointer.setRangePointerUnion(pointerUnion2, i16);
            } else if (((((this.NB_MONOMIAL_PK - i14) + 7) >>> 3) & 7) != 0) {
                int i23 = i16 - 1;
                pointer.setRangePointerUnion(pointerUnion2, i23, i22);
                pointer.set(i23, pointerUnion2.get(i23) >>> i22);
                pointer.setXor(i23, pointerUnion2.getWithCheck(i16) << (64 - i22));
            } else {
                pointer.setRangePointerUnion(pointerUnion2, i16, i22);
            }
        }
        return pointerUnion.get() & 1;
    }

    private long convMQ_uncompressL_gf2(Pointer pointer, PointerUnion pointerUnion) {
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int iFor_setpk2_end_move_plus = for_setpk2_end_move_plus(pointer, pointerUnion2, this.HFEnvq);
        int i10 = this.HFEnvr;
        if (i10 != 0) {
            setPk2Value(pointer, pointerUnion2, iFor_setpk2_end_move_plus, this.HFEnvq, i10 + 1);
        }
        return pointerUnion.get() & 1;
    }

    private void convMonic_gf2nx(Pointer pointer, int i10) {
        Pointer pointer2 = new Pointer(this.NB_WORD_GFqn);
        int index = pointer.getIndex();
        pointer.move(this.NB_WORD_GFqn * i10);
        inv_gf2n(pointer2, pointer, 0);
        pointer.set1_gf2n(0, this.NB_WORD_GFqn);
        while (true) {
            i10--;
            if (i10 == -1) {
                pointer.changeIndex(index);
                return;
            } else {
                pointer.move(-this.NB_WORD_GFqn);
                mul_gf2n(pointer, pointer, pointer2);
            }
        }
    }

    private void copy_for_casct(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, Pointer pointer5, int i10, int i11) {
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        while (i10 > 1) {
            pointer4.changeIndex(pointer3, (i11 + i10) * this.NB_WORD_GFqn);
            CMP_AND_SWAP_CST_TIME(pointer, pointer4, pointer5);
            i10 >>>= 1;
        }
    }

    private void copy_move_matrix_move(Pointer pointer, Pointer pointer2, int i10) {
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer2.move(this.NB_WORD_GFqn);
        pointer.setXorMatrix(pointer2, this.NB_WORD_GFqn, i10);
        pointer2.move((this.HFEv + 1) * this.NB_WORD_GFqn);
    }

    private void div_q_monic_gf2nx(Pointer pointer, int i10, Pointer pointer2, int i11) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer();
        while (i10 >= i11) {
            int iSearchDegree = pointer.searchDegree(i10, i11, this.NB_WORD_GFqn);
            if (iSearchDegree < i11) {
                return;
            }
            pointer3.changeIndex(pointer, this.NB_WORD_GFqn * iSearchDegree);
            int iMax = Math.max(0, (i11 << 1) - iSearchDegree);
            pointer4.changeIndex(pointer, ((iSearchDegree - i11) + iMax) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer4, pointer3, pointer2, iMax, i11);
            i10 = iSearchDegree - 1;
        }
    }

    private void div_r_monic_cst_gf2nx(Pointer pointer, int i10, Pointer pointer2, int i11) {
        Pointer pointer3 = new Pointer();
        int index = pointer.getIndex();
        pointer.move(this.NB_WORD_GFqn * i10);
        while (i10 >= i11) {
            pointer3.changeIndex(pointer, (-i11) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer3, pointer, pointer2, 0, i11);
            pointer.move(-this.NB_WORD_GFqn);
            i10--;
        }
        pointer.changeIndex(index);
    }

    private int div_r_monic_gf2nx(Pointer pointer, int i10, Pointer pointer2, int i11) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer();
        while (i10 >= i11) {
            i10 = pointer.searchDegree(i10, i11, this.NB_WORD_GFqn);
            if (i10 < i11) {
                break;
            }
            pointer3.changeIndex(pointer, this.NB_WORD_GFqn * i10);
            pointer4.changeIndex(pointer3, (-i11) * this.NB_WORD_GFqn);
            for_mul_rem_xor_move(pointer4, pointer3, pointer2, 0, i11);
            i10--;
        }
        if (i10 == -1) {
            i10++;
        }
        return pointer.searchDegree(i10, 1, this.NB_WORD_GFqn);
    }

    private void divsqr_r_HFE_cstdeg_gf2nx(Pointer pointer, int i10, int i11, int i12, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer(pointer, i10 * this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer();
        while (i11 >= i12) {
            pointer4.changeIndex(pointer3, (-this.HFEDeg) * this.NB_WORD_GFqn);
            mul_rem_xorrange(pointer4, pointer3, pointer2);
            for (int i13 = 1; i13 < this.NB_COEFS_HFEPOLY; i13++) {
                pointer4.move(complete_sparse_monic_gf2nxVar.L[i13]);
                mul_rem_xorrange(pointer4, pointer3, complete_sparse_monic_gf2nxVar.poly, this.NB_WORD_GFqn * i13);
            }
            pointer3.move(-this.NB_WORD_GFqn);
            i11--;
        }
    }

    private void dotProduct_gf2n(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10) {
        Pointer pointer4 = new Pointer(this.NB_WORD_MUL);
        int index = pointer2.getIndex();
        int index2 = pointer3.getIndex();
        mul_move(pointer4, pointer2, pointer3);
        for_mul_xorrange_move(pointer4, pointer2, pointer3, i10 - 1);
        rem_gf2n(pointer, 0, pointer4);
        pointer2.changeIndex(index);
        pointer3.changeIndex(index2);
    }

    private void dotproduct_move_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10) {
        dotProduct_gf2n(pointer, pointer3, pointer2, i10);
        pointer.move(this.NB_WORD_GFqn);
        pointer2.move((i10 + this.HFEv + 1) * this.NB_WORD_GFqn);
    }

    private void evalMQShybrid8_uncomp_nocst_gf2_m(Pointer pointer, Pointer pointer2, PointerUnion pointerUnion, PointerUnion pointerUnion2) {
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion2);
        evalMQSnocst8_quo_gf2(pointer, pointer2, pointerUnion);
        if (this.HFEmr < 8) {
            pointer.set(this.HFEmq, 0L);
        }
        for (int i10 = this.HFEmr - this.HFEmr8; i10 < this.HFEmr; i10++) {
            pointer.setXor(this.HFEmq, evalMQnocst_unrolled_no_simd_gf2(pointer2, pointerUnion3) << i10);
            pointerUnion3.move(this.NB_WORD_UNCOMP_EQ);
        }
    }

    private void evalMQSnocst8_quo_gf2(Pointer pointer, Pointer pointer2, PointerUnion pointerUnion) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        PointerUnion pointerUnion2;
        int i16;
        int i17 = this.HFEnv;
        int i18 = this.HFEm;
        if ((i18 >>> 3) != 0) {
            i18 = (i18 >>> 3) << 3;
        }
        int i19 = i18;
        int i20 = (i19 & 7) != 0 ? (i19 >>> 3) + 1 : i19 >>> 3;
        int i21 = (i20 >>> 3) + ((i20 & 7) != 0 ? 1 : 0);
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion);
        System.arraycopy(pointerUnion3.getArray(), 0, pointer.getArray(), pointer.getIndex(), i21);
        pointerUnion3.moveNextBytes(i20);
        int i22 = 0;
        while (true) {
            i10 = this.HFEnvq;
            if (i22 >= i10) {
                break;
            }
            int i23 = i17;
            long j10 = pointer2.get(i22);
            int i24 = 0;
            while (i24 < 64) {
                if ((j10 & 1) != 0) {
                    pointer.setXorRange(0, pointerUnion3, 0, i21);
                    pointerUnion3.moveNextBytes(i20);
                    i13 = i22;
                    i14 = i24;
                    PointerUnion pointerUnion4 = pointerUnion3;
                    i15 = i21;
                    LOOPJR_UNROLLED_64(pointer, pointerUnion3, i24 + 1, 64, j10 >>> 1, i20, i21);
                    int i25 = i13 + 1;
                    while (true) {
                        i16 = this.HFEnvq;
                        if (i25 >= i16) {
                            break;
                        }
                        LOOPJR_UNROLLED_64(pointer, pointerUnion4, 0, 64, pointer2.get(i25), i20, i15);
                        i25++;
                    }
                    if (this.HFEnvr != 0) {
                        choose_LOOPJR(pointer, pointerUnion4, 0, pointer2.get(i16), i20, i15);
                    }
                    pointerUnion2 = pointerUnion4;
                } else {
                    i13 = i22;
                    i14 = i24;
                    i15 = i21;
                    pointerUnion2 = pointerUnion3;
                    pointerUnion2.moveNextBytes(i23 * i20);
                }
                j10 >>>= 1;
                i24 = i14 + 1;
                i23--;
                pointerUnion3 = pointerUnion2;
                i21 = i15;
                i22 = i13;
            }
            i22++;
            i17 = i23;
            i21 = i21;
        }
        int i26 = i21;
        PointerUnion pointerUnion5 = pointerUnion3;
        if (this.HFEnvr != 0) {
            int i27 = i17;
            long j11 = pointer2.get(i10);
            int i28 = 0;
            while (i28 < this.HFEnvr) {
                if ((j11 & 1) != 0) {
                    int i29 = i26;
                    pointer.setXorRange(0, pointerUnion5, 0, i29);
                    pointerUnion5.moveNextBytes(i20);
                    i11 = i29;
                    i12 = i28;
                    choose_LOOPJR(pointer, pointerUnion5, i28 + 1, j11 >>> 1, i20, i11);
                } else {
                    i11 = i26;
                    i12 = i28;
                    pointerUnion5.moveNextBytes(i27 * i20);
                }
                j11 >>>= 1;
                i28 = i12 + 1;
                i27--;
                i26 = i11;
            }
        }
        int i30 = i26;
        int i31 = i19 & 63;
        if (i31 != 0) {
            pointer.setAnd(i30 - 1, (1 << i31) - 1);
        }
    }

    private long evalMQnocst_unrolled_no_simd_gf2(Pointer pointer, PointerUnion pointerUnion) {
        int i10;
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        long j10 = pointer.get();
        long dotProduct = 0;
        for (int i11 = 0; i11 < 64; i11++) {
            if ((1 & (j10 >>> i11)) != 0) {
                dotProduct ^= pointerUnion2.get(i11) & j10;
            }
        }
        pointerUnion2.move(64);
        int i12 = 1;
        while (true) {
            int i13 = this.NB_WORD_GF2nv;
            if (i12 >= i13) {
                return GeMSSUtils.XORBITS_UINT(dotProduct);
            }
            int i14 = i12 + 1;
            if (i13 != i14 || (i10 = this.HFEnvr) == 0) {
                i10 = 64;
            }
            long j11 = pointer.get(i12);
            for (int i15 = 0; i15 < i10; i15++) {
                if (((j11 >>> i15) & 1) != 0) {
                    dotProduct ^= pointerUnion2.getDotProduct(0, pointer, 0, i14);
                }
                pointerUnion2.move(i14);
            }
            i12 = i14;
        }
    }

    private void findRootsSplit_gf2nx(Pointer pointer, Pointer pointer2, int i10) {
        int i11;
        int iGcd_gf2nx;
        int i12;
        if (i10 == 1) {
            pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
            return;
        }
        if ((this.HFEn & 1) != 0 && i10 == 2) {
            findRootsSplit2_HT_gf2nx(pointer, pointer2);
            return;
        }
        int i13 = (i10 << 1) - 1;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn * i13);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn * i10);
        int i14 = i10 + 1;
        Pointer pointer5 = new Pointer(this.NB_WORD_GFqn * i14);
        Pointer pointer6 = new Pointer(this.NB_WORD_GFqn);
        while (true) {
            pointer3.setRangeClear(0, this.NB_WORD_GFqn * i13);
            pointer4.setRangeClear(0, this.NB_WORD_GFqn * i10);
            do {
                pointer4.fillRandom(this.NB_WORD_GFqn, this.random, this.NB_BYTES_GFqn);
                pointer4.setAnd((this.NB_WORD_GFqn << 1) - 1, this.MASK_GF2n);
                i11 = this.NB_WORD_GFqn;
            } while (pointer4.is0_gf2n(i11, i11) != 0);
            pointer5.copyFrom(pointer2, this.NB_WORD_GFqn * i14);
            traceMap_gf2nx(pointer4, pointer3, pointer5, i10);
            iGcd_gf2nx = gcd_gf2nx(pointer5, i10, pointer4, pointer4.searchDegree(i10 - 1, 1, this.NB_WORD_GFqn));
            i12 = this.buffer;
            if (iGcd_gf2nx != 0 && iGcd_gf2nx != i10) {
                break;
            }
        }
        if (i12 != 0) {
            pointer4.swap(pointer5);
        }
        inv_gf2n(pointer6, pointer5, this.NB_WORD_GFqn * iGcd_gf2nx);
        int i15 = this.NB_WORD_GFqn;
        pointer5.set1_gf2n(iGcd_gf2nx * i15, i15);
        for_mul(pointer5, pointer6, iGcd_gf2nx - 1);
        div_q_monic_gf2nx(pointer2, i10, pointer5, iGcd_gf2nx);
        findRootsSplit_gf2nx(pointer, pointer5, iGcd_gf2nx);
        findRootsSplit_gf2nx(new Pointer(pointer, this.NB_WORD_GFqn * iGcd_gf2nx), new Pointer(pointer2, this.NB_WORD_GFqn * iGcd_gf2nx), i10 - iGcd_gf2nx);
    }

    private void for_and_xor_shift_incre_move(Pointer pointer, int i10, int i11) {
        long j10 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            pointer.setAnd(j10);
            pointer.setXor(1 << i12);
            j10 = (j10 << 1) + 1;
            pointer.move(i10);
        }
    }

    private void for_casct_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10, int i11) {
        int i12 = this.NB_WORD_GFqn * i11;
        int i13 = 0;
        while (i13 < i10) {
            CMP_AND_SWAP_CST_TIME(pointer, pointer2, pointer3);
            pointer.move(i12);
            pointer2.move(i12);
            i13 += i11;
        }
    }

    private void for_copy_move(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar) {
        for (int i10 = 1; i10 < this.NB_COEFS_HFEPOLY; i10++) {
            pointer.move(complete_sparse_monic_gf2nxVar.L[i10]);
            Pointer pointer2 = complete_sparse_monic_gf2nxVar.poly;
            int i11 = this.NB_WORD_GFqn;
            pointer.copyFrom(0, pointer2, i10 * i11, i11);
        }
    }

    private void for_mul(Pointer pointer, Pointer pointer2, int i10) {
        Pointer pointer3 = new Pointer(pointer, this.NB_WORD_GFqn * i10);
        while (i10 != -1) {
            mul_gf2n(pointer3, pointer3, pointer2);
            pointer3.move(-this.NB_WORD_GFqn);
            i10--;
        }
    }

    private void for_mul_rem_xor_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10, int i11) {
        int i12 = this.NB_WORD_GFqn * i10;
        while (i10 < i11) {
            mul_rem_xorrange(pointer, pointer2, pointer3, i12);
            pointer.move(this.NB_WORD_GFqn);
            i10++;
            i12 += this.NB_WORD_GFqn;
        }
    }

    private int for_setPK(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        bArr[i10] = (byte) (bArr2[i11] & 3);
        int pk = 2;
        for (int i13 = 2; i13 < i12; i13++) {
            int i14 = this.HFEnv;
            pk = setPK(bArr, bArr2, i13, i10, i11, pk, i14 - 1, i14 - i13);
        }
        return pk;
    }

    private int for_setpk2_end_move_plus(Pointer pointer, PointerUnion pointerUnion, int i10) {
        int i11 = 0;
        int i12 = 1;
        while (i11 < i10) {
            int pk2Value = setPk2Value(pointer, pointerUnion, i12, i11, 64);
            setPk2_endValue(pointer, pointerUnion, pk2Value, i11);
            i11++;
            pointerUnion.move(i11);
            pointer.move(i11);
            i12 = pk2Value + (i11 << 6);
        }
        return i12;
    }

    private void for_sqr_divsqr(Pointer pointer, int i10, int i11, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        while (i10 < i11) {
            sqr_gf2nx(pointer, this.HFEDeg - 1);
            int i12 = this.HFEDeg;
            divsqr_r_HFE_cstdeg_gf2nx(pointer, (i12 - 1) << 1, (i12 - 1) << 1, i12, complete_sparse_monic_gf2nxVar, pointer2);
            i10++;
        }
    }

    private void frobeniusMap_multisqr_HFE_gf2nx(Pointer pointer, SecretKeyHFE.complete_sparse_monic_gf2nx complete_sparse_monic_gf2nxVar, Pointer pointer2) {
        Pointer pointer3 = new Pointer();
        Pointer pointer4 = new Pointer(this.HFEDeg * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer();
        Pointer pointer6 = new Pointer(((this.KX * this.HFEDeg) + this.POW_II) * this.NB_WORD_GFqn);
        int i10 = (this.POW_II * this.KP) - this.HFEDeg;
        Pointer pointer7 = new Pointer(pointer6, this.NB_WORD_GFqn * i10);
        pointer7.copyFrom(pointer2, this.NB_WORD_GFqn);
        for_copy_move(pointer7, complete_sparse_monic_gf2nxVar);
        int i11 = i10 - 1;
        divsqr_r_HFE_cstdeg_gf2nx(pointer6, i11 + this.HFEDeg, i11, 0, complete_sparse_monic_gf2nxVar, pointer2);
        int i12 = this.KP + 1;
        while (true) {
            int i13 = this.HFEDeg;
            if (i12 >= i13) {
                break;
            }
            pointer7.changeIndex(pointer6, i13 * this.NB_WORD_GFqn);
            pointer7.setRangeClear(0, this.POW_II * this.NB_WORD_GFqn);
            int i14 = this.POW_II;
            int i15 = this.NB_WORD_GFqn;
            pointer7.copyFrom(i14 * i15, pointer6, 0, this.HFEDeg * i15);
            pointer6.changeIndex(pointer7);
            int i16 = this.POW_II;
            divsqr_r_HFE_cstdeg_gf2nx(pointer6, this.HFEDeg + (i16 - 1), i16 - 1, 0, complete_sparse_monic_gf2nxVar, pointer2);
            i12++;
        }
        pointer6.indexReset();
        int i17 = (1 << this.HFEDegI) - this.KP;
        int i18 = this.HFEDeg;
        int i19 = this.NB_WORD_GFqn;
        pointer.copyFrom(0, pointer6, i17 * i18 * i19, i18 * i19);
        int i20 = 0;
        while (true) {
            int i21 = this.HFEn;
            int i22 = this.HFEDegI;
            int i23 = this.II;
            if (i20 >= ((i21 - i22) - i23) / i23) {
                for_sqr_divsqr(pointer, 0, (i21 - i22) % i23, complete_sparse_monic_gf2nxVar, pointer2);
                return;
            }
            loop_sqr(pointer4, pointer);
            for (int i24 = 1; i24 < this.II; i24++) {
                loop_sqr(pointer4, pointer4);
            }
            pointer5.changeIndex(pointer4, this.KP * this.NB_WORD_GFqn);
            pointer7.changeIndex(pointer6);
            pointer3.changeIndex(pointer);
            for (int i25 = 0; i25 < this.HFEDeg; i25++) {
                mul_gf2n(pointer3, pointer7, pointer5);
                pointer3.move(this.NB_WORD_GFqn);
                pointer7.move(this.NB_WORD_GFqn);
            }
            int i26 = this.KP;
            while (true) {
                i26++;
                if (i26 >= this.HFEDeg) {
                    break;
                }
                pointer5.move(this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer);
                for (int i27 = 0; i27 < this.HFEDeg; i27++) {
                    mul_rem_xorrange(pointer3, pointer7, pointer5);
                    pointer3.move(this.NB_WORD_GFqn);
                    pointer7.move(this.NB_WORD_GFqn);
                }
            }
            for (int i28 = 0; i28 < this.KP; i28++) {
                int i29 = this.POW_II * i28;
                int i30 = this.NB_WORD_GFqn;
                pointer.setXorRange(i29 * i30, pointer4, i28 * i30, i30);
            }
            i20++;
        }
    }

    private int gcd_gf2nx(Pointer pointer, int i10, Pointer pointer2, int i11) {
        int iDiv_r_monic_gf2nx;
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        this.buffer = 0;
        Pointer pointer4 = pointer;
        Pointer pointer5 = pointer2;
        int i12 = i10;
        while (i11 != 0) {
            if ((i11 << 1) > i12) {
                iDiv_r_monic_gf2nx = div_r_gf2nx(pointer4, i12, pointer5, i11);
            } else {
                inv_gf2n(pointer3, pointer5, this.NB_WORD_GFqn * i11);
                int i13 = this.NB_WORD_GFqn;
                pointer5.set1_gf2n(i11 * i13, i13);
                for_mul(pointer5, pointer3, i11 - 1);
                iDiv_r_monic_gf2nx = div_r_monic_gf2nx(pointer4, i12, pointer5, i11);
            }
            this.buffer = 1 - this.buffer;
            Pointer pointer6 = pointer4;
            pointer4 = pointer5;
            pointer5 = pointer6;
            int i14 = i11;
            i11 = iDiv_r_monic_gf2nx;
            i12 = i14;
        }
        return i12;
    }

    private void getSHA3Hash(Pointer pointer, int i10, int i11, byte[] bArr, int i12, int i13, byte[] bArr2) {
        this.sha3Digest.update(bArr, i12, i13);
        this.sha3Digest.doFinal(bArr2, 0);
        pointer.fill(i10, bArr2, 0, i11);
    }

    private void initListDifferences_gf2nx(int[] iArr) {
        iArr[1] = this.NB_WORD_GFqn;
        int arrayL = 2;
        int i10 = 0;
        while (i10 < this.HFEDegI) {
            if (!this.ENABLED_REMOVE_ODD_DEGREE || (1 << i10) + 1 <= this.HFE_odd_degree) {
                iArr[arrayL] = this.NB_WORD_GFqn;
                arrayL = setArrayL(iArr, arrayL + 1, 0, i10);
            } else {
                if (i10 != 0) {
                    iArr[arrayL] = this.NB_WORD_GFqn << 1;
                    arrayL++;
                }
                arrayL = setArrayL(iArr, arrayL, 1, i10);
            }
            i10++;
        }
        int i11 = this.HFEDegJ;
        if (i11 != 0) {
            if (!this.ENABLED_REMOVE_ODD_DEGREE || (1 << i10) + 1 <= this.HFE_odd_degree) {
                iArr[arrayL] = this.NB_WORD_GFqn;
                setArrayL(iArr, arrayL + 1, 0, i11 - 1);
            } else {
                iArr[arrayL] = this.NB_WORD_GFqn << 1;
                setArrayL(iArr, arrayL + 1, 1, i11 - 1);
            }
        }
    }

    private void inv_gf2n(Pointer pointer, Pointer pointer2, int i10) {
        int index = pointer2.getIndex();
        pointer2.move(i10);
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        for (int i11 = this.HFEn_1rightmost - 1; i11 != -1; i11--) {
            int i12 = (this.HFEn - 1) >>> (i11 + 1);
            sqr_gf2n(pointer3, pointer);
            for (int i13 = 1; i13 < i12; i13++) {
                sqr_gf2n(pointer3, pointer3);
            }
            mul_gf2n(pointer, pointer, pointer3);
            if ((((this.HFEn - 1) >>> i11) & 1) != 0) {
                sqr_gf2n(pointer3, pointer);
                mul_gf2n(pointer, pointer2, pointer3);
            }
        }
        sqr_gf2n(pointer, pointer);
        pointer2.changeIndex(index);
    }

    private void loop_sqr(Pointer pointer, Pointer pointer2) {
        for (int i10 = 0; i10 < this.HFEDeg; i10++) {
            int i11 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer, i10 * i11, pointer2, i11 * i10);
        }
    }

    private int loop_xor_loop_move_xorandmask_move(Pointer pointer, Pointer pointer2, Pointer pointer3, Pointer pointer4, int i10, int i11, int i12, int i13, int i14) {
        int i15 = i10;
        int i16 = 0;
        while (i16 < i12) {
            pointer.setXor(i11, 1 << i16);
            pointer2.changeIndex(pointer);
            pointer3.changeIndex(pointer4);
            for (int i17 = i15; i17 < i13; i17++) {
                pointer2.move(i14);
                pointer3.move((i17 >>> 6) + 1);
                pointer2.setXorRangeAndMask(pointer, i11 + 1, -((pointer3.get() >>> i16) & 1));
            }
            pointer.move(i14);
            pointer4.move(i11 + 1);
            i16++;
            i15++;
        }
        return i15;
    }

    private void mulMatricesLU_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int i10;
        int i11;
        boolean z;
        int index = pointer.getIndex();
        int i12 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (i12 == 1) {
            i10 = this.HFEnq;
            i11 = this.HFEnr;
            z = true;
        } else {
            if (i12 != 2) {
                throw new IllegalArgumentException("Invalid parameter for MULMATRICESLU_GF2");
            }
            int i13 = this.HFEnvq;
            int i14 = this.HFEnvr;
            i10 = i13;
            i11 = i14;
            z = i14 != 0;
        }
        Pointer pointer4 = new Pointer(pointer2);
        int i15 = 1;
        while (i15 <= i10) {
            LOOPIR(pointer, pointer4, pointer3, 64, i10, i11, i15, z);
            i15++;
        }
        LOOPIR(pointer, pointer4, pointer3, i11, i10, i11, i15, z);
        pointer.changeIndex(index);
    }

    private void precSignHFE(SecretKeyHFE secretKeyHFE, Pointer[] pointerArr, byte[] bArr) {
        precSignHFESeed(secretKeyHFE, bArr);
        initListDifferences_gf2nx(secretKeyHFE.F_struct.L);
        Pointer pointer = new Pointer(secretKeyHFE.F_HFEv);
        Pointer pointer2 = new Pointer(this.NB_COEFS_HFEPOLY * this.NB_WORD_GFqn);
        Pointer pointer3 = new Pointer(pointer, this.MQv_GFqn_SIZE);
        pointerArr[0] = pointer3;
        pointer.changeIndex(pointer3, this.MLv_GFqn_SIZE);
        Pointer pointer4 = new Pointer(pointer2, this.NB_WORD_GFqn * 2);
        int i10 = 0;
        while (true) {
            int i11 = 1;
            if (i10 >= this.HFEDegI) {
                break;
            }
            if ((1 << i10) + 1 <= this.HFE_odd_degree || !this.ENABLED_REMOVE_ODD_DEGREE) {
                i11 = 0;
            }
            int i12 = i10 - i11;
            pointer4.copyFrom(pointer, this.NB_WORD_GFqn * i12);
            pointer.move(this.NB_WORD_GFqn * i12);
            pointer4.move(i12 * this.NB_WORD_GFqn);
            i10++;
            pointerArr[i10] = new Pointer(pointer);
            pointer.move(this.MLv_GFqn_SIZE);
            pointer4.move(this.NB_WORD_GFqn);
        }
        int i13 = this.HFEDegJ;
        if (i13 != 0) {
            pointer4.copyFrom(pointer, (i13 - ((1 << i10) + 1 > this.HFE_odd_degree ? 1 : 0)) * this.NB_WORD_GFqn);
        }
        secretKeyHFE.F_struct.poly = new Pointer(pointer2);
    }

    private void precSignHFESeed(SecretKeyHFE secretKeyHFE, byte[] bArr) {
        int i10 = this.NB_UINT_HFEVPOLY + ((this.LTRIANGULAR_NV_SIZE + this.LTRIANGULAR_N_SIZE) << 1);
        secretKeyHFE.sk_uncomp = new Pointer(this.MATRIXnv_SIZE + i10 + this.MATRIXn_SIZE);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(this.ShakeBitStrength);
        sHAKEDigest.update(bArr, 0, this.SIZE_SEED_SK);
        int i11 = i10 << 3;
        byte[] bArr2 = new byte[i11];
        sHAKEDigest.doFinal(bArr2, 0, i11);
        secretKeyHFE.sk_uncomp.fill(0, bArr2, 0, i11);
        Pointer pointer = new Pointer(secretKeyHFE.sk_uncomp, i10);
        secretKeyHFE.S = pointer;
        secretKeyHFE.T = new Pointer(pointer, this.MATRIXnv_SIZE);
        Pointer pointer2 = new Pointer(secretKeyHFE.sk_uncomp);
        secretKeyHFE.F_HFEv = pointer2;
        cleanMonicHFEv_gf2nx(pointer2);
        Pointer pointer3 = new Pointer(secretKeyHFE.sk_uncomp, this.NB_UINT_HFEVPOLY);
        Pointer pointer4 = new Pointer(pointer3, this.LTRIANGULAR_NV_SIZE);
        FunctionParams functionParams = FunctionParams.NV;
        cleanLowerMatrix(pointer3, functionParams);
        cleanLowerMatrix(pointer4, functionParams);
        mulMatricesLU_gf2(secretKeyHFE.S, pointer3, pointer4, functionParams);
        pointer3.move(this.LTRIANGULAR_NV_SIZE << 1);
        pointer4.changeIndex(pointer3, this.LTRIANGULAR_N_SIZE);
        FunctionParams functionParams2 = FunctionParams.N;
        cleanLowerMatrix(pointer3, functionParams2);
        cleanLowerMatrix(pointer4, functionParams2);
        mulMatricesLU_gf2(secretKeyHFE.T, pointer3, pointer4, functionParams2);
    }

    private void rem_gf2n(Pointer pointer, int i10, Pointer pointer2) {
        this.rem.rem_gf2n(pointer.array, i10 + pointer.getIndex(), pointer2.array);
    }

    private static long remainderUnsigned(long j10, long j11) {
        return (j10 <= 0 || j11 <= 0) ? new BigInteger(1, Pack.longToBigEndian(j10)).mod(new BigInteger(1, Pack.longToBigEndian(j11))).longValue() : j10 % j11;
    }

    private int setArrayL(int[] iArr, int i10, int i11, int i12) {
        while (i11 < i12) {
            iArr[i10] = this.NB_WORD_GFqn << i11;
            i11++;
            i10++;
        }
        return i10;
    }

    private int setPK(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, int i14, int i15) {
        while (i14 >= i15) {
            int i16 = (i13 >>> 3) + i11;
            bArr[i16] = (byte) (bArr[i16] ^ (((bArr2[(i10 >>> 3) + i12] >>> (i10 & 7)) & 1) << (i13 & 7)));
            i10 += i14;
            i14--;
            i13++;
        }
        this.buffer = i10;
        return i13;
    }

    private int setPk2Value(Pointer pointer, PointerUnion pointerUnion, int i10, int i11, int i12) {
        for (int i13 = 1; i13 < i12; i13++) {
            int i14 = i10 & 63;
            if (i14 != 0) {
                pointer.setRangePointerUnion(pointerUnion, i11, i14);
                pointer.set(i11, pointerUnion.get(i11) >>> i14);
                int i15 = i14 + i13;
                if (i15 > 64) {
                    pointer.setXor(i11, pointerUnion.get(i11 + 1) << (64 - i14));
                }
                if (i15 >= 64) {
                    pointerUnion.moveIncremental();
                }
            } else {
                pointer.setRangePointerUnion(pointerUnion, i11 + 1);
            }
            pointerUnion.move(i11);
            pointer.setAnd(i11, (1 << i13) - 1);
            pointer.move(i11 + 1);
            i10 += (i11 << 6) + i13;
        }
        return i10;
    }

    private void setPk2_endValue(Pointer pointer, PointerUnion pointerUnion, int i10, int i11) {
        int i12 = i10 & 63;
        int i13 = i11 + 1;
        if (i12 != 0) {
            pointer.setRangePointerUnion(pointerUnion, i13, i12);
        } else {
            pointer.setRangePointerUnion(pointerUnion, i13);
        }
    }

    private void special_buffer(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        int i10;
        int index = pointer2.getIndex();
        pointer2.move(((this.HFEv + 1) * this.NB_WORD_GFqn) << 1);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer.move(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(pointer2, (this.HFEv + 2) * this.NB_WORD_GFqn);
        int i11 = 2;
        while (i11 < this.SIZE_ROW - 1) {
            copy_move_matrix_move(pointer, pointer4, i11 - 1);
            i11++;
        }
        if (this.ENABLED_REMOVE_ODD_DEGREE) {
            while (i11 < this.SIZE_ROW - 1) {
                copy_move_matrix_move(pointer, pointer4, i11 - 2);
                i11++;
            }
        }
        pointer.set1_gf2n(0, this.NB_WORD_GFqn);
        pointer.setXorMatrix(pointer4, this.NB_WORD_GFqn, this.HFEDegJ);
        for (int i12 = 0; i12 < this.HFEn - 1; i12++) {
            mul_gf2n(pointer, pointer3, pointer2);
            pointer.move(this.NB_WORD_GFqn);
            pointer4.changeIndex(pointer2, (this.HFEv + 2) * this.NB_WORD_GFqn);
            int i13 = 2;
            while (i13 < this.HFEDegI) {
                dotproduct_move_move(pointer, pointer4, pointer3, i13);
                i13++;
            }
            if (this.ENABLED_REMOVE_ODD_DEGREE) {
                pointer3.move(this.NB_WORD_GFqn);
                while (i13 < this.SIZE_ROW - 1) {
                    dotproduct_move_move(pointer, pointer4, pointer3, i13 - 1);
                    i13++;
                }
                pointer3.move(-this.NB_WORD_GFqn);
            }
            int i14 = this.HFEDegJ;
            if (i14 == 0) {
                pointer.copyFrom(pointer3, this.NB_WORD_GFqn);
                pointer.move(this.NB_WORD_GFqn);
                i10 = this.SIZE_ROW;
            } else {
                dotProduct_gf2n(pointer, pointer3, pointer4, i14);
                pointer3.move(this.HFEDegJ * this.NB_WORD_GFqn);
                pointer.setXorRange_SelfMove(pointer3, this.NB_WORD_GFqn);
                i10 = this.SIZE_ROW - this.HFEDegJ;
            }
            pointer3.move(i10 * this.NB_WORD_GFqn);
        }
        pointer.indexReset();
        pointer2.changeIndex(index);
        pointer3.indexReset();
    }

    private void sqr_gf2n(Pointer pointer, int i10, Pointer pointer2, int i11) {
        this.mul.sqr_gf2x(this.Buffer_NB_WORD_MUL.array, pointer2.array, i11 + pointer2.cp);
        rem_gf2n(pointer, i10, this.Buffer_NB_WORD_MUL);
    }

    private void sqr_gf2nx(Pointer pointer, int i10) {
        int i11 = this.NB_WORD_GFqn * i10;
        int index = pointer.getIndex();
        pointer.move(i11);
        Pointer pointer2 = new Pointer(pointer, i11);
        for (int i12 = 0; i12 < i10; i12++) {
            sqr_gf2n(pointer2, pointer);
            pointer.move(-this.NB_WORD_GFqn);
            pointer2.move(-this.NB_WORD_GFqn);
            pointer2.setRangeClear(0, this.NB_WORD_GFqn);
            pointer2.move(-this.NB_WORD_GFqn);
        }
        sqr_gf2n(pointer, pointer);
        pointer.changeIndex(index);
    }

    private void traceMap_gf2nx(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10) {
        int i11;
        int i12 = 1;
        while (true) {
            i11 = 1 << i12;
            if (i11 >= i10) {
                break;
            }
            int i13 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer, i13 << i12, pointer, i13 << (i12 - 1));
            i12++;
        }
        if (i12 < this.HFEn) {
            int i14 = this.NB_WORD_GFqn;
            sqr_gf2n(pointer2, i14 << i12, pointer, i14 << (i12 - 1));
            div_r_monic_cst_gf2nx(pointer2, i11, pointer3, i10);
            pointer.setXorRange(pointer2, this.NB_WORD_GFqn * i10);
            for (int i15 = i12 + 1; i15 < this.HFEn; i15++) {
                int i16 = i10 - 1;
                sqr_gf2nx(pointer2, i16);
                div_r_monic_cst_gf2nx(pointer2, i16 << 1, pointer3, i10);
                pointer.setXorRange(pointer2, this.NB_WORD_GFqn * i10);
            }
        }
    }

    private void uncompress_signHFE(Pointer pointer, byte[] bArr) {
        PointerUnion pointerUnion = new PointerUnion(pointer);
        int i10 = (1 << this.HFEnvr8) - 1;
        pointerUnion.fillBytes(0, bArr, 0, this.NB_BYTES_GFqnv);
        if (this.HFEnvr8 != 0) {
            pointerUnion.setAndByte(this.NB_BYTES_GFqnv - 1, i10);
        }
        int i11 = this.HFEnv;
        pointerUnion.moveNextBytes((this.NB_WORD_GF2nv << 3) + (this.HFEmq8 & 7));
        for (int i12 = 1; i12 < this.NB_ITE; i12++) {
            int i13 = i11 & 7;
            int iMin = Math.min(this.HFEDELTA + this.HFEv, (8 - i13) & 7);
            if (i13 != 0) {
                pointerUnion.setXorByte(((bArr[i11 >>> 3] & 255) >>> i13) << this.HFEmr8);
                int i14 = iMin - this.VAL_BITS_M;
                if (i14 >= 0) {
                    pointerUnion.moveNextByte();
                }
                if (i14 > 0) {
                    int i15 = i11 + this.VAL_BITS_M;
                    pointerUnion.setXorByte((bArr[i15 >>> 3] & 255) >>> (i15 & 7));
                    i11 = i15 + i14;
                } else {
                    i11 += iMin;
                }
            }
            int i16 = (this.HFEDELTA + this.HFEv) - iMin;
            int i17 = (this.HFEm + iMin) & 7;
            if (i17 != 0) {
                for (int i18 = 0; i18 < ((i16 - 1) >>> 3); i18++) {
                    int i19 = i11 >>> 3;
                    pointerUnion.setXorByte((bArr[i19] & 255) << i17);
                    pointerUnion.moveNextByte();
                    pointerUnion.setXorByte((bArr[i19] & 255) >>> (8 - i17));
                    i11 += 8;
                }
                int i20 = i11 >>> 3;
                pointerUnion.setXorByte((bArr[i20] & 255) << i17);
                pointerUnion.moveNextByte();
                int i21 = ((i16 + 7) & 7) + 1;
                int i22 = 8 - i17;
                if (i21 > i22) {
                    pointerUnion.setByte((bArr[i20] & 255) >>> i22);
                    pointerUnion.moveNextByte();
                }
                i11 += i21;
            } else {
                for (int i23 = 0; i23 < ((i16 + 7) >>> 3); i23++) {
                    pointerUnion.setByte(bArr[i11 >>> 3]);
                    i11 += 8;
                    pointerUnion.moveNextByte();
                }
                i11 -= (8 - (i16 & 7)) & 7;
            }
            if (this.HFEnvr8 != 0) {
                pointerUnion.setAndByte(-1, i10);
            }
            pointerUnion.moveNextBytes(((8 - (this.NB_BYTES_GFqnv & 7)) & 7) + (this.HFEmq8 & 7));
        }
    }

    private void vmpv_xorrange_move(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        vecMatProduct(pointer, pointer2, new Pointer(pointer3, this.NB_WORD_GFqn), FunctionParams.V);
        pointer.setXorRange(pointer3, this.NB_WORD_GFqn);
        pointer3.move(this.MLv_GFqn_SIZE);
    }

    public void changeVariablesMQS64_gf2(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer();
        int i10 = this.HFEnv;
        Pointer pointer4 = new Pointer(i10 * i10 * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer, this.NB_WORD_GFqn);
        Pointer pointer6 = new Pointer(pointer4);
        Pointer pointer7 = new Pointer(pointer2);
        int i11 = 0;
        while (true) {
            int i12 = 64;
            if (i11 >= this.HFEnv) {
                break;
            }
            pointer3.changeIndex(pointer5);
            int i13 = 0;
            while (i13 < this.HFEnvq) {
                int i14 = 0;
                while (i14 < i12) {
                    int i15 = i13;
                    int i16 = i14;
                    LOOPKR(pointer3, pointer6, pointer7.get() >>> i14, i16, 64);
                    LOOPK_COMPLETE(pointer6, pointer7, pointer3, 1, this.HFEnvq - i15);
                    i14 = i16 + 1;
                    i11 = i11;
                    i13 = i15;
                    i12 = 64;
                }
                pointer7.moveIncremental();
                i13++;
                i12 = 64;
            }
            int i17 = i11;
            if (this.HFEnvr != 0) {
                for (int i18 = 0; i18 < this.HFEnvr; i18++) {
                    LOOPKR(pointer3, pointer6, pointer7.get() >>> i18, i18, this.HFEnvr);
                    pointer6.move(this.NB_WORD_GFqn);
                }
                pointer7.moveIncremental();
            }
            i11 = i17 + 1;
        }
        int i19 = 64;
        pointer5.changeIndex(pointer4);
        pointer6.changeIndex(pointer, this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(pointer2);
        int i20 = 0;
        while (i20 < this.HFEnvq) {
            int i21 = 0;
            while (i21 < i19) {
                pointer7.changeIndex(pointer8);
                int i22 = i21;
                int i23 = i20;
                Pointer pointer9 = pointer8;
                LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, i22, 64);
                for (int i24 = i23 + 1; i24 < this.HFEnvq; i24++) {
                    LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, 0, 64);
                }
                int i25 = this.HFEnvr;
                if (i25 != 0) {
                    LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, 0, i25);
                }
                pointer5.changeIndex(pointer3);
                pointer9.move(this.NB_WORD_GF2nv);
                i21 = i22 + 1;
                pointer8 = pointer9;
                i20 = i23;
                i19 = 64;
            }
            i20++;
            i19 = 64;
        }
        Pointer pointer10 = pointer8;
        if (this.HFEnvr != 0) {
            for (int i26 = 0; i26 < this.HFEnvr; i26++) {
                pointer7.changeIndex(pointer10);
                pointer3.changeIndex(pointer5);
                LOOPIR_INIT(pointer6, pointer3, pointer5, pointer7, i26, this.HFEnvr);
                pointer5.changeIndex(pointer3);
                pointer10.move(this.NB_WORD_GF2nv);
            }
        }
        pointer5.changeIndex(pointer4);
        pointer6.changeIndex(pointer, this.NB_WORD_GFqn);
        pointer7.changeIndex(pointer2);
        for (int i27 = 0; i27 < this.HFEnvq; i27++) {
            int i28 = 0;
            while (i28 < 64) {
                pointer6.move(this.NB_WORD_GFqn);
                pointer5.move(this.HFEnv * this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer5);
                int i29 = i28 + 1;
                LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, i29, 64);
                for (int i30 = i27 + 1; i30 < this.HFEnvq; i30++) {
                    LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, 0, 64);
                }
                int i31 = this.HFEnvr;
                if (i31 != 0) {
                    LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, 0, i31);
                }
                pointer7.move(this.NB_WORD_GF2nv);
                i28 = i29;
            }
        }
        if (this.HFEnvr != 0) {
            int i32 = 0;
            while (i32 < this.HFEnvr - 1) {
                pointer6.move(this.NB_WORD_GFqn);
                pointer5.move(this.HFEnv * this.NB_WORD_GFqn);
                pointer3.changeIndex(pointer5);
                i32++;
                LOOPIR_LOOPK_COMPLETE(pointer6, pointer7, pointer3, i32, this.HFEnvr);
                pointer7.move(this.NB_WORD_GF2nv);
            }
        }
        pointer.indexReset();
        pointer2.indexReset();
    }

    public void cleanLowerMatrix(Pointer pointer, FunctionParams functionParams) {
        int i10;
        int i11;
        int i12 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        int i13 = 1;
        if (i12 == 1) {
            i10 = this.HFEnq;
            i11 = this.HFEnr;
        } else {
            if (i12 != 2) {
                throw new IllegalArgumentException("");
            }
            i10 = this.HFEnvq;
            i11 = this.HFEnvr;
        }
        Pointer pointer2 = new Pointer(pointer);
        while (i13 <= i10) {
            for_and_xor_shift_incre_move(pointer2, i13, 64);
            pointer2.moveIncremental();
            i13++;
        }
        for_and_xor_shift_incre_move(pointer2, i13, i11);
    }

    public void cleanMonicHFEv_gf2nx(Pointer pointer) {
        int i10 = this.NB_WORD_GFqn - 1;
        while (i10 < this.NB_UINT_HFEVPOLY) {
            pointer.setAnd(i10, this.MASK_GF2n);
            i10 += this.NB_WORD_GFqn;
        }
    }

    public void compress_signHFE(byte[] bArr, Pointer pointer) {
        int i10;
        byte[] bytes = pointer.toBytes(pointer.getLength() << 3);
        System.arraycopy(bytes, 0, bArr, 0, this.NB_BYTES_GFqnv);
        int i11 = this.HFEnv;
        int i12 = (this.NB_WORD_GF2nv << 3) + (this.HFEmq8 & 7);
        for (int i13 = 1; i13 < this.NB_ITE; i13++) {
            int i14 = i11 & 7;
            int iMin = Math.min(this.HFEDELTA + this.HFEv, (8 - i14) & 7);
            if (i14 != 0) {
                int i15 = this.HFEmr8;
                if (i15 != 0) {
                    int i16 = i11 >>> 3;
                    bArr[i16] = (byte) ((((bytes[i12] & 255) >>> i15) << i14) ^ bArr[i16]);
                    int i17 = this.VAL_BITS_M;
                    int i18 = iMin - i17;
                    if (i18 >= 0) {
                        i12++;
                    }
                    if (i18 > 0) {
                        int i19 = i11 + i17;
                        int i20 = i19 >>> 3;
                        bArr[i20] = (byte) (bArr[i20] ^ ((bytes[i12] & 255) << (i19 & 7)));
                        i11 = i19 + i18;
                    }
                } else {
                    int i21 = i11 >>> 3;
                    bArr[i21] = (byte) (((bytes[i12] & 255) << i14) ^ bArr[i21]);
                }
                i11 += iMin;
            }
            int i22 = (this.HFEDELTA + this.HFEv) - iMin;
            int i23 = (this.HFEm + iMin) & 7;
            if (i23 != 0) {
                for (int i24 = 0; i24 < ((i22 - 1) >>> 3); i24++) {
                    int i25 = (bytes[i12] & 255) >>> i23;
                    i12++;
                    bArr[i11 >>> 3] = (byte) (i25 ^ ((bytes[i12] & 255) << (8 - i23)));
                    i11 += 8;
                }
                int i26 = i11 >>> 3;
                i10 = i12 + 1;
                byte b10 = (byte) ((bytes[i12] & 255) >>> i23);
                bArr[i26] = b10;
                int i27 = ((i22 + 7) & 7) + 1;
                int i28 = 8 - i23;
                if (i27 > i28) {
                    bArr[i26] = (byte) (((byte) ((bytes[i10] & 255) << i28)) ^ b10);
                    i10 = i12 + 2;
                }
                i11 += i27;
            } else {
                int i29 = 0;
                while (i29 < ((i22 + 7) >>> 3)) {
                    bArr[i11 >>> 3] = bytes[i12];
                    i11 += 8;
                    i29++;
                    i12++;
                }
                i11 -= (8 - (i22 & 7)) & 7;
                i10 = i12;
            }
            i12 = ((8 - (this.NB_BYTES_GFqnv & 7)) & 7) + (this.HFEmq8 & 7) + i10;
        }
    }

    public void convMQS_one_eq_to_hybrid_rep8_comp_gf2(byte[] bArr, PointerUnion pointerUnion, byte[] bArr2) {
        convMQ_UL_gf2(bArr, bArr2, this.HFEmr8);
        int bytesMove = 0;
        for (int i10 = 0; i10 < this.NB_MONOMIAL_PK; i10++) {
            bytesMove = pointerUnion.toBytesMove(bArr, bytesMove, this.HFEmq8);
            if (this.HFEmr8 != 0) {
                pointerUnion.moveNextByte();
            }
        }
    }

    public void convMQS_one_eq_to_hybrid_rep8_uncomp_gf2(byte[] bArr, PointerUnion pointerUnion, byte[] bArr2) {
        int i10 = this.HFEmr8 - 1;
        convMQ_UL_gf2(bArr, bArr2, i10);
        int i11 = this.ACCESS_last_equations8;
        int i12 = this.NB_BYTES_EQUATION;
        int i13 = (i10 * i12) + i11;
        int i14 = i10 * i12;
        int iFor_setPK = for_setPK(bArr, bArr2, i13, i14, this.HFEnv);
        int i15 = this.HFEnv;
        setPK(bArr, bArr2, i15, i13, i14, iFor_setPK, i15 - 1, this.LOST_BITS);
        int i16 = this.buffer;
        long j10 = 0;
        for (int i17 = this.LOST_BITS - 1; i17 >= 0; i17--) {
            j10 ^= ((bArr2[(i16 >>> 3) + i14] >>> (i16 & 7)) & 1) << ((this.LOST_BITS - 1) - i17);
            i16 += i17;
        }
        int i18 = this.ACCESS_last_equations8 - 1;
        for (int i19 = 0; i19 < this.HFEmr8 - 1; i19++) {
            i18 += this.NB_BYTES_EQUATION;
            bArr[i18] = (byte) (bArr[i18] ^ (((byte) (j10 >>> (this.HFENr8c * i19))) << this.HFENr8));
        }
        pointerUnion.indexReset();
        int bytesMove = 0;
        for (int i20 = 0; i20 < this.NB_MONOMIAL_PK; i20++) {
            bytesMove = pointerUnion.toBytesMove(bArr, bytesMove, this.HFEmq8);
            pointerUnion.moveNextByte();
        }
    }

    public void convMQS_one_to_last_mr8_equations_gf2(byte[] bArr, PointerUnion pointerUnion) {
        int i10;
        pointerUnion.moveNextBytes(this.HFEmq8);
        PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
        int i11 = this.NB_MONOMIAL_PK >>> 3;
        int i12 = 0;
        for (int i13 = 0; i13 < this.HFEmr8; i13++) {
            pointerUnion2.changeIndex(pointerUnion);
            int i14 = 0;
            while (true) {
                if (i14 >= i11) {
                    break;
                }
                int i15 = (pointerUnion2.getByte() >>> i13) & 1;
                pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                for (int i16 = 1; i16 < 8; i16++) {
                    i15 ^= ((pointerUnion2.getByte() >>> i13) & 1) << i16;
                    pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                }
                bArr[i12] = (byte) i15;
                i14++;
                i12++;
            }
            if (this.HFENr8 != 0) {
                long withCheck = (pointerUnion2.getWithCheck() >>> i13) & 1;
                pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                for (i10 = 1; i10 < this.HFENr8; i10++) {
                    withCheck ^= ((pointerUnion2.getWithCheck() >>> i13) & 1) << i10;
                    pointerUnion2.moveNextBytes(this.NB_BYTES_GFqm);
                }
                bArr[i12] = (byte) withCheck;
                i12++;
            }
        }
    }

    public void convMQ_UL_gf2(byte[] bArr, byte[] bArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.ACCESS_last_equations8;
            int i13 = this.NB_BYTES_EQUATION;
            for_setPK(bArr, bArr2, (i11 * i13) + i12, i11 * i13, this.HFEnv + 1);
        }
    }

    public int crypto_sign_open(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        long j10;
        int i10;
        long j11;
        PointerUnion pointerUnion = new PointerUnion(bArr);
        int i11 = 0;
        long jConvMQ_uncompressL_gf2 = 0;
        if (this.HFENr8 == 0 || this.HFEmr8 <= 1) {
            j10 = 0;
        } else {
            PointerUnion pointerUnion2 = new PointerUnion(pointerUnion);
            pointerUnion2.moveNextBytes(this.ACCESS_last_equations8 - 1);
            j10 = 0;
            for (int i12 = 0; i12 < this.HFEmr8 - 1; i12++) {
                pointerUnion2.moveNextBytes(this.NB_BYTES_EQUATION);
                j10 ^= ((pointerUnion2.getByte() & 255) >>> this.HFENr8) << (this.HFENr8c * i12);
            }
        }
        int i13 = this.HFEmr8;
        if (i13 == 0) {
            Pointer pointer = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
            Pointer pointer2 = new Pointer(new Pointer(this.NB_WORD_GF2nv));
            Pointer pointer3 = new Pointer(this.SIZE_DIGEST_UINT);
            pointer.fill(0, bArr3, 0, this.NB_BYTES_GFqnv);
            getSHA3Hash(pointer3, 0, 64, bArr2, 0, bArr2.length, new byte[64]);
            evalMQSnocst8_quo_gf2(pointer2, pointer, pointerUnion);
            return pointer2.isEqual_nocst_gf2(pointer3, this.NB_WORD_GF2m);
        }
        Pointer pointer4 = new Pointer((this.NB_WORD_UNCOMP_EQ * i13) + 1);
        PointerUnion pointerUnion3 = new PointerUnion(pointerUnion);
        while (i11 < this.HFEmr8 - 1) {
            pointerUnion3.setByteIndex((this.NB_BYTES_EQUATION * i11) + this.ACCESS_last_equations8);
            jConvMQ_uncompressL_gf2 ^= convMQ_uncompressL_gf2(new Pointer(pointer4, (this.NB_WORD_UNCOMP_EQ * i11) + 1), pointerUnion3) << i11;
            i11++;
        }
        pointerUnion3.setByteIndex((this.NB_BYTES_EQUATION * i11) + this.ACCESS_last_equations8);
        long jConvMQ_last_uncompressL_gf2 = jConvMQ_uncompressL_gf2 ^ (convMQ_last_uncompressL_gf2(new Pointer(pointer4, (this.NB_WORD_UNCOMP_EQ * i11) + 1), pointerUnion3) << i11);
        if (this.HFENr8 != 0) {
            int i14 = this.HFEnvr;
            if (i14 == 0) {
                i10 = (i11 + 1) * this.NB_WORD_UNCOMP_EQ;
                j11 = j10 << (64 - this.LOST_BITS);
            } else {
                int i15 = this.LOST_BITS;
                int i16 = i11 + 1;
                if (i14 > i15) {
                    i10 = i16 * this.NB_WORD_UNCOMP_EQ;
                    j11 = j10 << (i14 - i15);
                } else if (i14 == i15) {
                    pointer4.set(i16 * this.NB_WORD_UNCOMP_EQ, j10);
                } else {
                    pointer4.setXor((this.NB_WORD_UNCOMP_EQ * i16) - 1, j10 << (64 - (i15 - i14)));
                    pointer4.set(i16 * this.NB_WORD_UNCOMP_EQ, j10 >>> (this.LOST_BITS - this.HFEnvr));
                }
            }
            pointer4.setXor(i10, j11);
        }
        pointer4.set(jConvMQ_last_uncompressL_gf2 << (this.HFEmr - this.HFEmr8));
        return sign_openHFE_huncomp_pk(bArr2, bArr2.length, bArr3, pointerUnion, new PointerUnion(pointer4));
    }

    public int div_r_gf2nx(Pointer pointer, int i10, Pointer pointer2, int i11) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer);
        inv_gf2n(pointer4, pointer2, this.NB_WORD_GFqn * i11);
        while (i10 >= i11) {
            i10 = pointer.searchDegree(i10, i11, this.NB_WORD_GFqn);
            if (i10 < i11) {
                break;
            }
            pointer5.changeIndex((i10 - i11) * this.NB_WORD_GFqn);
            mul_gf2n(pointer3, pointer, this.NB_WORD_GFqn * i10, pointer4);
            for_mul_rem_xor_move(pointer5, pointer3, pointer2, 0, i11);
            i10--;
        }
        return pointer.searchDegree(i10, 1, this.NB_WORD_GFqn);
    }

    public void evalHFEv_gf2nx(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.NB_WORD_MUL);
        Pointer pointer5 = new Pointer(this.NB_WORD_MUL);
        Pointer pointer6 = new Pointer((this.HFEDegI + 1) * this.NB_WORD_GFqn);
        Pointer pointer7 = new Pointer();
        int index = pointer2.getIndex();
        Pointer pointer8 = new Pointer(this.NB_WORD_GFqv);
        Pointer pointer9 = new Pointer(pointer6, this.NB_WORD_GFqn);
        pointer6.copyFrom(pointer3, this.NB_WORD_GFqn);
        pointer6.setAnd(this.NB_WORD_GFqn - 1, this.MASK_GF2n);
        for (int i10 = 1; i10 <= this.HFEDegI; i10++) {
            sqr_gf2n(pointer9, 0, pointer9, -this.NB_WORD_GFqn);
            pointer9.move(this.NB_WORD_GFqn);
        }
        int i11 = this.NB_WORD_GFqn;
        int i12 = this.NB_WORD_GFqv;
        if (i11 + i12 != this.NB_WORD_GF2nv) {
            i12--;
        }
        int i13 = i12;
        pointer8.setRangeRotate(0, pointer3, i11 - 1, i13, 64 - this.HFEnr);
        int i14 = this.NB_WORD_GFqn;
        if (this.NB_WORD_GFqv + i14 != this.NB_WORD_GF2nv) {
            pointer8.set(i13, pointer3.get((i14 - 1) + i13) >>> this.HFEnr);
        }
        evalMQSv_unrolled_gf2(pointer4, pointer8, pointer2);
        pointer2.move(this.MQv_GFqn_SIZE);
        vmpv_xorrange_move(pointer5, pointer8, pointer2);
        pointer9.changeIndex(pointer6);
        mul_xorrange(pointer4, pointer9, pointer5);
        for (int i15 = 1; i15 < this.HFEDegI; i15++) {
            vmpv_xorrange_move(pointer5, pointer8, pointer2);
            int i16 = this.NB_WORD_GFqn;
            pointer5.setRangeClear(i16, this.NB_WORD_MMUL - i16);
            pointer7.changeIndex(pointer9);
            for_mul_xorrange_move(pointer5, pointer2, pointer7, i15);
            rem_gf2n(pointer5, 0, pointer5);
            mul_xorrange(pointer4, pointer7, pointer5);
        }
        vmpv_xorrange_move(pointer5, pointer8, pointer2);
        pointer7.changeIndex(pointer9);
        if (this.HFEDegJ != 0) {
            int i17 = this.NB_WORD_GFqn;
            pointer5.setRangeClear(i17, this.NB_WORD_MMUL - i17);
            for_mul_xorrange_move(pointer5, pointer2, pointer7, this.HFEDegJ);
            pointer5.setXorRange(pointer7, this.NB_WORD_GFqn);
            rem_gf2n(pointer5, 0, pointer5);
        } else {
            pointer5.setRangeFromXor(pointer5, pointer7, this.NB_WORD_GFqn);
        }
        pointer9.move(this.HFEDegI * this.NB_WORD_GFqn);
        mul_xorrange(pointer4, pointer9, pointer5);
        rem_gf2n(pointer, 0, pointer4);
        pointer2.changeIndex(index);
    }

    public void evalMQSv_unrolled_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.HFEv);
        int i10 = this.HFEv;
        int i11 = i10 >>> 6;
        int i12 = i10 & 63;
        int i13 = this.HFEn;
        int i14 = 0;
        int i15 = (i13 >>> 6) + ((i13 & 63) != 0 ? 1 : 0);
        int index = pointer3.getIndex();
        Pointer pointer5 = new Pointer(i15);
        int i16 = 0;
        int range_xi = 0;
        while (i16 < i11) {
            range_xi = pointer4.setRange_xi(pointer2.get(i16), range_xi, 64);
            i16++;
        }
        if (i12 != 0) {
            pointer4.setRange_xi(pointer2.get(i16), range_xi, i12);
        }
        pointer.copyFrom(pointer3, i15);
        pointer3.move(i15);
        while (i14 < this.HFEv) {
            pointer5.copyFrom(pointer3, i15);
            pointer3.move(i15);
            int i17 = i14 + 1;
            int i18 = i17;
            while (i18 < this.HFEv - 3) {
                pointer5.setXorRangeAndMaskMove(pointer3, i15, pointer4.get(i18));
                pointer5.setXorRangeAndMaskMove(pointer3, i15, pointer4.get(i18 + 1));
                pointer5.setXorRangeAndMaskMove(pointer3, i15, pointer4.get(i18 + 2));
                pointer5.setXorRangeAndMaskMove(pointer3, i15, pointer4.get(i18 + 3));
                i18 += 4;
            }
            while (i18 < this.HFEv) {
                pointer5.setXorRangeAndMaskMove(pointer3, i15, pointer4.get(i18));
                i18++;
            }
            pointer.setXorRangeAndMask(pointer5, i15, pointer4.get(i14));
            i14 = i17;
        }
        pointer3.changeIndex(index);
    }

    public void fast_sort_gf2n(Pointer pointer, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        Pointer pointer2 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer();
        Pointer pointer5 = new Pointer();
        int i15 = i10 - 1;
        int iHighest_One = GeMSSUtils.Highest_One(i15);
        int i16 = iHighest_One;
        while (true) {
            i11 = 0;
            if (i16 <= 1) {
                break;
            }
            int i17 = i16 << 1;
            int i18 = i10 / i17;
            int iMax = Math.max(0, (i10 - (i17 * i18)) - i16);
            pointer4.changeIndex(pointer);
            pointer5.changeIndex(pointer, this.NB_WORD_GFqn * i16);
            int i19 = 0;
            while (i19 < i18) {
                for_casct_move(pointer4, pointer5, pointer3, i16, 1);
                pointer4.move(this.NB_WORD_GFqn * i16);
                pointer5.move(this.NB_WORD_GFqn * i16);
                i19++;
                i18 = i18;
            }
            for_casct_move(pointer4, pointer5, pointer3, iMax, 1);
            int i20 = iHighest_One;
            while (i20 > i16) {
                while (i11 < i10 - i20) {
                    if ((i11 & i16) == 0) {
                        pointer5.changeIndex(pointer, (i11 + i16) * this.NB_WORD_GFqn);
                        i12 = i20;
                        i13 = i11;
                        i14 = i16;
                        copy_for_casct(pointer2, pointer5, pointer, pointer4, pointer3, i12, i13);
                        pointer5.copyFrom(pointer2, this.NB_WORD_GFqn);
                    } else {
                        i12 = i20;
                        i13 = i11;
                        i14 = i16;
                    }
                    i11 = i13 + 1;
                    i20 = i12;
                    i16 = i14;
                }
                i20 >>>= 1;
            }
            i16 >>>= 1;
        }
        pointer4.changeIndex(pointer);
        pointer5.changeIndex(pointer, this.NB_WORD_GFqn);
        for_casct_move(pointer4, pointer5, pointer3, i15, 2);
        pointer5.changeIndex(pointer, this.NB_WORD_GFqn);
        while (iHighest_One > 1) {
            int i21 = i11;
            while (i21 < i10 - iHighest_One) {
                copy_for_casct(pointer2, pointer5, pointer, pointer4, pointer3, iHighest_One, i21);
                pointer5.copyFrom(pointer2, this.NB_WORD_GFqn);
                pointer5.move(this.NB_WORD_GFqn << 1);
                i21 += 2;
            }
            iHighest_One >>>= 1;
            i11 = i21;
        }
    }

    public void findRootsSplit2_HT_gf2nx(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer(this.NB_WORD_GFqn);
        int index = pointer2.getIndex();
        sqr_gf2n(pointer3, 0, pointer2, this.NB_WORD_GFqn);
        inv_gf2n(pointer, pointer3, 0);
        mul_gf2n(pointer3, pointer2, pointer);
        findRootsSplit_x2_x_c_HT_gf2nx(pointer4, pointer3);
        pointer2.move(this.NB_WORD_GFqn);
        mul_gf2n(pointer, pointer4, pointer2);
        int i10 = this.NB_WORD_GFqn;
        pointer.setRangeFromXor(i10, pointer, 0, pointer2, 0, i10);
        pointer2.changeIndex(index);
    }

    public void findRootsSplit_x2_x_c_HT_gf2nx(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        int i10 = (this.HFEn + 1) >>> 1;
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        int i11 = 1;
        for (int i12 = this.HFEn1h_rightmost; i12 != -1; i12--) {
            int i13 = i11 << 1;
            sqr_gf2n(pointer3, pointer);
            for (int i14 = 1; i14 < i13; i14++) {
                sqr_gf2n(pointer3, pointer3);
            }
            pointer.setXorRange(pointer3, this.NB_WORD_GFqn);
            i11 = i10 >>> i12;
            if ((i11 & 1) != 0) {
                sqr_gf2n(pointer3, pointer);
                sqr_gf2n(pointer, pointer3);
                pointer.setXorRange(pointer2, this.NB_WORD_GFqn);
            }
        }
    }

    public void for_mul_xorrange_move(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.mul.mul_gf2x_xor(pointer, pointer2, pointer3);
            pointer2.move(this.NB_WORD_GFqn);
            pointer3.move(this.NB_WORD_GFqn);
        }
    }

    public void genSecretMQS_gf2_opt(Pointer pointer, Pointer pointer2) {
        Pointer pointer3 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer4 = new Pointer((this.HFEv + 1) * (this.HFEDegI + 1) * this.NB_WORD_GFqn);
        Pointer pointer5 = new Pointer(pointer2, this.MQv_GFqn_SIZE);
        for (int i10 = 0; i10 <= this.HFEDegI; i10++) {
            for (int i11 = 0; i11 <= this.HFEv; i11++) {
                int i12 = ((this.HFEDegI + 1) * i11) + i10;
                int i13 = this.NB_WORD_GFqn;
                pointer4.copyFrom(i12 * i13, pointer5, 0, i13);
                pointer5.move(this.NB_WORD_GFqn);
            }
            pointer5.move(this.NB_WORD_GFqn * i10);
        }
        Pointer pointer6 = new Pointer((this.HFEn - 1) * this.SIZE_ROW * this.NB_WORD_GFqn);
        for (int i14 = 1; i14 < this.HFEn; i14++) {
            pointer6.set(i14 >>> 6, 1 << (i14 & 63));
            for (int i15 = 0; i15 < this.HFEDegI; i15++) {
                sqr_gf2n(pointer6, this.NB_WORD_GFqn, pointer6, 0);
                pointer6.move(this.NB_WORD_GFqn);
            }
            pointer6.move(this.NB_WORD_GFqn);
        }
        pointer6.indexReset();
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        pointer2.move(this.MQv_GFqn_SIZE);
        pointer.move(this.NB_WORD_GFqn);
        Pointer pointer7 = new Pointer(this.HFEDegI * this.HFEn * this.NB_WORD_GFqn);
        special_buffer(pointer7, pointer2, pointer6);
        Pointer pointer8 = new Pointer(pointer7);
        Pointer pointer9 = new Pointer(pointer7);
        pointer.copyFrom(pointer9, this.NB_WORD_GFqn);
        pointer9.move(this.NB_WORD_GFqn);
        pointer.setXorMatrix_NoMove(pointer9, this.NB_WORD_GFqn, this.HFEDegI - 1);
        pointer5.changeIndex(pointer4);
        pointer.setXorMatrix(pointer5, this.NB_WORD_GFqn, this.HFEDegI + 1);
        Pointer pointer10 = new Pointer(pointer6, this.NB_WORD_GFqn);
        int i16 = 1;
        while (i16 < this.HFEn) {
            dotProduct_gf2n(pointer, pointer10, pointer8, this.HFEDegI);
            pointer10.move(this.SIZE_ROW * this.NB_WORD_GFqn);
            pointer.setXorMatrix(pointer9, this.NB_WORD_GFqn, this.HFEDegI);
            i16++;
        }
        while (i16 < this.HFEnv) {
            pointer.copyFrom(pointer5, this.NB_WORD_GFqn);
            pointer5.move(this.NB_WORD_GFqn);
            pointer.setXorMatrix(pointer5, this.NB_WORD_GFqn, this.HFEDegI);
            i16++;
        }
        Pointer pointer11 = new Pointer(pointer6, this.NB_WORD_GFqn);
        Pointer pointer12 = new Pointer(this.NB_WORD_MUL);
        int i17 = 1;
        while (i17 < this.HFEn) {
            pointer8.move(this.HFEDegI * this.NB_WORD_GFqn);
            pointer10.changeIndex(pointer11);
            pointer9.changeIndex(pointer8);
            this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer4, new Pointer(pointer10, -this.NB_WORD_GFqn));
            int i18 = 1;
            while (i18 <= this.HFEDegI) {
                int i19 = this.NB_WORD_GFqn;
                Pointer pointer13 = pointer10;
                Pointer pointer14 = pointer9;
                pointer3.setRangeFromXor(0, pointer9, 0, pointer4, i18 * i19, i19);
                mul_xorrange(this.Buffer_NB_WORD_MUL, pointer3, pointer13);
                pointer14.move(this.NB_WORD_GFqn);
                pointer13.move(this.NB_WORD_GFqn);
                i18++;
                pointer9 = pointer14;
                pointer10 = pointer13;
                pointer11 = pointer11;
                i17 = i17;
                pointer12 = pointer12;
            }
            Pointer pointer15 = pointer12;
            Pointer pointer16 = pointer11;
            Pointer pointer17 = pointer10;
            Pointer pointer18 = pointer9;
            pointer17.move(this.NB_WORD_GFqn);
            rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
            pointer.move(this.NB_WORD_GFqn);
            int i20 = i17 + 1;
            int i21 = i20;
            while (i21 < this.HFEn) {
                int index = pointer17.getIndex();
                int index2 = pointer8.getIndex();
                int index3 = pointer16.getIndex();
                int index4 = pointer18.getIndex();
                mul_move(pointer15, pointer17, pointer8);
                for_mul_xorrange_move(pointer15, pointer17, pointer8, this.HFEDegI - 1);
                int i22 = i20;
                Pointer pointer19 = pointer16;
                for_mul_xorrange_move(pointer15, pointer19, pointer18, this.HFEDegI);
                rem_gf2n(pointer, 0, pointer15);
                pointer17.changeIndex((this.SIZE_ROW * this.NB_WORD_GFqn) + index);
                pointer8.changeIndex(index2);
                pointer19.changeIndex(index3);
                pointer18.changeIndex((this.HFEDegI * this.NB_WORD_GFqn) + index4);
                pointer.move(this.NB_WORD_GFqn);
                i21++;
                pointer3 = pointer3;
                pointer16 = pointer19;
                i20 = i22;
            }
            int i23 = i20;
            Pointer pointer20 = pointer16;
            Pointer pointer21 = pointer3;
            pointer5.changeIndex(pointer4);
            pointer20.move(-this.NB_WORD_GFqn);
            while (i21 < this.HFEnv) {
                pointer5.move((this.HFEDegI + 1) * this.NB_WORD_GFqn);
                dotProduct_gf2n(pointer, pointer20, pointer5, this.HFEDegI + 1);
                pointer.move(this.NB_WORD_GFqn);
                i21++;
            }
            int i24 = this.NB_WORD_GFqn;
            pointer20.move((this.SIZE_ROW * i24) + i24);
            pointer9 = pointer18;
            pointer10 = pointer17;
            pointer11 = pointer20;
            pointer12 = pointer15;
            i17 = i23;
            pointer3 = pointer21;
        }
        pointer2.move(this.NB_WORD_GFqn - this.MQv_GFqn_SIZE);
        pointer.copyFrom(pointer2, (this.NB_MONOMIAL_VINEGAR - 1) * this.NB_WORD_GFqn);
        pointer.indexReset();
        pointer2.indexReset();
    }

    public int interpolateHFE_FS_ref(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        Pointer pointer4 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer5 = new Pointer();
        Pointer pointer6 = new Pointer();
        Pointer pointer7 = new Pointer(this.HFEnv * this.NB_WORD_GFqn);
        pointer.copyFrom(pointer2, this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(pointer3);
        Pointer pointer9 = new Pointer(pointer7);
        for (int i10 = 0; i10 < this.HFEnv; i10++) {
            evalHFEv_gf2nx(pointer9, pointer2, pointer8);
            pointer9.move(this.NB_WORD_GFqn);
            pointer8.move(this.NB_WORD_GF2nv);
        }
        pointer8.changeIndex(pointer3);
        pointer9.changeIndex(pointer7);
        int i11 = 0;
        while (i11 < this.HFEnv) {
            pointer.move(this.NB_WORD_GFqn);
            pointer9.setXorRange(pointer2, this.NB_WORD_GFqn);
            pointer.copyFrom(pointer9, this.NB_WORD_GFqn);
            pointer5.changeIndex(pointer9);
            pointer6.changeIndex(pointer8);
            int i12 = i11 + 1;
            for (int i13 = i12; i13 < this.HFEnv; i13++) {
                pointer.move(this.NB_WORD_GFqn);
                pointer5.move(this.NB_WORD_GFqn);
                pointer6.move(this.NB_WORD_GF2nv);
                pointer4.setRangeFromXor(pointer8, pointer6, this.NB_WORD_GF2nv);
                evalHFEv_gf2nx(pointer, pointer2, pointer4);
                pointer.setXorRangeXor(0, pointer9, 0, pointer5, 0, this.NB_WORD_GFqn);
            }
            pointer9.move(this.NB_WORD_GFqn);
            pointer8.move(this.NB_WORD_GF2nv);
            i11 = i12;
        }
        pointer.indexReset();
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void invMatrixLU_gf2(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Pointer pointer4;
        long j10;
        int i15;
        int i16;
        Pointer pointer5 = new Pointer(pointer2);
        Pointer pointer6 = new Pointer(pointer2);
        Pointer pointer7 = new Pointer(pointer3);
        int i17 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (i17 == 1) {
            pointer.setRangeClear(0, this.MATRIXn_SIZE);
            i10 = this.HFEnq;
            i11 = this.HFEn - 1;
            i12 = this.NB_WORD_GFqn;
            i13 = this.HFEnr;
            i14 = this.LTRIANGULAR_N_SIZE;
        } else {
            if (i17 != 2) {
                throw new IllegalArgumentException("Invalid Input");
            }
            i10 = this.HFEnvq;
            i11 = this.HFEnv - 1;
            i12 = this.NB_WORD_GF2nv;
            i13 = this.HFEnvr;
            i14 = this.LTRIANGULAR_NV_SIZE;
        }
        int i18 = i10;
        int i19 = i11;
        int i20 = i12;
        int i21 = i13;
        int i22 = i14;
        Pointer pointer8 = new Pointer(pointer);
        Pointer pointer9 = new Pointer(pointer);
        int i23 = 0;
        int iLoop_xor_loop_move_xorandmask_move = 0;
        while (i23 < i18) {
            int i24 = i23;
            int i25 = i20;
            iLoop_xor_loop_move_xorandmask_move = loop_xor_loop_move_xorandmask_move(pointer8, pointer9, pointer5, pointer6, iLoop_xor_loop_move_xorandmask_move, i24, 64, i19, i25);
            pointer6.moveIncremental();
            i23 = i24 + 1;
            pointer9 = pointer9;
            pointer8 = pointer8;
            i21 = i21;
            i22 = i22;
            i18 = i18;
            i20 = i25;
        }
        int i26 = i23;
        Pointer pointer10 = pointer9;
        Pointer pointer11 = pointer8;
        int i27 = i22;
        int i28 = i21;
        int i29 = i20;
        if (i28 <= 1) {
            pointer4 = pointer11;
            j10 = 1;
            i15 = i29;
            if (i28 == 1) {
                pointer4.set(i26, 1L);
            }
            pointer7.move(i27);
            i16 = i19;
            while (i16 > 0) {
                pointer7.move((-1) - (i16 >>> 6));
                pointer4.move(-i15);
                Pointer pointer12 = pointer10;
                pointer12.changeIndex(pointer);
                for (int i30 = 0; i30 < i16; i30++) {
                    pointer12.setXorRangeAndMask(pointer4, i15, -((pointer7.get(i30 >>> 6) >>> (i30 & 63)) & j10));
                    pointer12.move(i15);
                }
                i16--;
                pointer10 = pointer12;
            }
        }
        int i31 = i28 - 1;
        j10 = 1;
        loop_xor_loop_move_xorandmask_move(pointer11, pointer10, pointer5, pointer6, iLoop_xor_loop_move_xorandmask_move, i26, i31, i19, i29);
        pointer4 = pointer11;
        pointer4.setXor(i26, 1 << i31);
        i15 = i29;
        pointer4.move(i15);
        pointer7.move(i27);
        i16 = i19;
        while (i16 > 0) {
        }
    }

    public void mul_gf2n(Pointer pointer, Pointer pointer2, int i10, Pointer pointer3) {
        int index = pointer2.getIndex();
        pointer2.move(i10);
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        pointer2.changeIndex(index);
        rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
    }

    public void mul_move(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(pointer, pointer2, pointer3);
        pointer2.move(this.NB_WORD_GFqn);
        pointer3.move(this.NB_WORD_GFqn);
    }

    public void mul_rem_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        this.rem.rem_gf2n_xor(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
    }

    public void mul_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x_xor(pointer, pointer2, pointer3);
    }

    public void signHFE_FeistelPatarin(SecureRandom secureRandom, byte[] bArr, byte[] bArr2, int i10, int i11, byte[] bArr3) {
        int i12;
        Pointer pointer;
        int i13;
        int i14;
        SecretKeyHFE secretKeyHFE;
        Pointer pointer2;
        long j10;
        PointerUnion pointerUnion;
        PointerUnion pointerUnion2;
        Pointer pointer3;
        Pointer pointer4;
        SecretKeyHFE secretKeyHFE2;
        Pointer pointer5;
        long j11;
        Pointer pointer6;
        this.random = secureRandom;
        Pointer pointer7 = new Pointer(this.NB_WORD_GFqn);
        Pointer pointer8 = new Pointer(this.SIZE_DIGEST_UINT);
        Pointer pointer9 = new Pointer(new Pointer(this.SIZE_DIGEST_UINT));
        int i15 = this.HFEv;
        int i16 = i15 & 7;
        int i17 = (i15 >>> 3) + (i16 != 0 ? 1 : 0);
        long jMaskUINT = GeMSSUtils.maskUINT(this.HFEvr);
        SecretKeyHFE secretKeyHFE3 = new SecretKeyHFE(this);
        Pointer pointer10 = new Pointer(this.NB_WORD_GFqv);
        Pointer[] pointerArr = new Pointer[this.HFEDegI + 1];
        precSignHFE(secretKeyHFE3, pointerArr, bArr3);
        Pointer pointer11 = new Pointer(secretKeyHFE3.F_struct.poly);
        Pointer pointer12 = new Pointer(pointer8);
        int i18 = this.Sha3BitStrength >>> 3;
        Pointer pointer13 = pointer10;
        SecretKeyHFE secretKeyHFE4 = secretKeyHFE3;
        long j12 = jMaskUINT;
        Pointer pointer14 = pointer9;
        getSHA3Hash(pointer12, 0, i18, bArr2, i10, i11, new byte[i18]);
        Pointer pointer15 = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
        Pointer pointer16 = new Pointer(this.NB_WORD_GF2nv);
        PointerUnion pointerUnion3 = new PointerUnion(pointer16);
        long j13 = 0;
        int i19 = 1;
        while (true) {
            i12 = this.NB_ITE;
            if (i19 > i12) {
                break;
            }
            pointer16.setRangeFromXor(pointer15, pointer12, this.NB_WORD_GF2m);
            if (this.HFEmr8 != 0) {
                pointer16.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
                j13 = pointerUnion3.getByte(this.HFEmq8);
            }
            long j14 = j13;
            while (true) {
                if (this.HFEmr8 != 0) {
                    pointerUnion3.fillRandomBytes(this.HFEmq8, secureRandom, (this.NB_BYTES_GFqn - this.NB_BYTES_GFqm) + 1);
                    pointer = pointer12;
                    i13 = i19;
                    pointerUnion3.setAndThenXorByte(this.HFEmq8, -(1 << this.HFEmr8), j14);
                } else {
                    pointer = pointer12;
                    i13 = i19;
                    int i20 = this.NB_BYTES_GFqm;
                    pointerUnion3.fillRandomBytes(i20, secureRandom, this.NB_BYTES_GFqn - i20);
                }
                if ((this.HFEn & 7) != 0) {
                    i14 = 1;
                    pointer16.setAnd(this.NB_WORD_GFqn - 1, this.MASK_GF2n);
                } else {
                    i14 = 1;
                }
                secretKeyHFE = secretKeyHFE4;
                vecMatProduct(pointer7, pointer16, secretKeyHFE.T, FunctionParams.N);
                pointer2 = pointer13;
                pointer2.fillRandom(0, secureRandom, i17);
                if (i16 != 0) {
                    j10 = j12;
                    pointer2.setAnd(this.NB_WORD_GFqv - i14, j10);
                } else {
                    j10 = j12;
                }
                evalMQSv_unrolled_gf2(pointer11, pointer2, secretKeyHFE.F_HFEv);
                int i21 = 0;
                while (i21 <= this.HFEDegI) {
                    PointerUnion pointerUnion4 = pointerUnion3;
                    vecMatProduct(this.Buffer_NB_WORD_GFqn, pointer2, new Pointer(pointerArr[i21], this.NB_WORD_GFqn), FunctionParams.V);
                    int i22 = this.NB_WORD_GFqn;
                    int i23 = i21 + 1;
                    pointer11.setRangeFromXor((((i21 * i23) >>> 1) + 1) * i22, pointerArr[i21], 0, this.Buffer_NB_WORD_GFqn, 0, i22);
                    pointerUnion3 = pointerUnion4;
                    i21 = i23;
                    j10 = j10;
                }
                pointerUnion = pointerUnion3;
                j12 = j10;
                if (chooseRootHFE_gf2nx(pointer16, secretKeyHFE.F_struct, pointer7) != 0) {
                    break;
                }
                pointerUnion3 = pointerUnion;
                pointer13 = pointer2;
                secretKeyHFE4 = secretKeyHFE;
                i19 = i13;
                pointer12 = pointer;
            }
            pointer16.setXor(this.NB_WORD_GFqn - 1, pointer2.get() << this.HFEnr);
            pointer16.setRangeRotate(this.NB_WORD_GFqn, pointer2, 0, this.NB_WORD_GFqv - 1, 64 - this.HFEnr);
            int i24 = this.NB_WORD_GFqn;
            int i25 = this.NB_WORD_GFqv;
            if (i24 + i25 == this.NB_WORD_GF2nv) {
                pointer16.set((i24 + i25) - 1, pointer2.get(i25 - 1) >>> (64 - this.HFEnr));
            }
            vecMatProduct(pointer15, pointer16, secretKeyHFE.S, FunctionParams.NV);
            int i26 = this.NB_ITE;
            if (i13 != i26) {
                int i27 = this.NB_WORD_GF2nv;
                int i28 = this.NB_WORD_GF2nvm;
                int i29 = (((i26 - 1) - i13) * i28) + i27;
                pointer15.copyFrom(i29, pointer15, i27 - i28, i28);
                if (this.HFEmr != 0) {
                    pointer15.setAnd(i29, this.MASK_GF2m ^ (-1));
                }
                Pointer pointer17 = pointer;
                byte[] bytes = pointer17.toBytes(this.SIZE_DIGEST);
                pointerUnion2 = pointerUnion;
                j11 = j12;
                pointer4 = pointer2;
                secretKeyHFE2 = secretKeyHFE;
                pointer5 = pointer16;
                getSHA3Hash(pointer14, 0, this.SIZE_DIGEST, bytes, 0, bytes.length, bytes);
                pointer6 = pointer14;
                pointer3 = pointer17;
                pointer6.swap(pointer3);
            } else {
                pointerUnion2 = pointerUnion;
                pointer3 = pointer;
                pointer4 = pointer2;
                secretKeyHFE2 = secretKeyHFE;
                pointer5 = pointer16;
                j11 = j12;
                pointer6 = pointer14;
            }
            i19 = i13 + 1;
            pointer14 = pointer6;
            pointer12 = pointer3;
            secretKeyHFE4 = secretKeyHFE2;
            pointerUnion3 = pointerUnion2;
            pointer16 = pointer5;
            pointer13 = pointer4;
            j12 = j11;
            j13 = j14;
        }
        if (i12 == 1) {
            System.arraycopy(pointer15.toBytes(pointer15.getLength() << 3), 0, bArr, 0, this.NB_BYTES_GFqnv);
        } else {
            compress_signHFE(bArr, pointer15);
        }
    }

    public int sign_openHFE_huncomp_pk(byte[] bArr, int i10, byte[] bArr2, PointerUnion pointerUnion, PointerUnion pointerUnion2) {
        Pointer pointer = new Pointer(this.SIZE_SIGN_UNCOMPRESSED);
        Pointer pointer2 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer3 = new Pointer(this.NB_WORD_GF2nv);
        Pointer pointer4 = new Pointer(pointer2);
        Pointer pointer5 = new Pointer(pointer3);
        byte[] bArr3 = new byte[64];
        Pointer pointer6 = new Pointer(this.NB_ITE * this.SIZE_DIGEST_UINT);
        long j10 = pointerUnion2.get();
        pointerUnion2.move(1);
        uncompress_signHFE(pointer, bArr2);
        getSHA3Hash(pointer6, 0, 64, bArr, 0, i10, bArr3);
        int i11 = 1;
        while (i11 < this.NB_ITE) {
            int i12 = i11;
            getSHA3Hash(pointer6, i11 * this.SIZE_DIGEST_UINT, 64, bArr3, 0, this.SIZE_DIGEST, bArr3);
            pointer6.setAnd((((i12 - 1) * this.SIZE_DIGEST_UINT) + this.NB_WORD_GF2m) - 1, this.MASK_GF2m);
            i11 = i12 + 1;
        }
        pointer6.setAnd((((i11 - 1) * this.SIZE_DIGEST_UINT) + this.NB_WORD_GF2m) - 1, this.MASK_GF2m);
        evalMQShybrid8_uncomp_nocst_gf2_m(pointer4, pointer, pointerUnion, pointerUnion2);
        pointer4.setXor(this.HFEmq, j10);
        for (int i13 = this.NB_ITE - 1; i13 > 0; i13--) {
            pointer4.setXorRange(pointer6, this.SIZE_DIGEST_UINT * i13, this.NB_WORD_GF2m);
            int i14 = (((this.NB_ITE - 1) - i13) * this.NB_WORD_GF2nvm) + this.NB_WORD_GF2nv;
            pointer4.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
            pointer4.setXor(this.NB_WORD_GF2m - 1, pointer.get(i14));
            int i15 = this.NB_WORD_GF2nvm;
            if (i15 != 1) {
                pointer4.copyFrom(this.NB_WORD_GF2m, pointer, i14 + 1, i15 - 1);
            }
            evalMQShybrid8_uncomp_nocst_gf2_m(pointer5, pointer4, pointerUnion, pointerUnion2);
            pointer5.setXor(this.HFEmq, j10);
            pointer5.swap(pointer4);
        }
        return pointer4.isEqual_nocst_gf2(pointer6, this.NB_WORD_GF2m);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bb A[LOOP:2: B:43:0x00b9->B:44:0x00bb, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void vecMatProduct(Pointer pointer, Pointer pointer2, Pointer pointer3, FunctionParams functionParams) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j10;
        int i15;
        int i16;
        Pointer pointer4 = new Pointer(pointer3);
        int i17 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        int i18 = 0;
        if (i17 == 1) {
            pointer.setRangeClear(0, this.NB_WORD_GFqn);
            i10 = this.NB_WORD_GFqn;
            i11 = this.HFEnq;
        } else if (i17 == 2) {
            pointer.setRangeClear(0, this.NB_WORD_GF2nv);
            i11 = this.HFEnvq;
            i10 = this.NB_WORD_GF2nv;
        } else {
            if (i17 != 3) {
                if (i17 != 4) {
                    throw new IllegalArgumentException("Invalid input for vecMatProduct");
                }
                pointer.setRangeClear(0, this.NB_WORD_GF2m);
                i11 = this.HFEnq;
                i10 = this.NB_WORD_GF2m;
                i12 = this.NB_WORD_GFqn;
                i13 = 0;
                while (i13 < i11) {
                    long j11 = pointer2.get(i13);
                    while (i18 < 64) {
                        pointer.setXorRangeAndMask(pointer4, i10, -(j11 & 1));
                        pointer4.move(i12);
                        j11 >>>= 1;
                        i18++;
                    }
                    i13++;
                    i18 = 0;
                }
                i14 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
                if (i14 == 1) {
                    j10 = pointer2.get(this.HFEnq);
                    i15 = this.HFEnr;
                } else if (i14 == 2) {
                    if (this.HFEnvr == 0) {
                        return;
                    }
                    j10 = pointer2.get(this.HFEnvq);
                    i15 = this.HFEnvr;
                } else if (i14 != 3) {
                    if (i14 != 4) {
                        throw new IllegalArgumentException("Invalid input for vecMatProduct");
                    }
                    j10 = pointer2.get(this.HFEnq);
                    i15 = this.HFEnr;
                } else {
                    if (this.HFEvr == 0) {
                        return;
                    }
                    j10 = pointer2.get(this.HFEvq);
                    i15 = this.HFEvr;
                }
                for (i16 = 0; i16 < i15; i16++) {
                    pointer.setXorRangeAndMask(pointer4, i10, -(j10 & 1));
                    pointer4.move(i12);
                    j10 >>>= 1;
                }
                if (functionParams == FunctionParams.M || this.HFEmr == 0) {
                }
                pointer.setAnd(this.NB_WORD_GF2m - 1, this.MASK_GF2m);
                return;
            }
            pointer.setRangeClear(0, this.NB_WORD_GFqn);
            i10 = this.NB_WORD_GFqn;
            i11 = this.HFEvq;
        }
        i12 = i10;
        i13 = 0;
        while (i13 < i11) {
        }
        i14 = AnonymousClass1.$SwitchMap$org$bouncycastle$pqc$legacy$crypto$gemss$GeMSSEngine$FunctionParams[functionParams.ordinal()];
        if (i14 == 1) {
        }
        while (i16 < i15) {
        }
        if (functionParams == FunctionParams.M) {
        }
    }

    private void sqr_gf2n(Pointer pointer, Pointer pointer2) {
        this.mul.sqr_gf2x(this.Buffer_NB_WORD_MUL.array, pointer2.array, pointer2.cp);
        this.rem.rem_gf2n(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
    }

    public void mul_gf2n(Pointer pointer, Pointer pointer2, Pointer pointer3) {
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        rem_gf2n(pointer, 0, this.Buffer_NB_WORD_MUL);
    }

    public void mul_rem_xorrange(Pointer pointer, Pointer pointer2, Pointer pointer3, int i10) {
        int index = pointer3.getIndex();
        pointer3.move(i10);
        this.mul.mul_gf2x(this.Buffer_NB_WORD_MUL, pointer2, pointer3);
        this.rem.rem_gf2n_xor(pointer.array, pointer.cp, this.Buffer_NB_WORD_MUL.array);
        pointer3.changeIndex(index);
    }
}
