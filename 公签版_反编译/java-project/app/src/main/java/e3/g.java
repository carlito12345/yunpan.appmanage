package e3;

import j$.util.Objects;
import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class g implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final float f4751a;

    /* renamed from: b, reason: collision with root package name */
    public final f f4752b;

    /* renamed from: c, reason: collision with root package name */
    public final f f4753c;

    public g(float f10, f fVar, f fVar2) {
        this.f4751a = f10;
        this.f4752b = fVar;
        this.f4753c = fVar2;
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final /* synthetic */ void b(a0 a0Var) {
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Float.compare(this.f4751a, gVar.f4751a) == 0 && Objects.equals(this.f4752b, gVar.f4752b) && Objects.equals(this.f4753c, gVar.f4753c);
    }

    public final int hashCode() {
        int iFloatToIntBits = Float.floatToIntBits(this.f4751a) * 31;
        f fVar = this.f4752b;
        int iHashCode = (iFloatToIntBits + (fVar != null ? fVar.hashCode() : 0)) * 31;
        f fVar2 = this.f4753c;
        return iHashCode + (fVar2 != null ? fVar2.hashCode() : 0);
    }

    public final String toString() {
        return "ReplayGain Xing/Info: peak=" + this.f4751a + ", field 1=" + this.f4752b + ", field 2=" + this.f4753c;
    }
}
