package z9;

import a2.u0;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import io.github.muntashirakon.adb.AndroidPubkey;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f19497c;

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f19498d;

    /* renamed from: a, reason: collision with root package name */
    public KeyPair f19499a;

    /* renamed from: b, reason: collision with root package name */
    public u0 f19500b;

    static {
        int i10 = 0;
        int[] iArr = {0, 1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 48, 33, 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0, 4, 20};
        f19497c = iArr;
        f19498d = new byte[iArr.length];
        while (true) {
            byte[] bArr = f19498d;
            if (i10 >= bArr.length) {
                return;
            }
            bArr[i10] = (byte) f19497c[i10];
            i10++;
        }
    }

    public static b b(u0 u0Var, File file, File file2) throws NoSuchAlgorithmException, IOException {
        b bVar = new b();
        byte[] bArr = new byte[(int) file.length()];
        byte[] bArr2 = new byte[(int) file2.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        FileInputStream fileInputStream2 = new FileInputStream(file2);
        fileInputStream.read(bArr);
        fileInputStream2.read(bArr2);
        fileInputStream.close();
        fileInputStream2.close();
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        bVar.f19499a = new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArr2)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArr)));
        bVar.f19500b = u0Var;
        return bVar;
    }

    public final byte[] a() {
        RSAPublicKey rSAPublicKey = (RSAPublicKey) this.f19499a.getPublic();
        BigInteger bigInteger = BigInteger.ZERO;
        BigInteger bit = bigInteger.setBit(32);
        BigInteger modulus = rSAPublicKey.getModulus();
        BigInteger bigIntegerModPow = bigInteger.setBit(2048).modPow(BigInteger.valueOf(2L), modulus);
        BigInteger bigIntegerModInverse = modulus.remainder(bit).modInverse(bit);
        int[] iArr = new int[64];
        int[] iArr2 = new int[64];
        int i10 = 0;
        while (i10 < 64) {
            BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerModPow.divideAndRemainder(bit);
            BigInteger bigInteger2 = bigIntegerArrDivideAndRemainder[0];
            iArr2[i10] = bigIntegerArrDivideAndRemainder[1].intValue();
            BigInteger[] bigIntegerArrDivideAndRemainder2 = modulus.divideAndRemainder(bit);
            modulus = bigIntegerArrDivideAndRemainder2[0];
            iArr[i10] = bigIntegerArrDivideAndRemainder2[1].intValue();
            i10++;
            bigIntegerModPow = bigInteger2;
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(AndroidPubkey.ANDROID_PUBKEY_ENCODED_SIZE).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(64);
        byteBufferOrder.putInt(bigIntegerModInverse.negate().intValue());
        for (int i11 = 0; i11 < 64; i11++) {
            byteBufferOrder.putInt(iArr[i11]);
        }
        for (int i12 = 0; i12 < 64; i12++) {
            byteBufferOrder.putInt(iArr2[i12]);
        }
        byteBufferOrder.putInt(rSAPublicKey.getPublicExponent().intValue());
        byte[] bArrArray = byteBufferOrder.array();
        StringBuilder sb2 = new StringBuilder(720);
        sb2.append(this.f19500b.d(bArrArray));
        sb2.append(" unknown@unknown\u0000");
        return sb2.toString().getBytes(HTTP.UTF_8);
    }
}
