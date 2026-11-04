package ce;

/* loaded from: classes.dex */
public final class k implements g {

    /* renamed from: a, reason: collision with root package name */
    public String f3080a;

    /* renamed from: b, reason: collision with root package name */
    public int f3081b;

    /* renamed from: c, reason: collision with root package name */
    public int f3082c;

    /* renamed from: d, reason: collision with root package name */
    public int f3083d;

    /* renamed from: e, reason: collision with root package name */
    public String f3084e;

    @Override // ce.g
    public final long a() {
        return 0L;
    }

    @Override // ce.g
    public final long b() {
        return 0L;
    }

    @Override // ce.g
    public final int getAttributes() {
        return 17;
    }

    @Override // ce.g
    public final String getName() {
        return this.f3080a;
    }

    @Override // ce.g
    public final int getType() {
        return (this.f3083d & Integer.MIN_VALUE) != 0 ? 2 : 4;
    }

    @Override // ce.g
    public final long length() {
        return 0L;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ServerInfo1[name=");
        sb2.append(this.f3080a);
        sb2.append(",versionMajor=");
        sb2.append(this.f3081b);
        sb2.append(",versionMinor=");
        sb2.append(this.f3082c);
        sb2.append(",type=0x");
        android.support.v4.media.session.a.y(this.f3083d, 8, ",commentOrMasterBrowser=", sb2);
        return new String(g.b.l(this.f3084e, "]", sb2));
    }
}
