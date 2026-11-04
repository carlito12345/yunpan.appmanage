package jg;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class b extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f9881a;

    /* renamed from: b, reason: collision with root package name */
    public final g f9882b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9883c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f9884d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9885e;

    /* renamed from: f, reason: collision with root package name */
    public CipherInputStream f9886f;

    public b(InputStream inputStream, g gVar, String str, byte[] bArr) {
        this.f9881a = inputStream;
        this.f9882b = gVar;
        this.f9883c = str;
        this.f9884d = bArr;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        CipherInputStream cipherInputStream = this.f9886f;
        if (cipherInputStream != null) {
            cipherInputStream.close();
        }
    }

    public final CipherInputStream r() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IOException, InvalidAlgorithmParameterException {
        byte[] bArrH;
        if (this.f9885e) {
            return this.f9886f;
        }
        g gVar = this.f9882b;
        byte[] bArr = gVar.f9906d;
        String str = this.f9883c;
        if (bArr == null) {
            throw new IOException(da.b.c("Missing AES256 properties in ", str));
        }
        if (bArr.length < 2) {
            throw new IOException(da.b.c("AES256 properties too short in ", str));
        }
        int i10 = bArr[0];
        int i11 = i10 & 255;
        int i12 = i10 & 63;
        int i13 = bArr[1];
        int i14 = ((i11 >> 6) & 1) + (i13 & 15);
        int i15 = ((i11 >> 7) & 1) + ((i13 & 255) >> 4);
        int i16 = i15 + 2;
        if (i16 + i14 > bArr.length) {
            throw new IOException(da.b.c("Salt size + IV size too long in ", str));
        }
        byte[] bArr2 = new byte[i15];
        System.arraycopy(bArr, 2, bArr2, 0, i15);
        byte[] bArr3 = new byte[16];
        System.arraycopy(gVar.f9906d, i16, bArr3, 0, i14);
        byte[] bArr4 = this.f9884d;
        if (bArr4 == null) {
            throw new hg.b(str);
        }
        if (i12 == 63) {
            bArrH = new byte[32];
            System.arraycopy(bArr2, 0, bArrH, 0, i15);
            System.arraycopy(bArr4, 0, bArrH, i15, Math.min(bArr4.length, 32 - i15));
        } else {
            bArrH = k.h(i12, bArr4, bArr2);
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArrH, "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            CipherInputStream cipherInputStream = new CipherInputStream(this.f9881a, cipher);
            this.f9886f = cipherInputStream;
            this.f9885e = true;
            return cipherInputStream;
        } catch (GeneralSecurityException e7) {
            throw new IllegalStateException("Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e7);
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        return r().read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        return r().read(bArr, i10, i11);
    }
}
