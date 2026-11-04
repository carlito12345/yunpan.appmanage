package zg;

import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f19574a = 0;

    static {
        Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
    }

    public static boolean a(CharSequence charSequence) {
        int length = charSequence == null ? 0 : charSequence.length();
        if (length == 0) {
            return true;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isWhitespace(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static String b(String str, char c7) {
        String str2;
        int length = 16 - str.length();
        if (length <= 0) {
            return str;
        }
        if (length <= 8192) {
            if (length <= 0) {
                str2 = "";
            } else {
                char[] cArr = new char[length];
                Arrays.fill(cArr, c7);
                str2 = new String(cArr);
            }
            return str.concat(str2);
        }
        String strValueOf = String.valueOf(c7);
        if (strValueOf == null || strValueOf.length() == 0) {
            strValueOf = " ";
        }
        int length2 = strValueOf.length();
        int length3 = 16 - str.length();
        if (length3 <= 0) {
            return str;
        }
        if (length2 == 1 && length3 <= 8192) {
            return b(str, strValueOf.charAt(0));
        }
        if (length3 == length2) {
            return str.concat(strValueOf);
        }
        if (length3 < length2) {
            return str.concat(strValueOf.substring(0, length3));
        }
        char[] cArr2 = new char[length3];
        char[] charArray = strValueOf.toCharArray();
        for (int i10 = 0; i10 < length3; i10++) {
            cArr2[i10] = charArray[i10 % length2];
        }
        return str.concat(new String(cArr2));
    }
}
