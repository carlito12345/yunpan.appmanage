package be;

import a9.o;
import ae.g;
import ce.p;
import de.e;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class d extends a {

    /* renamed from: k, reason: collision with root package name */
    public static final String f2806k;
    public static final int l;

    /* renamed from: m, reason: collision with root package name */
    public static final SecureRandom f2807m = new SecureRandom();

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f2808d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f2809e;

    /* renamed from: f, reason: collision with root package name */
    public final String f2810f;

    /* renamed from: g, reason: collision with root package name */
    public final String f2811g;

    /* renamed from: h, reason: collision with root package name */
    public final String f2812h;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f2813i;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f2814j;

    static {
        String strG;
        wd.a.a("jcifs.smb1.smb.client.useUnicode", true);
        wd.a.d("jcifs.smb1.smb.client.domain");
        wd.a.d("jcifs.smb1.smb.client.username");
        wd.a.d("jcifs.smb1.smb.client.password");
        try {
            strG = g.f633m.g();
        } catch (UnknownHostException unused) {
            strG = null;
        }
        f2806k = strG;
        l = wd.a.c(3, "jcifs.smb1.smb.lmCompatibility");
    }

    public d(c cVar, String str, String str2, String str3, int i10) throws NoSuchAlgorithmException {
        SecureRandom secureRandom;
        int i11;
        byte[] bArr;
        String str4 = b.f2799g;
        this.f2813i = null;
        this.f2814j = null;
        int i12 = i10 | ((cVar.f2797a & 1) != 0 ? 1 : 2) | 512;
        this.f2797a = i12;
        this.f2812h = str4 == null ? f2806k : str4;
        this.f2810f = str2;
        this.f2811g = str3;
        SecureRandom secureRandom2 = f2807m;
        int i13 = l;
        if (i13 == 0 || i13 == 1) {
            if ((524288 & i12) == 0) {
                this.f2808d = str == null ? null : p.f(str, cVar.f2802d);
                this.f2809e = str == null ? null : p.d(str, cVar.f2802d);
                return;
            }
            byte[] bArr2 = new byte[24];
            secureRandom2.nextBytes(bArr2);
            Arrays.fill(bArr2, 8, 24, (byte) 0);
            int i14 = p.f3097e;
            if (str == null) {
                throw new RuntimeException("Password parameter is required");
            }
            try {
                e eVar = new e();
                eVar.update(str.getBytes("UTF-16LE"));
                byte[] bArrDigest = eVar.digest();
                byte[] bArr3 = cVar.f2802d;
                byte[] bArr4 = new byte[8];
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(bArr3);
                    messageDigest.update(bArr2, 0, 8);
                    System.arraycopy(messageDigest.digest(), 0, bArr4, 0, 8);
                    byte[] bArr5 = new byte[21];
                    System.arraycopy(bArrDigest, 0, bArr5, 0, 16);
                    byte[] bArr6 = new byte[24];
                    p.a(bArr5, bArr4, bArr6);
                    this.f2808d = bArr2;
                    this.f2809e = bArr6;
                    if ((this.f2797a & 16) == 16) {
                        byte[] bArr7 = new byte[16];
                        System.arraycopy(cVar.f2802d, 0, bArr7, 0, 8);
                        System.arraycopy(bArr2, 0, bArr7, 8, 8);
                        e eVar2 = new e();
                        eVar2.update(bArrDigest);
                        de.b bVar = new de.b(eVar2.digest(), 0);
                        bVar.update(bArr7);
                        byte[] bArrDigest2 = bVar.digest();
                        if ((this.f2797a & 1073741824) == 0) {
                            this.f2813i = bArrDigest2;
                            this.f2814j = bArrDigest2;
                            return;
                        }
                        byte[] bArr8 = new byte[16];
                        this.f2813i = bArr8;
                        secureRandom2.nextBytes(bArr8);
                        byte[] bArr9 = new byte[16];
                        new a6.b(bArrDigest2).a(bArr8, bArr9);
                        this.f2814j = bArr9;
                        return;
                    }
                    return;
                } catch (GeneralSecurityException e7) {
                    if (de.d.f4630b > 0) {
                        e7.printStackTrace(p.f3099g);
                    }
                    throw new RuntimeException("MD5", e7);
                }
            } catch (UnsupportedEncodingException e10) {
                throw new RuntimeException(e10.getMessage());
            }
        }
        if (i13 == 2) {
            byte[] bArrD = str == null ? null : p.d(str, cVar.f2802d);
            this.f2808d = bArrD;
            this.f2809e = bArrD;
            return;
        }
        if (i13 != 3 && i13 != 4 && i13 != 5) {
            this.f2808d = str == null ? null : p.f(str, cVar.f2802d);
            this.f2809e = str == null ? null : p.d(str, cVar.f2802d);
            return;
        }
        int i15 = p.f3097e;
        try {
            e eVar3 = new e();
            eVar3.update(str.getBytes("UTF-16LE"));
            de.b bVar2 = new de.b(eVar3.digest(), 0);
            bVar2.update(str3.toUpperCase().getBytes("UTF-16LE"));
            bVar2.update(str2.getBytes("UTF-16LE"));
            byte[] bArrDigest3 = bVar2.digest();
            byte[] bArr10 = new byte[8];
            secureRandom2.nextBytes(bArr10);
            this.f2808d = p.c(str2, str3, str, cVar.f2802d, bArr10);
            byte[] bArr11 = new byte[8];
            secureRandom2.nextBytes(bArr11);
            if (bArrDigest3 != null) {
                long jCurrentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
                byte[] bArr12 = cVar.f2802d;
                byte[] bArr13 = cVar.f2805g;
                int length = bArr13 != null ? bArr13.length : 0;
                int i16 = length + 28;
                int i17 = length + 32;
                byte[] bArr14 = new byte[i17];
                o.H(257, 0, bArr14);
                o.H(0, 4, bArr14);
                secureRandom = secureRandom2;
                o.H((int) (jCurrentTimeMillis & 4294967295L), 8, bArr14);
                o.H((int) ((jCurrentTimeMillis >> 32) & 4294967295L), 12, bArr14);
                i11 = 0;
                System.arraycopy(bArr11, 0, bArr14, 16, 8);
                o.H(0, 24, bArr14);
                if (bArr13 != null) {
                    System.arraycopy(bArr13, 0, bArr14, 28, length);
                }
                o.H(0, i16, bArr14);
                de.b bVar3 = new de.b(bArrDigest3, 0);
                bVar3.update(bArr12);
                bVar3.update(bArr14, 0, i17);
                byte[] bArrDigest4 = bVar3.digest();
                bArr = new byte[bArrDigest4.length + i17];
                System.arraycopy(bArrDigest4, 0, bArr, 0, bArrDigest4.length);
                System.arraycopy(bArr14, 0, bArr, bArrDigest4.length, i17);
            } else {
                secureRandom = secureRandom2;
                i11 = 0;
                bArr = null;
            }
            this.f2809e = bArr;
            if ((this.f2797a & 16) == 16) {
                de.b bVar4 = new de.b(bArrDigest3, i11);
                bVar4.update(this.f2809e, i11, 16);
                byte[] bArrDigest5 = bVar4.digest();
                if ((this.f2797a & 1073741824) == 0) {
                    this.f2813i = bArrDigest5;
                    this.f2814j = bArrDigest5;
                    return;
                }
                byte[] bArr15 = new byte[16];
                this.f2813i = bArr15;
                secureRandom.nextBytes(bArr15);
                byte[] bArr16 = new byte[16];
                new a6.b(bArrDigest5).a(bArr15, bArr16);
                this.f2814j = bArr16;
            }
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException(e11.getMessage());
        }
    }

    public final byte[] f() {
        try {
            int i10 = this.f2797a;
            boolean z = (i10 & 1) != 0;
            byte[] bytes = null;
            String str = z ? null : a.f2796c;
            String str2 = this.f2810f;
            byte[] bytes2 = (str2 == null || str2.length() == 0) ? null : z ? str2.getBytes("UTF-16LE") : str2.getBytes(str);
            int length = bytes2 != null ? bytes2.length : 0;
            String str3 = this.f2811g;
            byte[] bytes3 = (str3 == null || str3.length() == 0) ? null : z ? str3.getBytes("UTF-16LE") : str3.toUpperCase().getBytes(str);
            int length2 = bytes3 != null ? bytes3.length : 0;
            String str4 = this.f2812h;
            if (str4 != null && str4.length() != 0) {
                bytes = z ? str4.getBytes("UTF-16LE") : str4.toUpperCase().getBytes(str);
            }
            int length3 = bytes != null ? bytes.length : 0;
            byte[] bArr = this.f2808d;
            int length4 = bArr != null ? bArr.length : 0;
            byte[] bArr2 = this.f2809e;
            int length5 = bArr2 != null ? bArr2.length : 0;
            byte[] bArr3 = this.f2814j;
            byte[] bArr4 = new byte[length + 64 + length2 + length3 + length4 + length5 + (bArr3 != null ? bArr3.length : 0)];
            System.arraycopy(a.f2795b, 0, bArr4, 0, 8);
            a.d(8, 3, bArr4);
            a.c(12, 64, bArr4, bArr);
            int i11 = length4 + 64;
            a.c(20, i11, bArr4, bArr2);
            int i12 = i11 + length5;
            a.c(28, i12, bArr4, bytes2);
            int i13 = i12 + length;
            a.c(36, i13, bArr4, bytes3);
            int i14 = i13 + length2;
            a.c(44, i14, bArr4, bytes);
            a.c(52, i14 + length3, bArr4, bArr3);
            a.d(60, i10, bArr4);
            return bArr4;
        } catch (IOException e7) {
            throw new IllegalStateException(e7.getMessage());
        }
    }

    public final String toString() {
        String str = this.f2811g;
        String str2 = this.f2810f;
        String str3 = this.f2812h;
        byte[] bArr = this.f2808d;
        byte[] bArr2 = this.f2809e;
        byte[] bArr3 = this.f2814j;
        StringBuilder sb2 = new StringBuilder("Type3Message[domain=");
        sb2.append(str2);
        sb2.append(",user=");
        sb2.append(str);
        sb2.append(",workstation=");
        sb2.append(str3);
        sb2.append(",lmResponse=");
        sb2.append(bArr == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr.length, " bytes>"));
        sb2.append(",ntResponse=");
        sb2.append(bArr2 == null ? "null" : android.support.v4.media.session.a.s(new StringBuilder("<"), bArr2.length, " bytes>"));
        sb2.append(",sessionKey=");
        sb2.append(bArr3 != null ? android.support.v4.media.session.a.s(new StringBuilder("<"), bArr3.length, " bytes>") : "null");
        sb2.append(",flags=0x");
        sb2.append(de.c.c(this.f2797a, 8));
        sb2.append("]");
        return sb2.toString();
    }
}
