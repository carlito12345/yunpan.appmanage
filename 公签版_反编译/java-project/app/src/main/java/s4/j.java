package s4;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final int f14311a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14312b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14313c;

    /* renamed from: d, reason: collision with root package name */
    public final d.b f14314d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f14315e;

    public j(int i10, int i11, int i12, d.b bVar, boolean z) {
        if (!d.b.S(i10)) {
            throw new IllegalArgumentException("bogus opcode");
        }
        if (!d.b.S(i11)) {
            throw new IllegalArgumentException("bogus family");
        }
        if (!d.b.S(i12)) {
            throw new IllegalArgumentException("bogus nextOpcode");
        }
        if (bVar == null) {
            throw new NullPointerException("format == null");
        }
        this.f14311a = i10;
        this.f14312b = i11;
        this.f14313c = i12;
        this.f14314d = bVar;
        this.f14315e = z;
    }

    public final String a() {
        int i10 = this.f14311a;
        try {
            ma.l lVar = v4.a.f16623a[i10 + 1];
            if (lVar != null) {
                return lVar.f11049c;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        throw new IllegalArgumentException("bogus opcode: ".concat(i10 == ((char) i10) ? qf.c.e0(i10) : qf.c.f0(i10)));
    }

    public final String toString() {
        return a();
    }
}
