package e3;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f4748a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4749b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4750c;

    public f(int i10, float f10, int i11) {
        this.f4748a = i10;
        this.f4749b = i11;
        this.f4750c = f10;
    }

    public static f a(int i10) {
        int i11 = (i10 >> 13) & 7;
        if (i11 == 0) {
            return null;
        }
        return new f(i11, ((i10 & 511) * ((i10 & 512) != 0 ? -1 : 1)) / 10.0f, (i10 >> 10) & 7);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f4748a == fVar.f4748a && this.f4749b == fVar.f4749b && Float.compare(this.f4750c, fVar.f4750c) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f4750c) + (((this.f4748a * 31) + this.f4749b) * 31);
    }

    public final String toString() {
        return "GainField{name=" + this.f4748a + ", originator=" + this.f4749b + ", gain=" + this.f4750c + '}';
    }
}
