package bf;

/* loaded from: classes.dex */
public abstract class h extends g {
    public static boolean N(String str, String str2) {
        return O(str, 0, str2, false) >= 0;
    }

    public static final int O(String str, int i10, String str2, boolean z) {
        if (!z) {
            return str.indexOf(str2, i10);
        }
        int length = str.length();
        if (i10 < 0) {
            i10 = 0;
        }
        int length2 = str.length();
        if (length > length2) {
            length = length2;
        }
        ye.c cVar = new ye.c(i10, length);
        int i11 = cVar.f19144c;
        int i12 = cVar.f19143b;
        if ((i11 > 0 && i10 <= i12) || (i11 < 0 && i12 <= i10)) {
            while (true) {
                int length3 = str2.length();
                ue.d.e(str2, "<this>");
                ue.d.e(str, "other");
                if (!(!z ? str2.regionMatches(0, str, i10, length3) : str2.regionMatches(z, 0, str, i10, length3))) {
                    if (i10 == i12) {
                        break;
                    }
                    i10 += i11;
                } else {
                    return i10;
                }
            }
        }
        return -1;
    }

    public static String P(int i10, String str) {
        ue.d.e(str, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
        }
        if (i10 == 0) {
            return "";
        }
        int i11 = 1;
        if (i10 == 1) {
            return str.toString();
        }
        int length = str.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = str.charAt(0);
            char[] cArr = new char[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                cArr[i12] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb2 = new StringBuilder(str.length() * i10);
        if (1 <= i10) {
            while (true) {
                sb2.append((CharSequence) str);
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        String string = sb2.toString();
        ue.d.b(string);
        return string;
    }

    public static String Q(String str, String str2, String str3) {
        int iO = O(str, 0, str2, false);
        if (iO < 0) {
            return str;
        }
        int length = str2.length();
        int i10 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb2 = new StringBuilder(length2);
        int i11 = 0;
        do {
            sb2.append((CharSequence) str, i11, iO);
            sb2.append(str3);
            i11 = iO + length;
            if (iO >= str.length()) {
                break;
            }
            iO = O(str, iO + i10, str2, false);
        } while (iO > 0);
        sb2.append((CharSequence) str, i11, str.length());
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }
}
