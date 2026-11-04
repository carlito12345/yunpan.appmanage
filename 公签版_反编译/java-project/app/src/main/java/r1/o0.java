package r1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class o0 {

    /* renamed from: a, reason: collision with root package name */
    public Integer f13503a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13504b;

    /* renamed from: c, reason: collision with root package name */
    public int f13505c;

    /* renamed from: d, reason: collision with root package name */
    public long f13506d;

    /* renamed from: e, reason: collision with root package name */
    public long f13507e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13508f;

    /* renamed from: g, reason: collision with root package name */
    public c f13509g = c.f13422c;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
    }

    public final long a(int i10, int i11) {
        a aVarA = this.f13509g.a(i10);
        if (aVarA.f13363a != -1) {
            return aVarA.f13368f[i11];
        }
        return -9223372036854775807L;
    }

    public final int b(long j10) {
        int i10;
        a aVarA;
        int i11;
        c cVar = this.f13509g;
        long j11 = this.f13506d;
        cVar.getClass();
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        if (j11 != -9223372036854775807L && j10 >= j11) {
            return -1;
        }
        int i12 = 0;
        while (true) {
            i10 = cVar.f13424a;
            if (i12 >= i10) {
                break;
            }
            cVar.a(i12).getClass();
            cVar.a(i12).getClass();
            if (0 > j10 && ((i11 = (aVarA = cVar.a(i12)).f13363a) == -1 || aVarA.a(-1) < i11)) {
                break;
            }
            i12++;
        }
        if (i12 >= i10) {
            return -1;
        }
        if (j11 != -9223372036854775807L) {
            cVar.a(i12).getClass();
            if (0 > j11) {
                return -1;
            }
        }
        return i12;
    }

    public final int c(long j10) {
        c cVar = this.f13509g;
        int i10 = cVar.f13424a;
        int i11 = i10 - 1;
        if (i11 == i10 - 1) {
            cVar.a(i11).getClass();
        }
        while (i11 >= 0 && j10 != Long.MIN_VALUE) {
            cVar.a(i11).getClass();
            if (j10 >= 0) {
                break;
            }
            i11--;
        }
        if (i11 >= 0) {
            a aVarA = cVar.a(i11);
            int i12 = aVarA.f13363a;
            if (i12 == -1) {
                return i11;
            }
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = aVarA.f13367e[i13];
                if (i14 == 0 || i14 == 1) {
                    return i11;
                }
            }
        }
        return -1;
    }

    public final long d(int i10) {
        this.f13509g.a(i10).getClass();
        return 0L;
    }

    public final int e(int i10) {
        return this.f13509g.a(i10).a(-1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !o0.class.equals(obj.getClass())) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return Objects.equals(this.f13503a, o0Var.f13503a) && Objects.equals(this.f13504b, o0Var.f13504b) && this.f13505c == o0Var.f13505c && this.f13506d == o0Var.f13506d && this.f13507e == o0Var.f13507e && this.f13508f == o0Var.f13508f && Objects.equals(this.f13509g, o0Var.f13509g);
    }

    public final boolean f(int i10) {
        c cVar = this.f13509g;
        int i11 = cVar.f13424a;
        if (i10 != i11 - 1 || i10 != i11 - 1) {
            return false;
        }
        cVar.a(i10).getClass();
        return false;
    }

    public final boolean g(int i10) {
        this.f13509g.a(i10).getClass();
        return false;
    }

    public final void h(Integer num, Object obj, int i10, long j10, long j11, c cVar, boolean z) {
        this.f13503a = num;
        this.f13504b = obj;
        this.f13505c = i10;
        this.f13506d = j10;
        this.f13507e = j11;
        this.f13509g = cVar;
        this.f13508f = z;
    }

    public final int hashCode() {
        Integer num = this.f13503a;
        int iHashCode = (217 + (num == null ? 0 : num.hashCode())) * 31;
        Object obj = this.f13504b;
        int iHashCode2 = (((iHashCode + (obj != null ? obj.hashCode() : 0)) * 31) + this.f13505c) * 31;
        long j10 = this.f13506d;
        int i10 = (iHashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f13507e;
        return this.f13509g.hashCode() + ((((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f13508f ? 1 : 0)) * 31);
    }
}
