package h;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f6208e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap f6209f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f6210a;

    /* renamed from: b, reason: collision with root package name */
    public final g.h f6211b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6212c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6213d;

    static {
        new c("CN", w.f6282f, true, true);
        new c("C", w.f6283g, true, true);
        new c("L", w.f6284h, true, true);
        g.h hVar = w.f6287k;
        new c("S", hVar, false, false);
        new c("ST", hVar, true, true);
        new c("O", w.f6285i, true, true);
        new c("OU", w.f6286j, true, true);
        new c("T", w.f6288m, false, false);
        new c("IP", w.f6293t, false, false);
        new c("STREET", w.l, true, true);
        new c("DC", w.f6294v, false, true);
        g.h hVar2 = w.f6289n;
        new c("DNQUALIFIER", hVar2, false, false);
        new c("DNQ", hVar2, false, false);
        new c("SURNAME", w.f6290p, false, false);
        new c("GIVENNAME", w.f6291q, false, false);
        new c("INITIALS", w.r, false, false);
        new c("GENERATION", w.f6292s, false, false);
        g.h hVar3 = d.a.f4192b;
        new c("EMAIL", hVar3, false, false);
        new c("EMAILADDRESS", hVar3, false, false);
        new c("UID", w.f6295w, false, true);
        new c("SERIALNUMBER", w.f6296x, false, false);
    }

    public c(String str, g.h hVar, boolean z, boolean z4) {
        this.f6210a = str;
        this.f6211b = hVar;
        this.f6212c = z;
        this.f6213d = z4;
        f6208e.put(hVar, this);
        f6209f.put(str, this);
    }
}
