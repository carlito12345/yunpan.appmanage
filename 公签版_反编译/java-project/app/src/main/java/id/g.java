package id;

import j$.nio.charset.StandardCharsets;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.generators.KDFCounterBytesGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KDFCounterParameters;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8680a = b("SmbSign");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8681b = b("SMB2AESCMAC");

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f8682c = b("SMBSigningKey");

    static {
        b("SmbRpc");
        b("SMB2APP");
        b("SMBAppKey");
        b("ServerIn ");
        b("SMB2AESCCM");
        b("SMB2C2SCipherKey");
        b("ServerOut");
        b("SMB2AESCCM");
        b("SMB2S2CCipherKey");
    }

    public static byte[] a(int i10, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = i10 == 785 ? f8682c : f8681b;
        if (i10 != 785) {
            bArr2 = f8680a;
        }
        KDFCounterBytesGenerator kDFCounterBytesGenerator = new KDFCounterBytesGenerator(new HMac(new SHA256Digest()));
        int length = bArr3.length + bArr2.length;
        byte[] bArr4 = new byte[length + 5];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        System.arraycopy(bArr2, 0, bArr4, bArr3.length + 1, bArr2.length);
        bArr4[length + 4] = Byte.MIN_VALUE;
        kDFCounterBytesGenerator.init(new KDFCounterParameters(bArr, null, bArr4, 32));
        byte[] bArr5 = new byte[16];
        kDFCounterBytesGenerator.generateBytes(bArr5, 0, 16);
        return bArr5;
    }

    public static byte[] b(String str) {
        byte[] bArr = new byte[str.length() + 1];
        System.arraycopy(str.getBytes(StandardCharsets.US_ASCII), 0, bArr, 0, str.length());
        return bArr;
    }
}
