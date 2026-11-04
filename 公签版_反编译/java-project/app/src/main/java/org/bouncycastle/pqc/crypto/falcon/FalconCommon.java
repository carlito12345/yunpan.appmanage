package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes3.dex */
class FalconCommon {
    static final int[] l2bound = {0, 101498, 208714, 428865, 892039, 1852696, 3842630, 7959734, 16468416, 34034726, 70265242};

    public static void hash_to_point_vartime(SHAKEDigest sHAKEDigest, short[] sArr, int i10) {
        int i11 = 1 << i10;
        byte[] bArr = new byte[2];
        int i12 = 0;
        while (i11 > 0) {
            sHAKEDigest.doOutput(bArr, 0, 2);
            int i13 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
            if (i13 < 61445) {
                sArr[i12] = (short) (i13 % 12289);
                i11--;
                i12++;
            }
        }
    }

    public static int is_short(short[] sArr, int i10, short[] sArr2, int i11) {
        int i12 = 1 << i11;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < i12) {
            short s8 = sArr[i10 + i13];
            int i16 = (s8 * s8) + i14;
            int i17 = i15 | i16;
            short s10 = sArr2[i13];
            int i18 = (s10 * s10) + i16;
            i13++;
            i15 = i17 | i18;
            i14 = i18;
        }
        return (((long) ((-(i15 >>> 31)) | i14)) & 4294967295L) <= ((long) l2bound[i11]) ? 1 : 0;
    }

    public static int is_short_half(int i10, short[] sArr, int i11) {
        int i12 = 1 << i11;
        int i13 = -(i10 >>> 31);
        for (int i14 = 0; i14 < i12; i14++) {
            short s8 = sArr[i14];
            i10 += s8 * s8;
            i13 |= i10;
        }
        return (((long) (i10 | (-(i13 >>> 31)))) & 4294967295L) <= ((long) l2bound[i11]) ? 1 : 0;
    }
}
