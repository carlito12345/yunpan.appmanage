package ag;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class f extends b {

    /* renamed from: v, reason: collision with root package name */
    public int f675v;

    /* renamed from: w, reason: collision with root package name */
    public int f676w;

    /* renamed from: x, reason: collision with root package name */
    public byte[] f677x;

    /* renamed from: y, reason: collision with root package name */
    public long f678y;
    public String z;

    public f() {
        this.f567b = 3;
    }

    @Override // ag.b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        f fVar = (f) obj;
        k kVar = this.f660p;
        long j10 = kVar != null ? kVar.f695e : this.f678y;
        k kVar2 = fVar.f660p;
        return j10 == (kVar2 != null ? kVar2.f695e : fVar.f678y);
    }

    public final int hashCode() {
        String str = this.f657k;
        k kVar = this.f660p;
        return Objects.hash(str, Long.valueOf(kVar != null ? kVar.f695e : this.f678y));
    }

    @Override // ab.a
    public final String toString() {
        return this.f657k;
    }
}
