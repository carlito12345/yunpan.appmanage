package r1;

/* loaded from: classes.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public final long f13552a;

    static {
        new r(new dd.c(4));
        u1.f0.B(0);
        u1.f0.B(1);
        u1.f0.B(2);
        u1.f0.B(3);
        u1.f0.B(4);
        u1.f0.B(5);
        u1.f0.B(6);
        u1.f0.B(7);
    }

    public r(dd.c cVar) {
        cVar.getClass();
        String str = u1.f0.f15206a;
        this.f13552a = cVar.f4591b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        rVar.getClass();
        return this.f13552a == rVar.f13552a;
    }

    public final int hashCode() {
        long j10 = this.f13552a;
        return ((((int) 0) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 923521;
    }
}
