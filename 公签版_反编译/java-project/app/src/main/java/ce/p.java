package ce;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.p001os.SocConst;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.DigestException;
import java.security.Principal;
import java.util.Properties;
import java.util.Random;

/* loaded from: classes.dex */
public final class p implements Principal, Serializable {

    /* renamed from: i, reason: collision with root package name */
    public static String f3101i;

    /* renamed from: j, reason: collision with root package name */
    public static String f3102j;

    /* renamed from: k, reason: collision with root package name */
    public static String f3103k;

    /* renamed from: a, reason: collision with root package name */
    public final String f3105a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3106b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3107c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f3108d = null;

    /* renamed from: e, reason: collision with root package name */
    public static final int f3097e = wd.a.c(3, "jcifs.smb1.smb.lmCompatibility");

    /* renamed from: f, reason: collision with root package name */
    public static final Random f3098f = new Random();

    /* renamed from: g, reason: collision with root package name */
    public static final de.d f3099g = de.d.r();

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f3100h = {75, 71, 83, SocConst.Upgrade.CPU_CMD, 64, 35, 36, 37};
    public static final p l = new p("", "");

    /* renamed from: m, reason: collision with root package name */
    public static final p f3104m = new p("", "");

    static {
        new p("?", "GUEST");
        new p(null);
    }

