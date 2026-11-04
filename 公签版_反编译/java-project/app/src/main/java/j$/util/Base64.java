package j$.util;

import j$.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes2.dex */
public class Base64 {
    public static Encoder getEncoder() {
        return Encoder.f9002c;
    }

    public static Decoder getDecoder() {
        return Decoder.f8999c;
    }

    public static class Encoder {

        /* renamed from: a, reason: collision with root package name */
        private static final char[] f9000a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

        /* renamed from: b, reason: collision with root package name */
        private static final char[] f9001b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};

        /* renamed from: c, reason: collision with root package name */
        static final Encoder f9002c = new Encoder();

        private Encoder() {
        }

        public String encodeToString(byte[] bArr) {
            int length = ((bArr.length + 2) / 3) * 4;
            byte[] bArrCopyOf = new byte[length];
            int length2 = bArr.length;
            char[] cArr = f9000a;
            int i10 = (length2 / 3) * 3;
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int iMin = Math.min(i11 + i10, i10);
                int i13 = i11;
                int i14 = i12;
                while (i13 < iMin) {
                    int i15 = i13 + 2;
                    int i16 = ((bArr[i13 + 1] & 255) << 8) | ((bArr[i13] & 255) << 16);
                    i13 += 3;
                    int i17 = i16 | (bArr[i15] & 255);
                    bArrCopyOf[i14] = (byte) cArr[(i17 >>> 18) & 63];
                    bArrCopyOf[i14 + 1] = (byte) cArr[(i17 >>> 12) & 63];
                    int i18 = i14 + 3;
                    bArrCopyOf[i14 + 2] = (byte) cArr[(i17 >>> 6) & 63];
                    i14 += 4;
                    bArrCopyOf[i18] = (byte) cArr[i17 & 63];
                }
                int i19 = ((iMin - i11) / 3) * 4;
                i12 += i19;
                if (i19 == -1 && iMin < length2) {
                    throw null;
                }
                i11 = iMin;
            }
            if (i11 < length2) {
                int i20 = i11 + 1;
                int i21 = bArr[i11] & 255;
                int i22 = i12 + 1;
                bArrCopyOf[i12] = (byte) cArr[i21 >> 2];
                if (i20 == length2) {
                    bArrCopyOf[i22] = (byte) cArr[(i21 << 4) & 63];
                    int i23 = i12 + 3;
                    bArrCopyOf[i12 + 2] = 61;
                    i12 += 4;
                    bArrCopyOf[i23] = 61;
                } else {
                    int i24 = bArr[i20] & 255;
                    bArrCopyOf[i22] = (byte) cArr[((i21 << 4) & 63) | (i24 >> 4)];
                    int i25 = i12 + 3;
                    bArrCopyOf[i12 + 2] = (byte) cArr[(i24 << 2) & 63];
                    i12 += 4;
                    bArrCopyOf[i25] = 61;
                }
            }
            if (i12 != length) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i12);
            }
            return new String(bArrCopyOf, 0, 0, bArrCopyOf.length);
        }
    }

    public static class Decoder {

        /* renamed from: a, reason: collision with root package name */
        private static final int[] f8997a;

        /* renamed from: b, reason: collision with root package name */
        private static final int[] f8998b;

        /* renamed from: c, reason: collision with root package name */
        static final Decoder f8999c;

        private Decoder() {
        }

        static {
            int[] iArr = new int[256];
            f8997a = iArr;
            Arrays.fill(iArr, -1);
            for (int i10 = 0; i10 < 64; i10++) {
                f8997a[Encoder.f9000a[i10]] = i10;
            }
            f8997a[61] = -2;
            int[] iArr2 = new int[256];
            f8998b = iArr2;
            Arrays.fill(iArr2, -1);
            for (int i11 = 0; i11 < 64; i11++) {
                f8998b[Encoder.f9001b[i11]] = i11;
            }
            f8998b[61] = -2;
            f8999c = new Decoder();
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x00bb, code lost:
        
            if (r10 != 18) goto L53;
         */
        /* JADX WARN: Removed duplicated region for block: B:32:0x009e A[PHI: r9 r11
  0x009e: PHI (r9v3 int) = (r9v1 int), (r9v1 int), (r9v9 int) binds: [B:21:0x0041, B:23:0x0045, B:30:0x009a] A[DONT_GENERATE, DONT_INLINE]
  0x009e: PHI (r11v6 int) = (r11v1 int), (r11v1 int), (r11v9 int) binds: [B:21:0x0041, B:23:0x0045, B:30:0x009a] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] decode(String str) {
            int i10;
            int i11;
            int i12;
            byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
            int length = bytes.length;
            int[] iArr = f8997a;
            if (length == 0) {
                i11 = 0;
            } else {
                if (length < 2) {
                    throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
                }
                if (bytes[length - 1] == 61) {
                    i10 = bytes[length + (-2)] == 61 ? 2 : 1;
                } else {
                    i10 = 0;
                }
                if (i10 == 0 && (i12 = length & 3) != 0) {
                    i10 = 4 - i12;
                }
                i11 = (((length + 3) / 4) * 3) - i10;
            }
            byte[] bArr = new byte[i11];
            int length2 = bytes.length;
            int i13 = 18;
            int i14 = 0;
            int i15 = 18;
            int i16 = 0;
            int i17 = 0;
            while (true) {
                if (i14 >= length2) {
                    break;
                }
                if (i15 != i13 || i14 + 4 >= length2) {
                    int i18 = i14 + 1;
                    int i19 = iArr[bytes[i14] & 255];
                    if (i19 >= 0) {
                        int i20 = (i19 << i15) | i17;
                        i15 -= 6;
                        if (i15 < 0) {
                            bArr[i16] = (byte) (i20 >> 16);
                            int i21 = i16 + 2;
                            bArr[i16 + 1] = (byte) (i20 >> 8);
                            i16 += 3;
                            bArr[i21] = (byte) i20;
                            i15 = 18;
                            i17 = 0;
                        } else {
                            i17 = i20;
                        }
                        i14 = i18;
                        i13 = 18;
                    } else {
                        if (i19 != -2) {
                            throw new IllegalArgumentException("Illegal base64 character " + Integer.toString(bytes[i14], 16));
                        }
                        if (i15 == 6) {
                            if (i18 != length2) {
                                i14 += 2;
                                if (bytes[i18] == 61) {
                                }
                            }
                            throw new IllegalArgumentException("Input byte array has wrong 4-byte ending unit");
                        }
                        i14 = i18;
                    }
                } else {
                    int i22 = ((length2 - i14) & (-4)) + i14;
                    while (i14 < i22) {
                        int i23 = iArr[bytes[i14] & 255];
                        int i24 = iArr[bytes[i14 + 1] & 255];
                        int i25 = iArr[bytes[i14 + 2] & 255];
                        int i26 = i14 + 4;
                        int i27 = iArr[bytes[i14 + 3] & 255];
                        if ((i23 | i24 | i25 | i27) < 0) {
                            break;
                        }
                        int i28 = i27 | (i23 << 18) | (i24 << 12) | (i25 << 6);
                        bArr[i16] = (byte) (i28 >> 16);
                        int i29 = i16 + 2;
                        bArr[i16 + 1] = (byte) (i28 >> 8);
                        i16 += 3;
                        bArr[i29] = (byte) i28;
                        i14 = i26;
                    }
                    if (i14 >= length2) {
                        break;
                    }
                }
            }
            if (i15 == 6) {
                bArr[i16] = (byte) (i17 >> 16);
                i16++;
            } else if (i15 == 0) {
                int i30 = i16 + 1;
                bArr[i16] = (byte) (i17 >> 16);
                i16 += 2;
                bArr[i30] = (byte) (i17 >> 8);
            } else if (i15 == 12) {
                throw new IllegalArgumentException("Last unit does not have enough valid bits");
            }
            if (i14 >= length2) {
                return i16 != i11 ? Arrays.copyOf(bArr, i16) : bArr;
            }
            throw new IllegalArgumentException("Input byte array has incorrect ending byte at " + i14);
        }
    }
}
