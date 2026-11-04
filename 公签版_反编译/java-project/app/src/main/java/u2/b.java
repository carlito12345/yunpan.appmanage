package u2;

import r1.a0;
import r1.c0;
import r1.p;

/* loaded from: classes.dex */
public final class b implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f15317a;

    /* renamed from: b, reason: collision with root package name */
    public final long f15318b;

    /* renamed from: c, reason: collision with root package name */
    public final long f15319c;

    /* renamed from: d, reason: collision with root package name */
    public final long f15320d;

    /* renamed from: e, reason: collision with root package name */
    public final long f15321e;

    public b(long j10, long j11, long j12, long j13, long j14) {
        this.f15317a = j10;
        this.f15318b = j11;
        this.f15319c = j12;
        this.f15320d = j13;
        this.f15321e = j14;
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
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f15317a == bVar.f15317a && this.f15318b == bVar.f15318b && this.f15319c == bVar.f15319c && this.f15320d == bVar.f15320d && this.f15321e == bVar.f15321e;
    }

    public final int hashCode() {
        return p000if.a.U(this.f15321e) + ((p000if.a.U(this.f15320d) + ((p000if.a.U(this.f15319c) + ((p000if.a.U(this.f15318b) + ((p000if.a.U(this.f15317a) + 527) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f15317a + ", photoSize=" + this.f15318b + ", photoPresentationTimestampUs=" + this.f15319c + ", videoStartPosition=" + this.f15320d + ", videoSize=" + this.f15321e;
    }
}
