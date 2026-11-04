package io.github.muntashirakon.adb;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import g.b;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import org.bouncycastle.util.encoders.Base64;

/* loaded from: classes.dex */
final class AndroidPubkey {
    public static final int ANDROID_PUBKEY_ENCODED_SIZE = 524;
    public static final int ANDROID_PUBKEY_MODULUS_SIZE = 256;
    public static final int ANDROID_PUBKEY_MODULUS_SIZE_WORDS = 64;
    private static final byte[] RSA_SHA_PKCS1_SIGNATURE_PADDING;
    private static final int[] SIGNATURE_PADDING_AS_INT;

    static {
        int i10 = 0;
        int[] iArr = {0, 1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 48, 33, 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0, 4, 20};
        SIGNATURE_PADDING_AS_INT = iArr;
        RSA_SHA_PKCS1_SIGNATURE_PADDING = new byte[iArr.length];
        while (true) {
            byte[] bArr = RSA_SHA_PKCS1_SIGNATURE_PADDING;
            if (i10 >= bArr.length) {
                return;
            }
            bArr[i10] = (byte) SIGNATURE_PADDING_AS_INT[i10];
            i10++;
        }
    }

    private static byte[] BigEndianToLittleEndianPadded(int i10, BigInteger bigInteger) {
        byte[] bArr = new byte[i10];
        byte[] bArrSwapEndianness = swapEndianness(bigInteger.toByteArray());
        int length = bArrSwapEndianness.length;
        if (i10 >= length) {
            i10 = length;
        } else if (!fitsInBytes(bArrSwapEndianness, length, i10)) {
            return null;
        }
        System.arraycopy(bArrSwapEndianness, 0, bArr, 0, i10);
        return bArr;
    }

    public static byte[] adbAuthSign(PrivateKey privateKey, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance("RSA/ECB/NoPadding");
        cipher.init(1, privateKey);
        cipher.update(RSA_SHA_PKCS1_SIGNATURE_PADDING);
        return cipher.doFinal(bArr);
    }

    public static RSAPublicKey decode(byte[] bArr) throws InvalidKeyException {
        if (bArr.length < 524) {
            throw new InvalidKeyException("Invalid key length");
        }
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        if (byteBufferOrder.getInt() != 64) {
            throw new InvalidKeyException("Invalid modulus length.");
        }
        byte[] bArr2 = new byte[256];
        byteBufferOrder.position(8);
        byteBufferOrder.get(bArr2);
        BigInteger bigInteger = new BigInteger(1, swapEndianness(bArr2));
        byteBufferOrder.position(520);
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(bigInteger, BigInteger.valueOf(byteBufferOrder.getInt())));
    }

    public static byte[] encode(RSAPublicKey rSAPublicKey) throws InvalidKeyException {
        if (rSAPublicKey.getModulus().toByteArray().length < 256) {
            throw new InvalidKeyException("Invalid key length " + rSAPublicKey.getModulus().toByteArray().length);
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(ANDROID_PUBKEY_ENCODED_SIZE).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(64);
        BigInteger bigInteger = BigInteger.ZERO;
        BigInteger bit = bigInteger.setBit(32);
        byteBufferOrder.putInt(bit.subtract(rSAPublicKey.getModulus().mod(bit).modInverse(bit)).intValue());
        byte[] bArrBigEndianToLittleEndianPadded = BigEndianToLittleEndianPadded(256, rSAPublicKey.getModulus());
        Objects.requireNonNull(bArrBigEndianToLittleEndianPadded);
        byteBufferOrder.put(bArrBigEndianToLittleEndianPadded);
        byte[] bArrBigEndianToLittleEndianPadded2 = BigEndianToLittleEndianPadded(256, bigInteger.setBit(2048).modPow(BigInteger.valueOf(2L), rSAPublicKey.getModulus()));
        Objects.requireNonNull(bArrBigEndianToLittleEndianPadded2);
        byteBufferOrder.put(bArrBigEndianToLittleEndianPadded2);
        byteBufferOrder.putInt(rSAPublicKey.getPublicExponent().intValue());
        return byteBufferOrder.array();
    }

    public static byte[] encodeWithName(RSAPublicKey rSAPublicKey, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        ByteArrayNoThrowOutputStream byteArrayNoThrowOutputStream = new ByteArrayNoThrowOutputStream(str.length() + (((int) Math.ceil(174.66666666666666d)) * 4) + 2);
        try {
            byteArrayNoThrowOutputStream.write(Base64.encode(encode(rSAPublicKey)));
            byteArrayNoThrowOutputStream.write(getUserInfo(str));
            byte[] byteArray = byteArrayNoThrowOutputStream.toByteArray();
            byteArrayNoThrowOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            try {
                byteArrayNoThrowOutputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public static boolean fitsInBytes(byte[] bArr, int i10, int i11) {
        byte b10 = 0;
        while (i11 < i10) {
            b10 = (byte) (b10 | bArr[i11]);
            i11++;
        }
        return b10 == 0;
    }

    public static byte[] getUserInfo(String str) {
        return StringCompat.getBytes(b.A(" ", str, "\u0000"), HTTP.UTF_8);
    }

    private static byte[] swapEndianness(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr2[i10] = bArr[(length - i10) - 1];
        }
        return bArr2;
    }
}
