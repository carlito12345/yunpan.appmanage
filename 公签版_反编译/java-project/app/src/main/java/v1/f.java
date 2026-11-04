package v1;

import r1.a0;
import r1.c0;

/* loaded from: classes.dex */
public final class f implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f16334a;

    /* renamed from: b, reason: collision with root package name */
    public final long f16335b;

    /* renamed from: c, reason: collision with root package name */
    public final long f16336c;

    public f(long j10, long j11, long j12) {
        this.f16334a = j10;
        this.f16335b = j11;
        this.f16336c = j12;
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
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f16334a == fVar.f16334a && this.f16335b == fVar.f16335b && this.f16336c == fVar.f16336c;
    }

    public final int hashCode() {
        return p000if.a.U(this.f16336c) + ((p000if.a.U(this.f16335b) + ((p000if.a.U(this.f16334a) + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.f16334a + ", modification time=" + this.f16335b + ", timescale=" + this.f16336c;
    }
}
