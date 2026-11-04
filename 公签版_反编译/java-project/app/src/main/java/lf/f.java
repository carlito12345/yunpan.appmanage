package lf;

import java.util.Locale;
import l2.l0;
import mf.h;

/* loaded from: classes.dex */
public final class f extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public final l0 f10721c;

    public f(int i10, l0 l0Var) {
        super(i10, 3);
        this.f10721c = l0Var;
    }

    @Override // ab.a
    public final String f(h hVar, Locale locale) {
        int i10 = this.f567b;
        if (i10 >= 0) {
            return this.f10721c.f10503a[i10];
        }
        return null;
    }

    @Override // ab.a
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.f567b;
        sb2.append(i10);
        sb2.append(":");
        sb2.append(this.f10721c.f10503a[i10]);
        return sb2.toString();
    }
}
