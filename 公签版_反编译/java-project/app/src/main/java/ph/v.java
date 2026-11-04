package ph;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final int f12753a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12754b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12755c;

    public v(int i10, int i11, int i12) {
        this.f12753a = i10;
        this.f12754b = i11;
        this.f12755c = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v.class != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        return this.f12753a == vVar.f12753a && this.f12754b == vVar.f12754b && this.f12755c == vVar.f12755c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f12753a), Integer.valueOf(this.f12754b), Integer.valueOf(this.f12755c));
    }

    public final String toString() {
        return this.f12754b + "," + this.f12755c + ":" + this.f12753a;
    }
}
