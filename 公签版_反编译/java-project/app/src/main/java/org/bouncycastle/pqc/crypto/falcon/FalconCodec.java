package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes3.dex */
class FalconCodec {
    static final byte[] max_fg_bits = {0, 8, 8, 8, 8, 8, 7, 7, 6, 6, 5};
    static final byte[] max_FG_bits = {0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};

    public static int comp_decode(short[] sArr, int i10, byte[] bArr, int i11) {
        int i12 = 1 << i10;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < i12; i16++) {
            if (i15 >= i11) {
                return 0;
            }
            i13 = (i13 << 8) | (bArr[i15] & 255);
            i15++;
            int i17 = i13 >>> i14;
            int i18 = i17 & 128;
            int i19 = i17 & 127;
            do {
                if (i14 == 0) {
                    if (i15 >= i11) {
                        return 0;
                    }
                    i13 = (i13 << 8) | (bArr[i15] & 255);
                    i15++;
                    i14 = 8;
                }
                i14--;
                if (((i13 >>> i14) & 1) == 0) {
                    i19 += 128;
                } else {
                    if (i18 != 0 && i19 == 0) {
                        return 0;
                    }
                    if (i18 != 0) {
                        i19 = -i19;
                    }
                    sArr[i16] = (short) i19;
                }
            } while (i19 <= 2047);
            return 0;
        }
        if ((((1 << i14) - 1) & i13) != 0) {
            return 0;
        }
        return i15;
    }

    public static int comp_encode(byte[] bArr, int i10, short[] sArr, int i11) {
        int i12 = 1 << i11;
        for (int i13 = 0; i13 < i12; i13++) {
            short s8 = sArr[i13];
            if (s8 < -2047 || s8 > 2047) {
                return 0;
            }
        }
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < i12; i17++) {
            int i18 = i15 << 1;
            short s10 = sArr[i17];
            int i19 = s10;
            if (s10 < 0) {
                i18 |= 1;
                i19 = -s10;
            }
            int i20 = (i18 << 7) | (i19 & 127);
            int i21 = (i19 >>> 7) + 1;
            i15 = (i20 << i21) | 1;
            i14 = i14 + 8 + i21;
            while (i14 >= 8) {
                i14 -= 8;
                if (bArr != null) {
                    if (i16 >= i10) {
                        return 0;
                    }
                    bArr[i16] = (byte) (i15 >>> i14);
                }
                i16++;
            }
        }
        if (i14 <= 0) {
            return i16;
        }
        if (bArr != null) {
            if (i16 >= i10) {
                return 0;
            }
            bArr[i16] = (byte) (i15 << (8 - i14));
        }
        return i16 + 1;
    }

    public static int modq_decode(short[] sArr, int i10, byte[] bArr, int i11) {
        int i12 = 1 << i10;
        int i13 = ((i12 * 14) + 7) >> 3;
        if (i13 > i11) {
            return 0;
        }
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i14 < i12) {
            int i18 = i17 + 1;
            i15 = (i15 << 8) | (bArr[i17] & 255);
            int i19 = i16 + 8;
            if (i19 >= 14) {
                i16 -= 6;
                int i20 = (i15 >>> i16) & 16383;
                if (i20 >= 12289) {
                    return 0;
                }
                sArr[i14] = (short) i20;
                i14++;
            } else {
                i16 = i19;
            }
            i17 = i18;
        }
        if ((((1 << i16) - 1) & i15) != 0) {
            return 0;
        }
        return i13;
    }

    public static int modq_encode(byte[] bArr, int i10, short[] sArr, int i11) {
        int i12 = 1;
        int i13 = 1 << i11;
        for (int i14 = 0; i14 < i13; i14++) {
            if ((65535 & sArr[i14]) >= 12289) {
                return 0;
            }
        }
        int i15 = ((i13 * 14) + 7) >> 3;
        if (bArr == null) {
            return i15;
        }
        if (i15 > i10) {
            return 0;
        }
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < i13; i18++) {
            i17 = (i17 << 14) | (sArr[i18] & HPKE.aead_EXPORT_ONLY);
            i16 += 14;
            while (i16 >= 8) {
                i16 -= 8;
                bArr[i12] = (byte) (i17 >> i16);
                i12++;
            }
        }
        if (i16 > 0) {
            bArr[i12] = (byte) (i17 << (8 - i16));
        }
        return i15;
    }

    public static int trim_i8_decode(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14 = 1 << i10;
        int i15 = ((i14 * i11) + 7) >> 3;
        if (i15 > i13) {
            return 0;
        }
        int i16 = (1 << i11) - 1;
        int i17 = 1 << (i11 - 1);
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i18 < i14) {
            int i21 = i12 + 1;
            i19 = (i19 << 8) | (bArr2[i12] & 255);
            i20 += 8;
            while (i20 >= i11 && i18 < i14) {
                i20 -= i11;
                int i22 = (i19 >>> i20) & i16;
                int i23 = i22 | (-(i22 & i17));
                if (i23 == (-i17)) {
                    return 0;
                }
                bArr[i18] = (byte) i23;
                i18++;
            }
            i12 = i21;
        }
        if ((((1 << i20) - 1) & i19) != 0) {
            return 0;
        }
        return i15;
    }

    public static int trim_i8_encode(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14 = 1 << i12;
        int i15 = (1 << (i13 - 1)) - 1;
        int i16 = -i15;
        for (int i17 = 0; i17 < i14; i17++) {
            int i18 = bArr2[i17];
            if (i18 < i16 || i18 > i15) {
                return 0;
            }
        }
        int i19 = ((i14 * i13) + 7) >> 3;
        if (bArr == null) {
            return i19;
        }
        if (i19 > i11) {
            return 0;
        }
        int i20 = (1 << i13) - 1;
        int i21 = 0;
        int i22 = 0;
        for (int i23 = 0; i23 < i14; i23++) {
            i22 = (i22 << i13) | (bArr2[i23] & 65535 & i20);
            i21 += i13;
            while (i21 >= 8) {
                i21 -= 8;
                bArr[i10] = (byte) (i22 >>> i21);
                i10++;
            }
        }
        if (i21 > 0) {
            bArr[i10] = (byte) (i22 << (8 - i21));
        }
        return i19;
    }
}