    public p(String str) {
        this.f3107c = null;
        this.f3106b = null;
        this.f3105a = null;
        if (str != null) {
            try {
                int length = str.length();
                char[] cArr = new char[length];
                int i10 = 0;
                int i11 = 0;
                boolean z = false;
                while (i10 < length) {
                    if (!z) {
                        char cCharAt = str.charAt(i10);
                        if (cCharAt == '%') {
                            z = true;
                        } else {
                            cArr[i11] = cCharAt;
                            i11++;
                        }
                    } else if (z) {
                        cArr[i11] = new String(new byte[]{(byte) (Integer.parseInt(str.substring(i10, i10 + 2), 16) & 255)}, 0, 1, HTTP.ASCII).charAt(0);
                        i10++;
                        i11++;
                        z = false;
                    }
                    i10++;
                }
                str = new String(cArr, 0, i11);
            } catch (UnsupportedEncodingException unused) {
            }
            int length2 = str.length();
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (i12 >= length2) {
                    break;
                }
                char cCharAt2 = str.charAt(i12);
                if (cCharAt2 == ';') {
                    this.f3105a = str.substring(0, i12);
                    i13 = i12 + 1;
                } else if (cCharAt2 == ':') {
                    this.f3107c = str.substring(1 + i12);
                    break;
                }
                i12++;
            }
            this.f3106b = str.substring(i13, i12);
        }
        i();
        if (this.f3105a == null) {
            this.f3105a = f3101i;
        }
        if (this.f3106b == null) {
            this.f3106b = f3102j;
        }
        if (this.f3107c == null) {
            this.f3107c = f3103k;
        }
    }

    public static void a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr;
        byte[] bArr4 = new byte[7];
        byte[] bArr5 = new byte[8];
        int i10 = 0;
        for (int i11 = 7; i10 < bArr.length / i11; i11 = 7) {
            System.arraycopy(bArr, i10 * 7, bArr4, 0, i11);
            de.a aVar = new de.a(bArr4);
            int i12 = 0;
            while (true) {
                iArr = aVar.f4620c;
                if (i12 >= 2) {
                    break;
                }
                int i13 = i12 * 4;
                iArr[i12] = (bArr2[i13 + 3] & 255) | ((bArr2[i13] & 255) << 24) | ((bArr2[i13 + 1] & 255) << 16) | ((bArr2[i13 + 2] & 255) << 8);
                i12++;
            }
            int i14 = iArr[0];
            int i15 = iArr[1];
            int i16 = ((i14 >>> 4) ^ i15) & 252645135;
            int i17 = i15 ^ i16;
            int i18 = i14 ^ (i16 << 4);
            int i19 = ((i18 >>> 16) ^ i17) & 65535;
            int i20 = i17 ^ i19;
            int i21 = i18 ^ (i19 << 16);
            int i22 = ((i20 >>> 2) ^ i21) & 858993459;
            int i23 = i21 ^ i22;
            int i24 = i20 ^ (i22 << 2);
            int i25 = ((i24 >>> 8) ^ i23) & 16711935;
            int i26 = i23 ^ i25;
            int i27 = i24 ^ (i25 << 8);
            int i28 = ((i27 >>> 31) & 1) | (i27 << 1);
            int i29 = (i26 ^ i28) & (-1431655766);
            int i30 = i26 ^ i29;
            int i31 = i28 ^ i29;
            int i32 = ((i30 >>> 31) & 1) | (i30 << 1);
            int i33 = 0;
            for (int i34 = 0; i34 < 8; i34++) {
                int[] iArr2 = aVar.f4618a;
                int i35 = ((i31 << 28) | (i31 >>> 4)) ^ iArr2[i33];
                int[] iArr3 = de.a.f4616o;
                int i36 = iArr3[i35 & 63];
                int[] iArr4 = de.a.f4614m;
                int i37 = i36 | iArr4[(i35 >>> 8) & 63];
                int[] iArr5 = de.a.f4613k;
                int i38 = i37 | iArr5[(i35 >>> 16) & 63];
                int[] iArr6 = de.a.f4611i;
                int i39 = i38 | iArr6[(i35 >>> 24) & 63];
                int i40 = i31 ^ iArr2[i33 + 1];
                int[] iArr7 = de.a.f4617p;
                int i41 = i39 | iArr7[i40 & 63];
                int[] iArr8 = de.a.f4615n;
                int i42 = i41 | iArr8[(i40 >>> 8) & 63];
                int[] iArr9 = de.a.l;
                int i43 = i42 | iArr9[(i40 >>> 16) & 63];
                int[] iArr10 = de.a.f4612j;
                i32 ^= i43 | iArr10[(i40 >>> 24) & 63];
                int i44 = i33 + 3;
                int i45 = ((i32 << 28) | (i32 >>> 4)) ^ iArr2[i33 + 2];
                int i46 = iArr3[i45 & 63] | iArr4[(i45 >>> 8) & 63] | iArr5[(i45 >>> 16) & 63] | iArr6[(i45 >>> 24) & 63];
                i33 += 4;
                int i47 = iArr2[i44] ^ i32;
                i31 ^= (((i46 | iArr7[i47 & 63]) | iArr8[(i47 >>> 8) & 63]) | iArr9[(i47 >>> 16) & 63]) | iArr10[(i47 >>> 24) & 63];
            }
            int i48 = (i31 << 31) | (i31 >>> 1);
            int i49 = (i32 ^ i48) & (-1431655766);
            int i50 = i32 ^ i49;
            int i51 = i48 ^ i49;
            int i52 = (i50 << 31) | (i50 >>> 1);
            int i53 = ((i52 >>> 8) ^ i51) & 16711935;
            int i54 = i51 ^ i53;
            int i55 = i52 ^ (i53 << 8);
            int i56 = ((i55 >>> 2) ^ i54) & 858993459;
            int i57 = i54 ^ i56;
            int i58 = i55 ^ (i56 << 2);
            int i59 = ((i57 >>> 16) ^ i58) & 65535;
            int i60 = i58 ^ i59;
            int i61 = i57 ^ (i59 << 16);
            int i62 = ((i61 >>> 4) ^ i60) & 252645135;
            iArr[0] = i61 ^ (i62 << 4);
            iArr[1] = i60 ^ i62;
            for (int i63 = 0; i63 < 2; i63++) {
                int i64 = i63 * 4;
                int i65 = iArr[i63];
                bArr5[i64] = (byte) (i65 >>> 24);
                bArr5[i64 + 1] = (byte) (i65 >>> 16);
                bArr5[i64 + 2] = (byte) (i65 >>> 8);
                bArr5[i64 + 3] = (byte) i65;
            }
            System.arraycopy(bArr5, 0, bArr3, i10 * 8, 8);
            i10++;
        }
    }

    public static byte[] c(String str, String str2, String str3, byte[] bArr, byte[] bArr2) throws DigestException {
        try {
            byte[] bArr3 = new byte[24];
            de.e eVar = new de.e();
            eVar.update(str3.getBytes("UTF-16LE"));
            de.b bVar = new de.b(eVar.digest(), 0);
            bVar.update(str2.toUpperCase().getBytes("UTF-16LE"));
            bVar.update(str.toUpperCase().getBytes("UTF-16LE"));
            de.b bVar2 = new de.b(bVar.digest(), 0);
            bVar2.update(bArr);
            bVar2.update(bArr2);
            bVar2.digest(bArr3, 0, 16);
            System.arraycopy(bArr2, 0, bArr3, 16, 8);
            return bArr3;
        } catch (Exception e7) {
            if (de.d.f4630b <= 0) {
                return null;
            }
            e7.printStackTrace(f3099g);
            return null;
        }
    }

    public static byte[] d(String str, byte[] bArr) throws DigestException, UnsupportedEncodingException {
        byte[] bytes;
        de.d dVar = f3099g;
        byte[] bArr2 = new byte[21];
        byte[] bArr3 = new byte[24];
        try {
            bytes = str.getBytes("UTF-16LE");
        } catch (UnsupportedEncodingException e7) {
            if (de.d.f4630b > 0) {
                e7.printStackTrace(dVar);
            }
            bytes = null;
        }
        de.e eVar = new de.e();
        eVar.update(bytes);
        try {
            eVar.digest(bArr2, 0, 16);
        } catch (Exception e10) {
            if (de.d.f4630b > 0) {
                e10.printStackTrace(dVar);
            }
        }
        a(bArr2, bArr, bArr3);
        return bArr3;
    }

    public static byte[] f(String str, byte[] bArr) throws UnsupportedEncodingException {
        byte[] bArr2 = new byte[14];
        byte[] bArr3 = new byte[21];
        byte[] bArr4 = new byte[24];
        try {
            byte[] bytes = str.toUpperCase().getBytes(q0.f3144m0);
            int length = bytes.length;
            System.arraycopy(bytes, 0, bArr2, 0, length <= 14 ? length : 14);
            a(bArr2, f3100h, bArr3);
            a(bArr3, bArr, bArr4);
            return bArr4;
        } catch (UnsupportedEncodingException e7) {
            throw new RuntimeException("Try setting jcifs.smb1.encoding=US-ASCII", e7);
        }
    }

    public static void i() {
        if (f3101i != null) {
            return;
        }
        Properties properties = wd.a.f17870a;
        f3101i = properties.getProperty("jcifs.smb1.smb.client.domain", "?");
        f3102j = properties.getProperty("jcifs.smb1.smb.client.username", "GUEST");
        f3103k = properties.getProperty("jcifs.smb1.smb.client.password", "");
    }

    public final byte[] b(byte[] bArr) {
        String str = this.f3107c;
        int i10 = f3097e;
        if (i10 == 0 || i10 == 1) {
            return f(str, bArr);
        }
        if (i10 == 2) {
            return d(str, bArr);
        }
        if (i10 != 3 && i10 != 4 && i10 != 5) {
            return f(str, bArr);
        }
        if (this.f3108d == null) {
            byte[] bArr2 = new byte[8];
            this.f3108d = bArr2;
            f3098f.nextBytes(bArr2);
        }
        return c(this.f3105a, this.f3106b, str, bArr, this.f3108d);
    }

    @Override // java.security.Principal
    public final boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return pVar.f3105a.toUpperCase().equals(this.f3105a.toUpperCase()) && pVar.f3106b.toUpperCase().equals(this.f3106b.toUpperCase()) && this.f3107c.equals(pVar.f3107c);
    }

    public final byte[] g(byte[] bArr) throws DigestException, r0 {
        int i10 = f3097e;
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            if (i10 == 3 || i10 == 4 || i10 == 5) {
                throw new r0("NTLMv2 requires extended security (jcifs.smb1.smb1.client.useExtendedSecurity must be true if jcifs.smb1.smb1.lmCompatibility >= 3)");
            }
            return null;
        }
        byte[] bArr2 = new byte[40];
        try {
            de.e eVar = new de.e();
            eVar.update(this.f3107c.getBytes("UTF-16LE"));
            if (i10 == 0 || i10 == 1 || i10 == 2) {
                eVar.update(eVar.digest());
                eVar.digest(bArr2, 0, 16);
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                if (this.f3108d == null) {
                    byte[] bArr3 = new byte[8];
                    this.f3108d = bArr3;
                    f3098f.nextBytes(bArr3);
                }
                de.b bVar = new de.b(eVar.digest(), 0);
                bVar.update(this.f3106b.toUpperCase().getBytes("UTF-16LE"));
                bVar.update(this.f3105a.toUpperCase().getBytes("UTF-16LE"));
                byte[] bArrDigest = bVar.digest();
                de.b bVar2 = new de.b(bArrDigest, 0);
                bVar2.update(bArr);
                bVar2.update(this.f3108d);
                de.b bVar3 = new de.b(bArrDigest, 0);
                bVar3.update(bVar2.digest());
                bVar3.digest(bArr2, 0, 16);
            } else {
                eVar.update(eVar.digest());
                eVar.digest(bArr2, 0, 16);
            }
            System.arraycopy(h(bArr), 0, bArr2, 16, 24);
            return bArr2;
        } catch (Exception e7) {
            throw new r0("", e7);
        }
    }

    @Override // java.security.Principal
    public final String getName() {
        String str = this.f3105a;
        int length = str.length();
        String str2 = this.f3106b;
        if (length <= 0 || str.equals("?")) {
            return str2;
        }
        return str + "\\" + str2;
    }

    public final byte[] h(byte[] bArr) {
        String str = this.f3107c;
        int i10 = f3097e;
        return (i10 == 0 || i10 == 1 || i10 == 2) ? d(str, bArr) : (i10 == 3 || i10 == 4 || i10 == 5) ? new byte[0] : d(str, bArr);
    }

    @Override // java.security.Principal
    public final int hashCode() {
        return getName().toUpperCase().hashCode();
    }

    @Override // java.security.Principal
    public final String toString() {
        return getName();
    }

    public p(String str, String str2) {
        int iIndexOf = str2.indexOf(64);
        if (iIndexOf > 0) {
            str = str2.substring(iIndexOf + 1);
            str2 = str2.substring(0, iIndexOf);
        } else {
            int iIndexOf2 = str2.indexOf(92);
            if (iIndexOf2 > 0) {
                str = str2.substring(0, iIndexOf2);
                str2 = str2.substring(iIndexOf2 + 1);
            }
        }
        this.f3105a = str;
        this.f3106b = str2;
        this.f3107c = "";
        i();
        if (str == null) {
            this.f3105a = f3101i;
        }
        if (str2 == null) {
            this.f3106b = f3102j;
        }
    }
}
