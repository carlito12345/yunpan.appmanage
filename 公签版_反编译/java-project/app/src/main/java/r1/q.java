package r1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final String f13549a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13550b;

    static {
        u1.f0.B(0);
        u1.f0.B(1);
    }

    public q(String str, String str2) {
        this.f13549a = u1.f0.H(str);
        this.f13550b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return Objects.equals(this.f13549a, qVar.f13549a) && Objects.equals(this.f13550b, qVar.f13550b);
    }

    public final int hashCode() {
        int iHashCode = this.f13550b.hashCode() * 31;
        String str = this.f13549a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
