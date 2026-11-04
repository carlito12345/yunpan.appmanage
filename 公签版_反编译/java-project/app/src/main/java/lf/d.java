package lf;

import java.util.Locale;
import mf.h;

/* loaded from: classes.dex */
public final class d extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public final short f10720c;

    public d(int i10, short s8) {
        super(i10, 3);
        this.f10720c = s8;
    }

    @Override // ab.a
    public final String f(h hVar, Locale locale) {
        StringBuilder sb2 = new StringBuilder("{");
        sb2.append((int) this.f10720c);
        sb2.append(":");
        return android.support.v4.media.session.a.t(sb2, this.f567b & 4294967295L, "}");
    }
}
