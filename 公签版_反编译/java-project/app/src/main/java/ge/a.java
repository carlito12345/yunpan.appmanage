package ge;

import com.hsae.autosdk.core.NoConst;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import vc.d;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f6133a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b, reason: collision with root package name */
    public static BouncyCastleProvider f6134b;

    public static short a(int i10, byte[] bArr) {
        return (short) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public static short b(int i10, byte[] bArr) {
        return (short) (((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255));
    }

    public static int c(int i10, byte[] bArr) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static int d(int i10, byte[] bArr) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static String e(int i10, byte[] bArr) throws IOException {
        char[] cArr = new char[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            int i14 = b10 & 255;
            if (i14 == 0) {
                break;
            }
            if (i14 < 128) {
                cArr[i12] = (char) i14;
                i11 = i13;
            } else if ((b10 & 224) == 192) {
                if (i10 - i13 < 2) {
                    break;
                }
                char c7 = (char) ((b10 & 31) << 6);
                cArr[i12] = c7;
                i11 += 2;
                byte b11 = bArr[i13];
                char c10 = (char) (c7 | (b11 & 63));
                cArr[i12] = c10;
                if ((b11 & 192) != 128 || c10 < 128) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
            } else {
                if ((b10 & 240) != 224) {
                    throw new IOException("Unsupported UTF-8 sequence");
                }
                if (i10 - i13 < 3) {
                    break;
                }
                char c11 = (char) ((b10 & 15) << 12);
                cArr[i12] = c11;
                int i15 = i11 + 2;
                byte b12 = bArr[i13];
                if ((b12 & 192) != 128) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
                char c12 = (char) (((b12 & 63) << 6) | c11);
                cArr[i12] = c12;
                i11 += 3;
                byte b13 = bArr[i15];
                char c13 = (char) (c12 | (b13 & 63));
                cArr[i12] = c13;
                if ((b13 & 192) != 128 || c13 < 2048) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
            }
            i12++;
        }
        return new String(cArr, 0, i12);
    }

    public static void f(int i10, int i11, byte[] bArr) {
        bArr[i11] = (byte) ((i10 >> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
    }

    public static void g(int i10, int i11, byte[] bArr) {
        bArr[i11] = (byte) (i10 & 255);
        bArr[i11 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 2] = (byte) ((i10 >> 16) & 255);
        bArr[i11 + 3] = (byte) ((i10 >> 24) & 255);
    }

    public static Cipher h(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            Cipher cipher = Cipher.getInstance("RC4");
            cipher.init(1, new SecretKeySpec(bArr, "RC4"));
            return cipher;
        } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e7) {
            throw new d(e7);
        }
    }

    public static Cipher i(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (bArr.length != 7) {
            try {
                Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                cipher.init(1, new SecretKeySpec(bArr, "DES"));
                return cipher;
            } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e7) {
                throw new d(e7);
            }
        }
        byte[] bArr2 = new byte[8];
        bArr2[0] = (byte) (bArr[0] & NoConst.ESCAPE_0XFE);
        bArr2[1] = (byte) ((bArr[0] << 7) | ((bArr[1] & 255) >>> 1));
        bArr2[2] = (byte) ((bArr[1] << 6) | ((bArr[2] & 255) >>> 2));
        bArr2[3] = (byte) ((bArr[2] << 5) | ((bArr[3] & 255) >>> 3));
        bArr2[4] = (byte) ((bArr[3] << 4) | ((bArr[4] & 255) >>> 4));
        bArr2[5] = (byte) ((bArr[4] << 3) | ((bArr[5] & 255) >>> 5));
        bArr2[6] = (byte) ((bArr[5] << 2) | ((bArr[6] & 255) >>> 6));
        bArr2[7] = (byte) (bArr[6] << 1);
        for (int i10 = 0; i10 < 8; i10++) {
            byte b10 = bArr2[i10];
            bArr2[i10] = (byte) (b10 ^ (Integer.bitCount(b10 ^ 1) & 1));
        }
        return i(bArr2);
    }

    public static MessageDigest j() {
        try {
            BouncyCastleProvider bouncyCastleProvider = f6134b;
            if (bouncyCastleProvider == null) {
                bouncyCastleProvider = new BouncyCastleProvider();
                f6134b = bouncyCastleProvider;
            }
            return MessageDigest.getInstance("MD4", bouncyCastleProvider);
        } catch (NoSuchAlgorithmException e7) {
            throw new d(e7);
        }
    }

    public static MessageDigest k() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e7) {
            throw new d(e7);
        }
    }

    public static String l(int i10, int i11) {
        char[] cArr = new char[i11];
        for (int i12 = i11; i12 > 0; i12--) {
            int i13 = i12 - 1;
            if (i13 < i11) {
                cArr[i13] = f6133a[i10 & 15];
            }
            if (i10 != 0) {
                i10 >>>= 4;
            }
        }
        return new String(cArr);
    }

    public static String m(byte[] bArr, int i10, int i11) {
        char[] cArr = new char[i11 * 2];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + 1;
            char[] cArr2 = f6133a;
            byte b10 = bArr[i10 + i13];
            cArr[i12] = cArr2[(b10 >> 4) & 15];
            i12 += 2;
            cArr[i14] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }
}
