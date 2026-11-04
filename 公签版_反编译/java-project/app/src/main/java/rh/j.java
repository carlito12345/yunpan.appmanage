package rh;

import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class j extends p {

    /* renamed from: a, reason: collision with root package name */
    public final String f13795a;

    /* renamed from: b, reason: collision with root package name */
    public final Pattern f13796b;

    public j(String str, Pattern pattern) {
        this.f13795a = oh.a.d(str);
        this.f13796b = pattern;
    }

    @Override // rh.p
    public final int a() {
        return 8;
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        String str = this.f13795a;
        return lVar2.j(str) && this.f13796b.matcher(lVar2.b(str)).find();
    }

    public final String toString() {
        return "[" + this.f13795a + "~=" + this.f13796b.toString() + "]";
    }
}
