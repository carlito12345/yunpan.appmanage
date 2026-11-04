package da;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static String a(int i10, String str) {
        return str + i10;
    }

    public static String b(Exception exc, StringBuilder sb2, String str) {
        sb2.append(exc.getMessage());
        sb2.append(str);
        return sb2.toString();
    }

    public static String c(String str, String str2) {
        return str + str2;
    }

    public static StringBuilder d(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(str2);
        sb2.append(str3);
        return sb2;
    }
}
