package id;

import ad.h;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class f implements h {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f8678b = LoggerFactory.getLogger((Class<?>) f.class);

    /* renamed from: a, reason: collision with root package name */
    public final Mac f8679a;

    public f(byte[] bArr, int i10, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac;
        if (i10 == 514 || i10 == 528) {
            mac = Mac.getInstance("HmacSHA256");
        } else if (i10 == 768 || i10 == 770) {
            bArr = g.a(i10, bArr, new byte[0]);
            BouncyCastleProvider bouncyCastleProvider = ge.a.f6134b;
            if (bouncyCastleProvider == null) {
                bouncyCastleProvider = new BouncyCastleProvider();
                ge.a.f6134b = bouncyCastleProvider;
            }
            mac = Mac.getInstance("AESCMAC", bouncyCastleProvider);
        } else {
            if (i10 != 785) {
                throw new IllegalArgumentException("Unknown dialect");
            }
            if (bArr2 == null) {
                throw new IllegalArgumentException("Missing preauthIntegrityHash for SMB 3.1");
            }
            bArr = g.a(i10, bArr, bArr2);
            BouncyCastleProvider bouncyCastleProvider2 = ge.a.f6134b;
            if (bouncyCastleProvider2 == null) {
                bouncyCastleProvider2 = new BouncyCastleProvider();
                ge.a.f6134b = bouncyCastleProvider2;
            }
            mac = Mac.getInstance("AESCMAC", bouncyCastleProvider2);
        }
        mac.init(new SecretKeySpec(bArr, "HMAC"));
        this.f8679a = mac;
    }
}
