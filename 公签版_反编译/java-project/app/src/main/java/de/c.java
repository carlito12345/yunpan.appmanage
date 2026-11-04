package de;

import java.io.PrintStream;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4625a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f4626b;

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f4627c;

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f4628d;

    static {
        String property = System.getProperty("line.separator");
        f4625a = property;
        f4626b = property.length();
        f4627c = new char[]{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};
        f4628d = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(PrintStream printStream, byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return;
        }
        int i12 = i11 % 16;
        int i13 = i11 / 16;
        if (i12 != 0) {
            i13++;
        }
        int i14 = f4626b;
        char[] cArr = new char[(i14 + 74) * i13];
        char[] cArr2 = new char[16];
        int i15 = 0;
        int i16 = 0;
        do {
            b(i15, i16, cArr, 5);
            int i17 = i16 + 5;
            int i18 = i16 + 6;
            cArr[i17] = ':';
            while (true) {
                if (i15 == i11) {
                    int i19 = 16 - i12;
                    int i20 = i19 * 3;
                    char[] cArr3 = f4627c;
                    System.arraycopy(cArr3, 0, cArr, i18, i20);
                    i18 += i20;
                    System.arraycopy(cArr3, 0, cArr2, i12, i19);
                    break;
                }
                cArr[i18] = ' ';
                int i21 = bArr[i10 + i15] & 255;
                b(i21, i18 + 1, cArr, 2);
                i18 += 3;
                if (i21 >= 0) {
                    char c7 = (char) i21;
                    if (Character.isISOControl(c7)) {
                        cArr2[i15 % 16] = '.';
                    } else {
                        cArr2[i15 % 16] = c7;
                    }
                    i15++;
                    if (i15 % 16 == 0) {
                        break;
                    }
                }
            }
            cArr[i18] = ' ';
            cArr[i18 + 1] = ' ';
            cArr[i18 + 2] = '|';
            System.arraycopy(cArr2, 0, cArr, i18 + 3, 16);
            int i22 = i18 + 19;
            int i23 = i18 + 20;
            cArr[i22] = '|';
            f4625a.getChars(0, i14, cArr, i23);
            i16 = i23 + i14;
        } while (i15 < i11);
        printStream.getClass();
    }

    public static void b(int i10, int i11, char[] cArr, int i12) {
        while (i12 > 0) {
            int i13 = (i11 + i12) - 1;
            if (i13 < cArr.length) {
                cArr[i13] = f4628d[i10 & 15];
            }
            if (i10 != 0) {
                i10 >>>= 4;
            }
            i12--;
        }
    }

    public static String c(int i10, int i11) {
        char[] cArr = new char[i11];
        b(i10, 0, cArr, i11);
        return new String(cArr);
    }

    public static String d(int i10, byte[] bArr) {
        char[] cArr = new char[i10];
        int i11 = i10 % 2 == 0 ? i10 / 2 : (i10 / 2) + 1;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12 + 1;
            byte b10 = bArr[i13];
            char[] cArr2 = f4628d;
            cArr[i12] = cArr2[(b10 >> 4) & 15];
            if (i14 == i10) {
                break;
            }
            i12 += 2;
            cArr[i14] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }
}
