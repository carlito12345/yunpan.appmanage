package mb;

import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f11086a = {"NUL", "SOH", "STX", "ETX", "EOT", "ENQ", "ACK", "BEL", "BS", "HT", "LF", "VT", "FF", "CR", "SO", "SI", "DLE", "DC1", "DC2", "DC3", "DC4", "NAK", "SYN", "ETB", "CAN", "EM", "SUB", "ESC", "FS", "GS", "RS", "US", "SP"};

    public static long a(CharSequence charSequence) {
        char cCharAt;
        Objects.requireNonNull(charSequence);
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < charSequence.length() && ((cCharAt = charSequence.charAt(i12)) == '\t' || cCharAt == ' '); i12++) {
            if (cCharAt == '\t') {
                i11++;
            } else {
                i10++;
            }
        }
        return sb.h.g(i10, i11);
    }

    public static String b(int i10, int i11) {
        int iMax = Math.max(0, i10);
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < iMax; i12++) {
            sb2.append(' ');
        }
        return sb2.toString();
    }

    public static long c(h hVar, int i10, int i11) {
        char cCharAt;
        while (i10 < i11 && ((cCharAt = hVar.charAt(i10)) == '\t' || cCharAt == ' ')) {
            i10++;
        }
        if (i10 != i11) {
            while (i11 > 0) {
                char cCharAt2 = hVar.charAt(i11 - 1);
                if (cCharAt2 != '\t' && cCharAt2 != ' ') {
                    break;
                }
                i11--;
            }
        }
        return sb.h.g(i10, i11);
    }

    public static String d(char c7) {
        return c7 < ' ' ? f11086a[c7] : c7 == 127 ? "DEL" : "UNK";
    }

    public static long e(int i10, h hVar) {
        int i11 = i10;
        while (i11 < hVar.f11076c) {
            char cCharAt = hVar.charAt(i11);
            if (((1 << (cCharAt % ' ')) & sb.f.f14475b[cCharAt / ' ']) == 0) {
                break;
            }
            i11++;
        }
        if (i11 > i10) {
            while (i10 > 0) {
                char cCharAt2 = hVar.charAt(i10 - 1);
                if (((1 << (cCharAt2 % ' ')) & sb.f.f14475b[cCharAt2 / ' ']) == 0) {
                    break;
                }
                i10--;
            }
        }
        return sb.h.g(i10, i11);
    }

    public static boolean f(char c7) {
        return c7 != '\t' && (c7 < ' ' || c7 == 127);
    }
}
