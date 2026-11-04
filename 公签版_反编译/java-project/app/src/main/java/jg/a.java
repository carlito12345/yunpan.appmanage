package jg;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f9873e = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f9874a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f9875b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9876c;

    /* renamed from: d, reason: collision with root package name */
    public final Cipher f9877d;

    public a(char[] cArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArr = f9873e;
        byte[] bArr2 = new byte[16];
        try {
            SecureRandom.getInstanceStrong().nextBytes(bArr2);
            this.f9874a = bArr;
            this.f9875b = bArr2;
            this.f9876c = 19;
            SecretKeySpec secretKeySpec = new SecretKeySpec(k.h(19, k.i(cArr), bArr), "AES");
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
                this.f9877d = cipher;
                cipher.init(1, secretKeySpec, new IvParameterSpec(bArr2));
            } catch (GeneralSecurityException e7) {
                throw new IllegalStateException("Encryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e7);
            }
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No strong secure random available to generate strong AES key", e10);
        }
    }
}
