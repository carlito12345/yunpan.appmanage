package g;

import java.security.AccessController;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5911a;

    static {
        String str = (String) AccessController.doPrivileged(new b.b(0, "java.security.debug"));
        f5911a = str;
        String str2 = (String) AccessController.doPrivileged(new b.b(0, "java.security.auth.debug"));
        if (str == null) {
            f5911a = str2;
        } else if (str2 != null) {
            f5911a = b.k(str, ",", str2);
        }
        String str3 = f5911a;
        if (str3 != null) {
            StringBuffer stringBuffer = new StringBuffer();
            Matcher matcher = Pattern.compile("[Pp][Ee][Rr][Mm][Ii][Ss][Ss][Ii][Oo][Nn]=[a-zA-Z_$][a-zA-Z0-9_$]*([.][a-zA-Z_$][a-zA-Z0-9_$]*)*").matcher(new StringBuffer(str3));
            StringBuffer stringBuffer2 = new StringBuffer();
            while (matcher.find()) {
                stringBuffer.append(matcher.group().replaceFirst("[Pp][Ee][Rr][Mm][Ii][Ss][Ss][Ii][Oo][Nn]=", "permission="));
                stringBuffer.append("  ");
                matcher.appendReplacement(stringBuffer2, "");
            }
            matcher.appendTail(stringBuffer2);
            Matcher matcher2 = Pattern.compile("[Cc][Oo][Dd][Ee][Bb][Aa][Ss][Ee]=[^, ;]*").matcher(stringBuffer2);
            StringBuffer stringBuffer3 = new StringBuffer();
            while (matcher2.find()) {
                stringBuffer.append(matcher2.group().replaceFirst("[Cc][Oo][Dd][Ee][Bb][Aa][Ss][Ee]=", "codebase="));
                stringBuffer.append("  ");
                matcher2.appendReplacement(stringBuffer3, "");
            }
            matcher2.appendTail(stringBuffer3);
            stringBuffer.append(stringBuffer3.toString().toLowerCase(Locale.ENGLISH));
            String string = stringBuffer.toString();
            f5911a = string;
            if (string.equals("help")) {
                System.err.getClass();
                System.exit(0);
            }
        }
        "0123456789abcdef".toCharArray();
    }

    public static c a(String str) {
        if (b(str)) {
            return new c();
        }
        return null;
    }

    public static boolean b(String str) {
        String str2 = f5911a;
        if (str2 == null) {
            return false;
        }
        return (str2.indexOf("all") == -1 && str2.indexOf(str) == -1) ? false : true;
    }
}
