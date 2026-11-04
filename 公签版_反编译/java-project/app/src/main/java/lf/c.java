package lf;

import java.util.Locale;
import mf.h;

/* loaded from: classes.dex */
public final class c extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public final int f10719c;

    public c(int i10, int i11) {
        super(i10, 3);
        this.f10719c = i11;
    }

    @Override // ab.a
    public final String f(h hVar, Locale locale) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = (this.f10719c / 2) - 1; i10 >= 0; i10--) {
            sb2.append(Integer.toHexString((this.f567b >> (i10 * 8)) & 255));
        }
        return sb2.toString();
    }
}
