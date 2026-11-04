package m3;

import android.graphics.PointF;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import u1.f0;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f10836a = Pattern.compile("\\{([^}]*)\\}");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f10837b;

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f10838c;

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f10839d;

    static {
        String str = f0.f15206a;
        Locale locale = Locale.US;
        f10837b = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f10838c = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f10839d = Pattern.compile("\\\\an(\\d+)");
    }

    public static PointF a(String str) throws NumberFormatException {
        String strGroup;
        String strGroup2;
        Matcher matcher = f10837b.matcher(str);
        Matcher matcher2 = f10838c.matcher(str);
        boolean zFind = matcher.find();
        boolean zFind2 = matcher2.find();
        if (zFind) {
            if (zFind2) {
                u1.a.j("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
            }
            strGroup = matcher.group(1);
            strGroup2 = matcher.group(2);
        } else {
            if (!zFind2) {
                return null;
            }
            strGroup = matcher2.group(1);
            strGroup2 = matcher2.group(2);
        }
        strGroup.getClass();
        float f10 = Float.parseFloat(strGroup.trim());
        strGroup2.getClass();
        return new PointF(f10, Float.parseFloat(strGroup2.trim()));
    }
}
