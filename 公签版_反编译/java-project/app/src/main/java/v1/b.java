package v1;

import r1.a0;
import r1.c0;

/* loaded from: classes.dex */
public final class b implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f16327a;

    public b(int i10) {
        this.f16327a = i10;
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
        return (obj instanceof b) && this.f16327a == ((b) obj).f16327a;
    }

    public final int hashCode() {
        return this.f16327a;
    }

    public final String toString() {
        return "Mp4AlternateGroup: " + this.f16327a;
    }
}
