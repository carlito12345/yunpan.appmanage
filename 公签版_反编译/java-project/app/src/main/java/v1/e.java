package v1;

import r1.a0;
import r1.c0;

/* loaded from: classes.dex */
public final class e implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final float f16332a;

    /* renamed from: b, reason: collision with root package name */
    public final float f16333b;

    public e(float f10, float f11) {
        a9.o.i("Invalid latitude or longitude", f10 >= -90.0f && f10 <= 90.0f && f11 >= -180.0f && f11 <= 180.0f);
        this.f16332a = f10;
        this.f16333b = f11;
    }

    @Override // r1.c0
    public final /* synthetic */ r1.p a() {
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
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f16332a == eVar.f16332a && this.f16333b == eVar.f16333b;
    }

    public final int hashCode() {
        return Float.valueOf(this.f16333b).hashCode() + ((Float.valueOf(this.f16332a).hashCode() + 527) * 31);
    }

    public final String toString() {
        return "xyz: latitude=" + this.f16332a + ", longitude=" + this.f16333b;
    }
}
