package q;

import android.content.res.Configuration;
import android.os.LocaleList;

/* loaded from: classes.dex */
public abstract class u {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static t0.j b(Configuration configuration) {
        return t0.j.c(configuration.getLocales().toLanguageTags());
    }

    public static void c(t0.j jVar) {
        LocaleList.setDefault(LocaleList.forLanguageTags(jVar.f14636a.a()));
    }

    public static void d(Configuration configuration, t0.j jVar) {
        configuration.setLocales(LocaleList.forLanguageTags(jVar.f14636a.a()));
    }
}
