package x4;

import com.hierynomus.smbfs.SmbPath;

/* loaded from: classes.dex */
public final class t extends v {

    /* renamed from: a, reason: collision with root package name */
    public final String f18136a;

    /* renamed from: b, reason: collision with root package name */
    public final a9.p f18137b;

    static {
        new t("");
    }

    public t(String str) {
        if (str == null) {
            throw new NullPointerException("string == null");
        }
        this.f18136a = str.intern();
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt != 0 && cCharAt < 128) {
                bArr[i10] = (byte) cCharAt;
                i10++;
            } else if (cCharAt < 2048) {
                bArr[i10] = (byte) (((cCharAt >> 6) & 31) | 192);
                bArr[i10 + 1] = (byte) ((cCharAt & '?') | 128);
                i10 += 2;
            } else {
                bArr[i10] = (byte) (((cCharAt >> '\f') & 15) | 224);
                bArr[i10 + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                bArr[i10 + 2] = (byte) ((cCharAt & '?') | 128);
                i10 += 3;
            }
        }
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        this.f18137b = new a9.p(bArr2, 1);
    }

    @Override // b5.h
    public final String a() {
        String str = this.f18136a;
        int length = str.length();
        StringBuilder sb2 = new StringBuilder((length * 3) / 2);
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= ' ' && cCharAt < 127) {
                if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '\\') {
                    sb2.append(SmbPath.SEPARATOR);
                }
                sb2.append(cCharAt);
            } else if (cCharAt > 127) {
                sb2.append("\\u");
                sb2.append(Character.forDigit(cCharAt >> '\f', 16));
                sb2.append(Character.forDigit((cCharAt >> '\b') & 15, 16));
                sb2.append(Character.forDigit((cCharAt >> 4) & 15, 16));
                sb2.append(Character.forDigit(cCharAt & 15, 16));
            } else if (cCharAt == '\t') {
                sb2.append("\\t");
            } else if (cCharAt == '\n') {
                sb2.append("\\n");
            } else if (cCharAt != '\r') {
                char cCharAt2 = i10 < length + (-1) ? str.charAt(i10 + 1) : (char) 0;
                boolean z = cCharAt2 >= '0' && cCharAt2 <= '7';
                sb2.append(SmbPath.SEPARATOR);
                for (int i11 = 6; i11 >= 0; i11 -= 3) {
                    char c7 = (char) (((cCharAt >> i11) & 7) + 48);
                    if (c7 != '0' || z) {
                        sb2.append(c7);
                        z = true;
                    }
                }
                if (!z) {
                    sb2.append('0');
                }
            } else {
                sb2.append("\\r");
            }
            i10++;
        }
        return sb2.toString();
    }

    @Override // x4.a
    public final int c(a aVar) {
        return this.f18136a.compareTo(((t) aVar).f18136a);
    }

    @Override // x4.a
    public final String d() {
        return "utf8";
    }

    public final String e() {
        return "\"" + a() + '\"';
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof t)) {
            return false;
        }
        return this.f18136a.equals(((t) obj).f18136a);
    }

    public final int hashCode() {
        return this.f18136a.hashCode();
    }

    public final String toString() {
        return "string{\"" + a() + "\"}";
    }
}
