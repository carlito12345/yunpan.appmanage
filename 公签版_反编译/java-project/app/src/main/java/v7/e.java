package v7;

import a9.o;
import j$.util.Objects;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;

/* loaded from: classes.dex */
public class e {

    /* renamed from: d, reason: collision with root package name */
    public static final b f16646d;

    /* renamed from: a, reason: collision with root package name */
    public final a f16647a;

    /* renamed from: b, reason: collision with root package name */
    public final Character f16648b;

    /* renamed from: c, reason: collision with root package name */
    public volatile e f16649c;

    static {
        new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new e("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new e("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f16646d = new b(new a("base16()", "0123456789ABCDEF".toCharArray()));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e(a aVar, Character ch2) {
        boolean z;
        this.f16647a = aVar;
        if (ch2 != null) {
            char cCharValue = ch2.charValue();
            byte[] bArr = aVar.f16642g;
            z = cCharValue >= bArr.length || bArr[cCharValue] == -1;
        }
        o.l(z, "Padding character %s was already in alphabet", ch2);
        this.f16648b = ch2;
    }

    public final byte[] a(String str) {
        try {
            int length = (int) (((this.f16647a.f16639d * r6.length()) + 7) / 8);
            byte[] bArr = new byte[length];
            int iB = b(bArr, h(str));
            if (iB == length) {
                return bArr;
            }
            byte[] bArr2 = new byte[iB];
            System.arraycopy(bArr, 0, bArr2, 0, iB);
            return bArr2;
        } catch (d e7) {
            throw new IllegalArgumentException(e7);
        }
    }

    public int b(byte[] bArr, CharSequence charSequence) throws d {
        int i10;
        int i11;
        CharSequence charSequenceH = h(charSequence);
        int length = charSequenceH.length();
        a aVar = this.f16647a;
        if (!aVar.f16643h[length % aVar.f16640e]) {
            throw new d("Invalid input length " + charSequenceH.length());
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < charSequenceH.length()) {
            long jA = 0;
            int i14 = 0;
            int i15 = 0;
            while (true) {
                i10 = aVar.f16639d;
                i11 = aVar.f16640e;
                if (i14 >= i11) {
                    break;
                }
                jA <<= i10;
                if (i12 + i14 < charSequenceH.length()) {
                    jA |= aVar.a(charSequenceH.charAt(i15 + i12));
                    i15++;
                }
                i14++;
            }
            int i16 = aVar.f16641f;
            int i17 = (i16 * 8) - (i15 * i10);
            int i18 = (i16 - 1) * 8;
            while (i18 >= i17) {
                bArr[i13] = (byte) ((jA >>> i18) & 255);
                i18 -= 8;
                i13++;
            }
            i12 += i11;
        }
        return i13;
    }

    public final String c(byte[] bArr) {
        int length = bArr.length;
        o.q(0, length, bArr.length);
        a aVar = this.f16647a;
        StringBuilder sb2 = new StringBuilder(com.bumptech.glide.d.m(length, aVar.f16641f, RoundingMode.CEILING) * aVar.f16640e);
        try {
            e(sb2, bArr, length);
            return sb2.toString();
        } catch (IOException e7) {
            throw new AssertionError(e7);
        }
    }

    public final void d(StringBuilder sb2, byte[] bArr, int i10, int i11) {
        o.q(i10, i10 + i11, bArr.length);
        a aVar = this.f16647a;
        int i12 = 0;
        o.k(i11 <= aVar.f16641f);
        long j10 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            j10 = (j10 | (bArr[i10 + i13] & 255)) << 8;
        }
        int i14 = aVar.f16639d;
        int i15 = ((i11 + 1) * 8) - i14;
        while (i12 < i11 * 8) {
            sb2.append(aVar.f16637b[((int) (j10 >>> (i15 - i12))) & aVar.f16638c]);
            i12 += i14;
        }
        Character ch2 = this.f16648b;
        if (ch2 != null) {
            while (i12 < aVar.f16641f * 8) {
                sb2.append(ch2.charValue());
                i12 += i14;
            }
        }
    }

    public void e(StringBuilder sb2, byte[] bArr, int i10) {
        int i11 = 0;
        o.q(0, i10, bArr.length);
        while (i11 < i10) {
            a aVar = this.f16647a;
            d(sb2, bArr, i11, Math.min(aVar.f16641f, i10 - i11));
            i11 += aVar.f16641f;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f16647a.equals(eVar.f16647a) && Objects.equals(this.f16648b, eVar.f16648b);
    }

    public final e f() {
        boolean z;
        e eVarG = this.f16649c;
        if (eVarG == null) {
            a aVar = this.f16647a;
            char[] cArr = aVar.f16637b;
            int length = cArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (qf.c.I(cArr[i10])) {
                    int length2 = cArr.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length2) {
                            z = false;
                            break;
                        }
                        char c7 = cArr[i11];
                        if (c7 >= 'a' && c7 <= 'z') {
                            z = true;
                            break;
                        }
                        i11++;
                    }
                    o.s("Cannot call lowerCase() on a mixed-case alphabet", !z);
                    char[] cArr2 = new char[cArr.length];
                    for (int i12 = 0; i12 < cArr.length; i12++) {
                        char c10 = cArr[i12];
                        if (qf.c.I(c10)) {
                            c10 = (char) (c10 ^ ' ');
                        }
                        cArr2[i12] = c10;
                    }
                    a aVar2 = new a(g.b.l(aVar.f16636a, ".lowerCase()", new StringBuilder()), cArr2);
                    if (aVar.f16644i && !aVar2.f16644i) {
                        byte[] bArr = aVar2.f16642g;
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        for (int i13 = 65; i13 <= 90; i13++) {
                            int i14 = i13 | 32;
                            byte b10 = bArr[i13];
                            byte b11 = bArr[i14];
                            if (b10 == -1) {
                                bArrCopyOf[i13] = b11;
                            } else {
                                char c11 = (char) i13;
                                char c12 = (char) i14;
                                if (!(b11 == -1)) {
                                    throw new IllegalStateException(android.support.v4.media.session.b.y("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c11), Character.valueOf(c12)));
                                }
                                bArrCopyOf[i14] = b10;
                            }
                        }
                        aVar2 = new a(g.b.l(aVar2.f16636a, ".ignoreCase()", new StringBuilder()), aVar2.f16637b, bArrCopyOf, true);
                    }
                    aVar = aVar2;
                } else {
                    i10++;
                }
            }
            eVarG = aVar == this.f16647a ? this : g(aVar, this.f16648b);
            this.f16649c = eVarG;
        }
        return eVarG;
    }

    public e g(a aVar, Character ch2) {
        return new e(aVar, ch2);
    }

    public final CharSequence h(CharSequence charSequence) {
        charSequence.getClass();
        Character ch2 = this.f16648b;
        if (ch2 == null) {
            return charSequence;
        }
        char cCharValue = ch2.charValue();
        int length = charSequence.length() - 1;
        while (length >= 0 && charSequence.charAt(length) == cCharValue) {
            length--;
        }
        return charSequence.subSequence(0, length + 1);
    }

    public final int hashCode() {
        return this.f16647a.hashCode() ^ Objects.hashCode(this.f16648b);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        a aVar = this.f16647a;
        sb2.append(aVar);
        if (8 % aVar.f16639d != 0) {
            Character ch2 = this.f16648b;
            if (ch2 == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append(ch2);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    public e(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }
}
