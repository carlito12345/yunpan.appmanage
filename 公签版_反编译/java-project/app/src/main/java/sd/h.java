package sd;

import vc.l;

/* loaded from: classes.dex */
public final class h implements l {

    /* renamed from: a, reason: collision with root package name */
    public b f14544a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14545b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14546c;

    /* renamed from: d, reason: collision with root package name */
    public String f14547d;

    public h(b bVar, int i10) {
        this.f14544a = bVar;
        this.f14545b = i10;
    }

    @Override // vc.a
    public final vc.a a() {
        if (l.class.isAssignableFrom(h.class)) {
            return this;
        }
        return null;
    }

    @Override // vc.a
    public final String b() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.f14545b;
        sb2.append((i10 >>> 24) & 255);
        sb2.append(".");
        sb2.append((i10 >>> 16) & 255);
        sb2.append(".");
        sb2.append((i10 >>> 8) & 255);
        sb2.append(".");
        sb2.append(i10 & 255);
        return sb2.toString();
    }

    public final String c() {
        return this.f14544a.a() ? b() : this.f14544a.f14486a;
    }

    public final boolean equals(Object obj) {
        return obj != null && (obj instanceof h) && ((h) obj).f14545b == this.f14545b;
    }

    public final int hashCode() {
        return this.f14545b;
    }

    public final String toString() {
        return this.f14544a.toString() + "/" + b();
    }

    public h(b bVar, int i10, int i11) {
        this.f14544a = bVar;
        this.f14545b = i10;
        this.f14546c = true;
    }
}
