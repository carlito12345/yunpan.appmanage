package h;

import com.android.apksig.internal.apk.v4.V4Signature;
import com.hierynomus.smbfs.SmbPath;
import j$.nio.charset.StandardCharsets;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.security.AccessController;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final g.c f6203c = g.c.a("x509");

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f6204d = ((Boolean) AccessController.doPrivileged(new b.a())).booleanValue();

    /* renamed from: a, reason: collision with root package name */
    public final g.h f6205a;

    /* renamed from: b, reason: collision with root package name */
    public final g.g f6206b;

    /* JADX WARN: Removed duplicated region for block: B:135:0x02a0 A[LOOP:5: B:93:0x01df->B:135:0x02a0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0259 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(StringReader stringReader, Map map) throws IOException {
        g.h hVar;
        int iE;
        boolean z;
        int i10;
        char cCharAt;
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int iE2 = e(stringReader, "Incorrect AVA format");
            if (iE2 == 61) {
                break;
            } else {
                sb2.append((char) iE2);
            }
        }
        String string = sb2.toString();
        HashMap map2 = c.f6208e;
        String strTrim = string.toUpperCase(Locale.ENGLISH).trim();
        String str = (String) map.get(strTrim);
        int i11 = 0;
        if (str == null) {
            c cVar = (c) c.f6209f.get(strTrim);
            if (cVar != null) {
                hVar = cVar.f6211b;
            } else {
                strTrim = strTrim.startsWith("OID.") ? strTrim.substring(4) : strTrim;
                if (strTrim.length() == 0 || (cCharAt = strTrim.charAt(0)) < '0' || cCharAt > '9') {
                    throw new IOException(g.b.A("Invalid keyword \"", strTrim, "\""));
                }
                hVar = new g.h(strTrim);
            }
        } else {
            hVar = new g.h(str);
        }
        this.f6205a = hVar;
        sb2.setLength(0);
        while (true) {
            iE = stringReader.read();
            if (iE != 32 && iE != 10) {
                break;
            }
        }
        int i12 = -1;
        if (iE == -1) {
            this.f6206b = new g.g("");
            return;
        }
        if (iE == 35) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte b10 = 0;
            while (true) {
                int i13 = stringReader.read();
                if (d(i13)) {
                    if (i11 == 0) {
                        throw new IOException("AVA parse, zero hex digits");
                    }
                    if (i11 % 2 == 1) {
                        throw new IOException("AVA parse, odd number of hex digits");
                    }
                    this.f6206b = new g.g(byteArrayOutputStream.toByteArray());
                    return;
                }
                char c7 = (char) i13;
                int iIndexOf = "0123456789ABCDEF".indexOf(Character.toUpperCase(c7));
                if (iIndexOf == -1) {
                    throw new IOException("AVA parse, invalid hex digit: " + c7);
                }
                if (i11 % 2 == 1) {
                    b10 = (byte) ((b10 * 16) + ((byte) iIndexOf));
                    byteArrayOutputStream.write(b10);
                } else {
                    b10 = (byte) iIndexOf;
                }
                i11++;
            }
        } else {
            boolean z4 = f6204d;
            if (iE == 34) {
                int iE3 = e(stringReader, "Quoted string did not end in quote");
                ArrayList arrayList = new ArrayList();
                boolean zH = true;
                while (iE3 != 34) {
                    if (iE3 == 92) {
                        iE3 = e(stringReader, "Quoted string did not end in quote");
                        Byte bA = a(iE3, stringReader);
                        if (bA != null) {
                            arrayList.add(bA);
                            iE3 = stringReader.read();
                            zH = false;
                        } else if (iE3 != 92 && iE3 != 34) {
                            char c10 = (char) iE3;
                            if (",+=\n<>#;".indexOf(c10) < 0) {
                                throw new IOException("Invalid escaped character in AVA: " + c10);
                            }
                        }
                    }
                    if (arrayList.size() > 0) {
                        sb2.append(b(arrayList));
                        arrayList.clear();
                    }
                    char c11 = (char) iE3;
                    zH &= g.g.h(c11);
                    sb2.append(c11);
                    iE3 = e(stringReader, "Quoted string did not end in quote");
                }
                if (arrayList.size() > 0) {
                    sb2.append(b(arrayList));
                    arrayList.clear();
                }
                while (true) {
                    i10 = stringReader.read();
                    if (i10 != 10 && i10 != 32) {
                        break;
                    }
                }
                if (i10 != -1) {
                    throw new IOException("AVA had characters other than whitespace after terminating quote");
                }
                g.h hVar2 = d.a.f4192b;
                g.h hVar3 = this.f6205a;
                this.f6206b = (hVar3.equals(hVar2) || (hVar3.equals(w.f6294v) && !z4)) ? new g.g((byte) 22, sb2.toString().trim()) : zH ? new g.g(sb2.toString().trim()) : new g.g(V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, sb2.toString().trim());
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            boolean zH2 = true;
            int i14 = 0;
            while (true) {
                if (iE != 92) {
                    z = false;
                } else {
                    iE = e(stringReader, "Invalid trailing backslash");
                    Byte bA2 = a(iE, stringReader);
                    if (bA2 != null) {
                        arrayList2.add(bA2);
                        iE = stringReader.read();
                        zH2 = false;
                        if (!d(iE)) {
                            if (arrayList2.size() > 0) {
                                sb2.append(b(arrayList2));
                                arrayList2.clear();
                            }
                            g.h hVar4 = d.a.f4192b;
                            g.h hVar5 = this.f6205a;
                            this.f6206b = (hVar5.equals(hVar4) || (hVar5.equals(w.f6294v) && !z4)) ? new g.g((byte) 22, sb2.toString()) : zH2 ? new g.g(sb2.toString()) : new g.g(V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, sb2.toString());
                            return;
                        }
                        i12 = -1;
                    } else {
                        char c12 = (char) iE;
                        if (",=\n+<>#;\\\" ".indexOf(c12) == i12) {
                            throw new IOException("Invalid escaped character in AVA: '" + c12 + "'");
                        }
                        z = true;
                    }
                }
                if (arrayList2.size() > 0) {
                    for (int i15 = 0; i15 < i14; i15++) {
                        sb2.append(" ");
                    }
                    sb2.append(b(arrayList2));
                    arrayList2.clear();
                    i14 = 0;
                }
                char c13 = (char) iE;
                zH2 &= g.g.h(c13);
                if (iE != 32 || z) {
                    for (int i16 = 0; i16 < i14; i16++) {
                        sb2.append(" ");
                    }
                    sb2.append(c13);
                    i14 = 0;
                } else {
                    i14++;
                }
                iE = stringReader.read();
                if (!d(iE)) {
                }
            }
        }
    }

    public static Byte a(int i10, StringReader stringReader) throws IOException {
        char c7 = (char) i10;
        if ("0123456789ABCDEF".indexOf(Character.toUpperCase(c7)) < 0) {
            return null;
        }
        char cE = (char) e(stringReader, "unexpected EOF - escaped hex value must include two valid digits");
        if ("0123456789ABCDEF".indexOf(Character.toUpperCase(cE)) < 0) {
            throw new IOException("escaped hex value must include two valid digits");
        }
        return Byte.valueOf((byte) ((Character.digit(c7, 16) << 4) + Character.digit(cE, 16)));
    }

    public static String b(ArrayList arrayList) {
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i10 = 0; i10 < size; i10++) {
            bArr[i10] = ((Byte) arrayList.get(i10)).byteValue();
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static boolean c(g.g gVar, boolean z) {
        if (z) {
            byte b10 = gVar.f5922a;
            return b10 == 12 || b10 == 19;
        }
        byte b11 = gVar.f5922a;
        return b11 == 12 || b11 == 22 || b11 == 27 || b11 == 30 || b11 == 19 || b11 == 20;
    }

    public static boolean d(int i10) {
        return i10 == -1 || i10 == 59 || i10 == 62 || i10 == 43 || i10 == 44;
    }

    public static int e(StringReader stringReader, String str) throws IOException {
        int i10 = stringReader.read();
        if (i10 != -1) {
            return i10;
        }
        throw new IOException(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return g().equals(((a) obj).g());
        }
        return false;
    }

    public final String f(Map map, int i10) {
        boolean z = true;
        HashMap map2 = c.f6208e;
        g.h hVar = this.f6205a;
        String string = hVar.toString();
        String str = (String) map.get(string);
        if (str == null) {
            c cVar = (c) c.f6208e.get(hVar);
            if (cVar != null) {
                cVar.getClass();
                if (i10 != 1) {
                    if (i10 == 2) {
                        z = cVar.f6212c;
                    } else {
                        if (i10 != 3) {
                            throw new IllegalArgumentException(da.b.a(i10, "Invalid standard "));
                        }
                        z = cVar.f6213d;
                    }
                }
                if (z) {
                    return cVar.f6210a;
                }
            }
            return i10 == 3 ? string : da.b.c("OID.", string);
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("keyword cannot be empty");
        }
        String strTrim = str.trim();
        char cCharAt = strTrim.charAt(0);
        if (cCharAt < 'A' || cCharAt > 'z' || (cCharAt > 'Z' && cCharAt < 'a')) {
            throw new IllegalArgumentException("keyword does not start with letter");
        }
        for (int i11 = 1; i11 < strTrim.length(); i11++) {
            char cCharAt2 = strTrim.charAt(i11);
            if ((cCharAt2 < 'A' || cCharAt2 > 'z' || (cCharAt2 > 'Z' && cCharAt2 < 'a')) && ((cCharAt2 < '0' || cCharAt2 > '9') && cCharAt2 != '_')) {
                throw new IllegalArgumentException("keyword character is not a letter, digit, or underscore");
            }
        }
        return strTrim;
    }

    public final String g() {
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append(f(Collections.emptyMap(), 3));
        sb2.append('=');
        char cCharAt = sb2.charAt(0);
        g.g gVar = this.f6206b;
        if ((cCharAt < '0' || sb2.charAt(0) > '9') && c(gVar, true)) {
            try {
                String str = new String(gVar.f(), StandardCharsets.UTF_8);
                StringBuilder sb3 = new StringBuilder();
                boolean z = false;
                for (int i10 = 0; i10 < str.length(); i10++) {
                    char cCharAt2 = str.charAt(i10);
                    if (g.g.h(cCharAt2) || ",+<>;\"\\".indexOf(cCharAt2) >= 0 || (i10 == 0 && cCharAt2 == '#')) {
                        if ((i10 == 0 && cCharAt2 == '#') || ",+<>;\"\\".indexOf(cCharAt2) >= 0) {
                            sb3.append(SmbPath.SEPARATOR);
                        }
                        if (Character.isWhitespace(cCharAt2)) {
                            if (!z) {
                                sb3.append(cCharAt2);
                                z = true;
                            }
                        } else {
                            sb3.append(cCharAt2);
                        }
                    } else if (f6203c == null || !g.c.b("ava")) {
                        sb3.append(cCharAt2);
                    } else {
                        for (byte b10 : Character.toString(cCharAt2).getBytes(StandardCharsets.UTF_8)) {
                            sb3.append(SmbPath.SEPARATOR);
                            sb3.append(Character.forDigit((b10 >>> 4) & 15, 16));
                            sb3.append(Character.forDigit(b10 & 15, 16));
                        }
                    }
                    z = false;
                }
                sb2.append(sb3.toString().trim());
            } catch (IOException unused) {
                throw new IllegalArgumentException("DER Value conversion");
            }
        } else {
            try {
                byte[] bArrI = gVar.i();
                sb2.append('#');
                for (byte b11 : bArrI) {
                    sb2.append(Character.forDigit((b11 >>> 4) & 15, 16));
                    sb2.append(Character.forDigit(b11 & 15, 16));
                }
            } catch (IOException unused2) {
                throw new IllegalArgumentException("DER Value conversion");
            }
        }
        String string = sb2.toString();
        Locale locale = Locale.US;
        return Normalizer.normalize(string.toUpperCase(locale).toLowerCase(locale), Normalizer.Form.NFKD);
    }

    public final String h(Map map) {
        char c7;
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(f(map, 3));
        sb2.append('=');
        int i10 = 0;
        char cCharAt = sb2.charAt(0);
        g.g gVar = this.f6206b;
        if ((cCharAt < '0' || sb2.charAt(0) > '9') && c(gVar, false)) {
            try {
                String str = new String(gVar.f(), StandardCharsets.UTF_8);
                StringBuilder sb3 = new StringBuilder();
                for (int i11 = 0; i11 < str.length(); i11++) {
                    char cCharAt2 = str.charAt(i11);
                    if (g.g.h(cCharAt2) || ",=+<>#;\"\\".indexOf(cCharAt2) >= 0) {
                        if (",=+<>#;\"\\".indexOf(cCharAt2) >= 0) {
                            sb3.append(SmbPath.SEPARATOR);
                        }
                        sb3.append(cCharAt2);
                    } else if (cCharAt2 == 0) {
                        sb3.append("\\00");
                    } else if (f6203c == null || !g.c.b("ava")) {
                        sb3.append(cCharAt2);
                    } else {
                        for (byte b10 : Character.toString(cCharAt2).getBytes(StandardCharsets.UTF_8)) {
                            sb3.append(SmbPath.SEPARATOR);
                            sb3.append(Character.toUpperCase(Character.forDigit((b10 >>> 4) & 15, 16)));
                            sb3.append(Character.toUpperCase(Character.forDigit(b10 & 15, 16)));
                        }
                    }
                }
                char[] charArray = sb3.toString().toCharArray();
                StringBuilder sb4 = new StringBuilder();
                int i12 = 0;
                while (i12 < charArray.length && ((c7 = charArray[i12]) == ' ' || c7 == '\r')) {
                    i12++;
                }
                int length = charArray.length - 1;
                while (length >= 0) {
                    char c10 = charArray[length];
                    if (c10 != ' ' && c10 != '\r') {
                        break;
                    }
                    length--;
                }
                while (i10 < charArray.length) {
                    char c11 = charArray[i10];
                    if (i10 < i12 || i10 > length) {
                        sb4.append(SmbPath.SEPARATOR);
                    }
                    sb4.append(c11);
                    i10++;
                }
                sb2.append(sb4.toString());
            } catch (IOException unused) {
                throw new IllegalArgumentException("DER Value conversion");
            }
        } else {
            try {
                byte[] bArrI = gVar.i();
                sb2.append('#');
                int length2 = bArrI.length;
                while (i10 < length2) {
                    byte b11 = bArrI[i10];
                    sb2.append(Character.forDigit((b11 >>> 4) & 15, 16));
                    sb2.append(Character.forDigit(b11 & 15, 16));
                    i10++;
                }
            } catch (IOException unused2) {
                throw new IllegalArgumentException("DER Value conversion");
            }
        }
        return sb2.toString();
    }

    public final int hashCode() {
        return g().hashCode();
    }

    public final String toString() {
        char cCharAt;
        boolean z = true;
        String strF = f(Collections.emptyMap(), 1);
        g.g gVar = this.f6206b;
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append(strF);
        sb2.append("=");
        try {
            String strE = gVar.e();
            if (strE == null) {
                byte[] bArrI = gVar.i();
                sb2.append('#');
                for (byte b10 : bArrI) {
                    sb2.append("0123456789ABCDEF".charAt((b10 >> 4) & 15));
                    sb2.append("0123456789ABCDEF".charAt(b10 & 15));
                }
            } else {
                StringBuilder sb3 = new StringBuilder();
                boolean z4 = false;
                boolean z10 = false;
                for (int i10 = 0; i10 < strE.length(); i10++) {
                    char cCharAt2 = strE.charAt(i10);
                    if (g.g.h(cCharAt2) || ",+=\n<>#;\\\"".indexOf(cCharAt2) >= 0) {
                        if (!z4 && ((i10 == 0 && (cCharAt2 == ' ' || cCharAt2 == '\n')) || ",+=\n<>#;\\\"".indexOf(cCharAt2) >= 0)) {
                            z4 = true;
                        }
                        if (cCharAt2 == ' ' || cCharAt2 == '\n') {
                            if (!z4 && z10) {
                                z4 = true;
                            }
                            z10 = true;
                        } else {
                            if (cCharAt2 == '\"' || cCharAt2 == '\\') {
                                sb3.append(SmbPath.SEPARATOR);
                            }
                            z10 = false;
                        }
                        sb3.append(cCharAt2);
                    } else {
                        if (f6203c == null || !g.c.b("ava")) {
                            sb3.append(cCharAt2);
                        } else {
                            for (byte b11 : Character.toString(cCharAt2).getBytes(StandardCharsets.UTF_8)) {
                                sb3.append(SmbPath.SEPARATOR);
                                sb3.append(Character.toUpperCase(Character.forDigit((b11 >>> 4) & 15, 16)));
                                sb3.append(Character.toUpperCase(Character.forDigit(b11 & 15, 16)));
                            }
                        }
                        z10 = false;
                    }
                }
                if (sb3.length() <= 0 || ((cCharAt = sb3.charAt(sb3.length() - 1)) != ' ' && cCharAt != '\n')) {
                    z = z4;
                }
                if (z) {
                    sb2.append("\"");
                    sb2.append(sb3.toString());
                    sb2.append("\"");
                } else {
                    sb2.append(sb3.toString());
                }
            }
            return sb2.toString();
        } catch (IOException unused) {
            throw new IllegalArgumentException("DER Value conversion");
        }
    }
}
