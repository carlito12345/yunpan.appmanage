package r3;

import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import u1.f0;
import u1.q;

/* loaded from: classes.dex */
public abstract class i {
    static {
        Pattern.compile("^NOTE([ \t].*)?$");
    }

    public static float a(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long b(String str) {
        String str2 = f0.f15206a;
        String[] strArrSplit = str.split("\\.", 2);
        long j10 = 0;
        for (String str3 : strArrSplit[0].split(":", -1)) {
            j10 = (j10 * 60) + Long.parseLong(str3);
        }
        long j11 = j10 * 1000;
        if (strArrSplit.length == 2) {
            String strTrim = strArrSplit[1].trim();
            if (strTrim.length() != 3) {
                throw new IllegalArgumentException("Expected 3 decimal places, got: ".concat(strTrim));
            }
            j11 += Long.parseLong(strTrim);
        }
        return j11 * 1000;
    }

    public static void c(q qVar) {
        int i10 = qVar.f15267b;
        Charset charset = StandardCharsets.UTF_8;
        String strP = qVar.p(charset);
        if (strP == null || !strP.startsWith("WEBVTT")) {
            qVar.O(i10);
            throw r1.f0.a(null, "Expected WEBVTT. Got " + qVar.p(charset));
        }
    }
}
