package t0;

import android.os.Build;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class b {
    static {
        int i10 = Build.VERSION.SDK_INT;
        a aVar = a.f14630a;
        if (i10 >= 30) {
            aVar.a(30);
        }
        if (i10 >= 30) {
            aVar.a(31);
        }
        if (i10 >= 30) {
            aVar.a(33);
        }
        if (i10 >= 30) {
            aVar.a(1000000);
        }
    }

    public static final boolean a() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            if (i10 >= 32) {
                String str = Build.VERSION.CODENAME;
                ue.d.d(str, "CODENAME");
                if (!"REL".equals(str)) {
                    Locale locale = Locale.ROOT;
                    String upperCase = str.toUpperCase(locale);
                    ue.d.d(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    String upperCase2 = "Tiramisu".toUpperCase(locale);
                    ue.d.d(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    if (upperCase.compareTo(upperCase2) >= 0) {
                    }
                }
            }
            return false;
        }
        return true;
    }
}
