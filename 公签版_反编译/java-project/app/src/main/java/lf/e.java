package lf;

import java.util.Locale;
import mf.h;
import mf.j;
import mf.l;

/* loaded from: classes.dex */
public final class e extends ab.a {
    public e(int i10) {
        super(i10, 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0096  */
    @Override // ab.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String f(h hVar, Locale locale) {
        char c7;
        long j10 = this.f567b & 4294967295L;
        if (j10 > 16973824 && j10 < 16977920) {
            return "@android:style/" + ((String) h.f11217b.get(Integer.valueOf((int) j10)));
        }
        String str = "resourceId:0x" + Long.toHexString(j10);
        if (hVar == null) {
            return str;
        }
        a9.a aVar = null;
        l lVar = null;
        char c10 = 65535;
        int i10 = -1;
        for (mf.g gVar : hVar.a(j10)) {
            j jVar = gVar.f11215b;
            Locale locale2 = jVar.f11222c;
            Locale locale3 = qf.a.f13188a;
            int i11 = 0;
            if (locale == null) {
                c7 = 65535;
            } else if (locale.getLanguage().equals(locale2.getLanguage())) {
                c7 = locale.getCountry().equals(locale2.getCountry()) ? (char) 3 : locale2.getCountry().isEmpty() ? (char) 2 : (char) 0;
            } else if (locale2.getCountry().isEmpty() || locale2.getLanguage().isEmpty()) {
                c7 = 1;
            }
            int i12 = jVar.f11227h;
            if (i12 == 65534 || i12 == 65535) {
                i11 = -1;
            } else if (i12 != 0) {
                i11 = i12;
            }
            a9.a aVar2 = gVar.f11216c;
            if (c7 > c10) {
                aVar = aVar2;
                c10 = c7;
            } else if (i11 > i10) {
                aVar = aVar2;
            } else {
                lVar = gVar.f11214a;
            }
            i10 = i11;
            lVar = gVar.f11214a;
        }
        if (aVar == null) {
            return str;
        }
        if (locale != null) {
            return aVar.s(hVar, locale);
        }
        return "@" + lVar.f11233b + "/" + ((String) aVar.f473d);
    }
}
