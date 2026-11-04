package ce;

/* loaded from: classes.dex */
public class z0 implements g {

    /* renamed from: a, reason: collision with root package name */
    public String f3238a;

    /* renamed from: b, reason: collision with root package name */
    public int f3239b;

    /* renamed from: c, reason: collision with root package name */
    public String f3240c;

    public z0() {
    }

    @Override // ce.g
    public final long a() {
        return 0L;
    }

    @Override // ce.g
    public final long b() {
        return 0L;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z0) {
            return this.f3238a.equals(((z0) obj).f3238a);
        }
        return false;
    }

    @Override // ce.g
    public final int getAttributes() {
        return 17;
    }

    @Override // ce.g
    public final String getName() {
        return this.f3238a;
    }

    @Override // ce.g
    public final int getType() {
        int i10 = this.f3239b & 65535;
        if (i10 != 1) {
            return i10 != 3 ? 8 : 16;
        }
        return 32;
    }

    public final int hashCode() {
        return this.f3238a.hashCode();
    }

    @Override // ce.g
    public final long length() {
        return 0L;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbShareInfo[netName=");
        sb2.append(this.f3238a);
        sb2.append(",type=0x");
        android.support.v4.media.session.a.y(this.f3239b, 8, ",remark=", sb2);
        return new String(g.b.l(this.f3240c, "]", sb2));
    }

    public z0(String str) {
        this.f3238a = str;
        this.f3239b = 0;
        this.f3240c = null;
    }
}
