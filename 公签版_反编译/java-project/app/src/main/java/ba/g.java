package ba;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final String f2690a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2691b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2692c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2693d;

    /* renamed from: e, reason: collision with root package name */
    public final long f2694e;

    public g(z7.s sVar) {
        this.f2690a = sVar.o("fileId").i();
        this.f2691b = sVar.o("fileName").i();
        this.f2692c = p000if.a.m0(sVar.o("utime").h());
        boolean zContainsKey = sVar.f19480a.containsKey("fileSize");
        this.f2693d = !zContainsKey;
        if (zContainsKey) {
            this.f2694e = sVar.o("fileSize").h();
        }
    }
}
