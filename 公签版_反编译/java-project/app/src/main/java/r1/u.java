package r1;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final long f13566a;

    /* renamed from: b, reason: collision with root package name */
    public final long f13567b;

    /* renamed from: c, reason: collision with root package name */
    public final long f13568c;

    /* renamed from: d, reason: collision with root package name */
    public final float f13569d;

    /* renamed from: e, reason: collision with root package name */
    public final float f13570e;

    static {
        new t().a();
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(2);
        u1.f0.B(3);
        u1.f0.B(4);
    }

    public u(t tVar) {
        long j10 = tVar.f13560a;
        long j11 = tVar.f13561b;
        long j12 = tVar.f13562c;
        float f10 = tVar.f13563d;
        float f11 = tVar.f13564e;
        this.f13566a = j10;
        this.f13567b = j11;
        this.f13568c = j12;
        this.f13569d = f10;
        this.f13570e = f11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f13566a == uVar.f13566a && this.f13567b == uVar.f13567b && this.f13568c == uVar.f13568c && this.f13569d == uVar.f13569d && this.f13570e == uVar.f13570e;
    }

    public final int hashCode() {
        long j10 = this.f13566a;
        long j11 = this.f13567b;
        int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f13568c;
        int i11 = (i10 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
        float f10 = this.f13569d;
        int iFloatToIntBits = (i11 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
        float f11 = this.f13570e;
        return iFloatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
    }
}
