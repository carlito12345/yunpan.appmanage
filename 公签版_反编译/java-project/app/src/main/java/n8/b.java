package n8;

import d0.f;
import d3.g;
import eb.j;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f11314a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f11315b = Charset.forName("ISO-8859-1");

    public static void a(String str, m8.a aVar, j8.a aVar2, Charset charset) throws i8.b {
        int i10;
        int iOrdinal = aVar.ordinal();
        int i11 = 0;
        if (iOrdinal == 1) {
            int length = str.length();
            while (i11 < length) {
                int iCharAt = str.charAt(i11) - '0';
                int i12 = i11 + 2;
                if (i12 < length) {
                    aVar2.b(org.bouncycastle.jcajce.provider.digest.a.b(str.charAt(i11 + 1) - '0', 10, iCharAt * 100, str.charAt(i12) - '0'), 10);
                    i11 += 3;
                } else {
                    i11++;
                    if (i11 < length) {
                        aVar2.b((iCharAt * 10) + (str.charAt(i11) - '0'), 7);
                        i11 = i12;
                    } else {
                        aVar2.b(iCharAt, 4);
                    }
                }
            }
            return;
        }
        if (iOrdinal == 2) {
            int length2 = str.length();
            while (i11 < length2) {
                char cCharAt = str.charAt(i11);
                int[] iArr = f11314a;
                int i13 = cCharAt < '`' ? iArr[cCharAt] : -1;
                if (i13 == -1) {
                    throw new i8.b();
                }
                int i14 = i11 + 1;
                if (i14 < length2) {
                    char cCharAt2 = str.charAt(i14);
                    int i15 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                    if (i15 == -1) {
                        throw new i8.b();
                    }
                    aVar2.b((i13 * 45) + i15, 11);
                    i11 += 2;
                } else {
                    aVar2.b(i13, 6);
                    i11 = i14;
                }
            }
            return;
        }
        if (iOrdinal == 4) {
            byte[] bytes = str.getBytes(charset);
            int length3 = bytes.length;
            while (i11 < length3) {
                aVar2.b(bytes[i11], 8);
                i11++;
            }
            return;
        }
        if (iOrdinal != 6) {
            throw new i8.b("Invalid mode: " + aVar);
        }
        Charset charset2 = j8.e.f9808b;
        if (charset2 == null) {
            throw new i8.b("SJIS Charset not supported on this platform");
        }
        byte[] bytes2 = str.getBytes(charset2);
        if (bytes2.length % 2 != 0) {
            throw new i8.b("Kanji byte size not even");
        }
        int length4 = bytes2.length - 1;
        while (i11 < length4) {
            int i16 = ((bytes2[i11] & 255) << 8) | (bytes2[i11 + 1] & 255);
            int i17 = 33088;
            if (i16 >= 33088 && i16 <= 40956) {
                i10 = i16 - i17;
            } else if (i16 < 57408 || i16 > 60351) {
                i10 = -1;
            } else {
                i17 = 49472;
                i10 = i16 - i17;
            }
            if (i10 == -1) {
                throw new i8.b("Invalid byte sequence");
            }
            aVar2.b(((i10 >> 8) * 192) + (i10 & 255), 13);
            i11 += 2;
        }
    }

    public static boolean b(String str) {
        byte[] bytes = str.getBytes(j8.e.f9808b);
        int length = bytes.length;
        if (length % 2 != 0) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10 += 2) {
            int i11 = bytes[i10] & 255;
            if ((i11 < 129 || i11 > 159) && (i11 < 224 || i11 > 235)) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(int i10, m8.b bVar, int i11) {
        int i12 = bVar.f11001c;
        g gVar = bVar.f11000b[f.c(i11)];
        int i13 = 0;
        for (j jVar : (j[]) gVar.f4437c) {
            i13 += jVar.f4863a;
        }
        return i12 - (i13 * gVar.f4436b) >= (i10 + 7) / 8;
    }
}
