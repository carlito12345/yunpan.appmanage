package ae;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: e, reason: collision with root package name */
    public static final String f575e;

    /* renamed from: f, reason: collision with root package name */
    public static final String f576f;

    /* renamed from: a, reason: collision with root package name */
    public String f577a;

    /* renamed from: b, reason: collision with root package name */
    public String f578b;

    /* renamed from: c, reason: collision with root package name */
    public int f579c;

    /* renamed from: d, reason: collision with root package name */
    public int f580d;

    static {
        Properties properties = wd.a.f17870a;
        f575e = properties.getProperty("jcifs.smb1.netbios.scope");
        f576f = properties.getProperty("jcifs.smb1.encoding", System.getProperty("file.encoding"));
    }

    public b() {
    }

    public final int a(int i10, byte[] bArr) {
        int i11;
        int i12;
        String str = f576f;
        byte[] bArr2 = new byte[33];
        int i13 = 15;
        for (int i14 = 0; i14 < 15; i14++) {
            int i15 = i14 * 2;
            byte b10 = (byte) (((bArr[(i15 + 1) + i10] & 255) - 65) << 4);
            bArr2[i14] = b10;
            byte b11 = (byte) (((byte) (((bArr[(i15 + 2) + i10] & 255) - 65) & 15)) | b10);
            bArr2[i14] = b11;
            if (b11 != 32) {
                i13 = i14 + 1;
            }
        }
        try {
            this.f577a = new String(bArr2, 0, i13, str);
        } catch (UnsupportedEncodingException unused) {
        }
        int i16 = ((bArr[i10 + 31] & 255) - 65) << 4;
        this.f579c = i16;
        this.f579c = i16 | (15 & ((bArr[i10 + 32] & 255) - 65));
        int i17 = i10 + 33;
        int i18 = i10 + 34;
        int i19 = bArr[i17] & 255;
        if (i19 == 0) {
            this.f578b = null;
            i12 = 1;
        } else {
            try {
                StringBuffer stringBuffer = new StringBuffer(new String(bArr, i18, i19, str));
                int i20 = i18 + i19;
                while (true) {
                    i11 = i20 + 1;
                    try {
                        int i21 = bArr[i20] & 255;
                        if (i21 == 0) {
                            break;
                        }
                        stringBuffer.append('.');
                        stringBuffer.append(new String(bArr, i11, i21, str));
                        i20 = i21 + i11;
                    } catch (UnsupportedEncodingException unused2) {
                        i18 = i11;
                        i11 = i18;
                        i12 = i11 - i17;
                        return i12 + 33;
                    }
                }
                this.f578b = stringBuffer.toString();
            } catch (UnsupportedEncodingException unused3) {
            }
            i12 = i11 - i17;
        }
        return i12 + 33;
    }

    public final int b(int i10, byte[] bArr) throws UnsupportedEncodingException {
        int length;
        String str = f576f;
        bArr[i10] = HebrewProber.SPACE;
        try {
            byte[] bytes = this.f577a.getBytes(str);
            int i11 = 0;
            while (i11 < bytes.length) {
                int i12 = i11 * 2;
                bArr[i12 + 1 + i10] = (byte) (((bytes[i11] & 240) >> 4) + 65);
                bArr[i12 + 2 + i10] = (byte) ((15 & bytes[i11]) + 65);
                i11++;
            }
            while (i11 < 15) {
                int i13 = i11 * 2;
                bArr[i13 + 1 + i10] = 67;
                bArr[i13 + 2 + i10] = 65;
                i11++;
            }
            int i14 = this.f579c;
            bArr[i10 + 31] = (byte) (((i14 & 240) >> 4) + 65);
            bArr[i10 + 32] = (byte) ((i14 & 15) + 65);
        } catch (UnsupportedEncodingException unused) {
        }
        int i15 = i10 + 33;
        String str2 = this.f578b;
        if (str2 == null) {
            bArr[i15] = 0;
            length = 1;
        } else {
            int i16 = i10 + 34;
            bArr[i15] = 46;
            try {
                System.arraycopy(str2.getBytes(str), 0, bArr, i16, this.f578b.length());
            } catch (UnsupportedEncodingException unused2) {
            }
            int length2 = this.f578b.length() + i16;
            bArr[length2] = 0;
            int i17 = length2 - 1;
            int length3 = i17 - this.f578b.length();
            int i18 = 0;
            while (true) {
                if (bArr[i17] == 46) {
                    bArr[i17] = (byte) i18;
                    i18 = 0;
                } else {
                    i18++;
                }
                int i19 = i17 - 1;
                if (i17 <= length3) {
                    break;
                }
                i17 = i19;
            }
            length = this.f578b.length() + 2;
        }
        return length + 33;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return (this.f578b == null && bVar.f578b == null) ? this.f577a.equals(bVar.f577a) && this.f579c == bVar.f579c : this.f577a.equals(bVar.f577a) && this.f579c == bVar.f579c && this.f578b.equals(bVar.f578b);
    }

    public final int hashCode() {
        int iHashCode = (this.f580d * 65599) + (this.f579c * 65599) + this.f577a.hashCode();
        String str = this.f578b;
        return (str == null || str.length() == 0) ? iHashCode : iHashCode + this.f578b.hashCode();
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.f577a;
        if (str == null) {
            str = "null";
        } else if (str.charAt(0) == 1) {
            char[] charArray = str.toCharArray();
            charArray[0] = '.';
            charArray[1] = '.';
            charArray[14] = '.';
            str = new String(charArray);
        }
        stringBuffer.append(str);
        stringBuffer.append("<");
        stringBuffer.append(de.c.c(this.f579c, 2));
        stringBuffer.append(">");
        if (this.f578b != null) {
            stringBuffer.append(".");
            stringBuffer.append(this.f578b);
        }
        return stringBuffer.toString();
    }

    public b(String str, int i10, String str2) {
        this.f577a = (str.length() > 15 ? str.substring(0, 15) : str).toUpperCase();
        this.f579c = i10;
        this.f578b = (str2 == null || str2.length() <= 0) ? f575e : str2;
        this.f580d = 0;
    }
}
