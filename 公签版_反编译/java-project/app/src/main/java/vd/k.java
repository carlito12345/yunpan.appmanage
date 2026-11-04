package vd;

import com.hsae.autosdk.p001os.SocConst;
import java.nio.charset.Charset;
import java.security.DigestException;
import java.security.MessageDigest;
import javax.crypto.ShortBufferException;

/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f16887a = {75, 71, 83, SocConst.Upgrade.CPU_CMD, 64, 35, 36, 37};

    public static void a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws ShortBufferException {
        byte[] bArr4 = new byte[7];
        byte[] bArr5 = new byte[8];
        for (int i10 = 0; i10 < bArr.length / 7; i10++) {
            System.arraycopy(bArr, i10 * 7, bArr4, 0, 7);
            ge.a.i(bArr4).update(bArr2, 0, bArr2.length, bArr5);
            System.arraycopy(bArr5, 0, bArr3, i10 * 8, 8);
        }
    }

    public static byte[] b(String str, String str2, byte[] bArr, byte[] bArr2, byte[] bArr3) throws DigestException {
        byte[] bArr4 = new byte[24];
        de.b bVar = new de.b(bArr, 1);
        String upperCase = str2.toUpperCase();
        Charset charset = ge.b.f6136b;
        bVar.update(ge.b.d(upperCase, charset));
        bVar.update(ge.b.d(str.toUpperCase(), charset));
        de.b bVar2 = new de.b(bVar.digest(), 1);
        bVar2.update(bArr2);
        bVar2.update(bArr3);
        bVar2.digest(bArr4, 0, 16);
        System.arraycopy(bArr3, 0, bArr4, 16, 8);
        return bArr4;
    }

    public static byte[] c(String str) {
        if (str == null) {
            throw new NullPointerException("Password parameter is required");
        }
        MessageDigest messageDigestJ = ge.a.j();
        messageDigestJ.update(ge.b.d(str, ge.b.f6136b));
        return messageDigestJ.digest();
    }

    public static byte[] d(vc.b bVar, String str, byte[] bArr) throws ShortBufferException {
        byte[] bArr2 = new byte[14];
        byte[] bArr3 = new byte[21];
        byte[] bArr4 = new byte[24];
        byte[] bArrE = ge.b.e(str, bVar.e());
        int length = bArrE.length;
        System.arraycopy(bArrE, 0, bArr2, 0, length <= 14 ? length : 14);
        a(bArr2, f16887a, bArr3);
        a(bArr3, bArr, bArr4);
        return bArr4;
    }
}
