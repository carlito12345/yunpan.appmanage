package a3;

import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class c implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final float f372a;

    /* renamed from: b, reason: collision with root package name */
    public final int f373b;

    public c(float f10, int i10) {
        this.f372a = f10;
        this.f373b = i10;
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
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f372a == cVar.f372a && this.f373b == cVar.f373b;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f372a).hashCode() + 527) * 31) + this.f373b;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f372a + ", svcTemporalLayerCount=" + this.f373b;
    }
}
