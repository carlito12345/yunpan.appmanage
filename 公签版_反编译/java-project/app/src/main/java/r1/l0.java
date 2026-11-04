package r1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13470a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13471b;

    /* renamed from: c, reason: collision with root package name */
    public final y f13472c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f13473d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13474e;

    /* renamed from: f, reason: collision with root package name */
    public final long f13475f;

    /* renamed from: g, reason: collision with root package name */
    public final long f13476g;

    /* renamed from: h, reason: collision with root package name */
    public final int f13477h;

    /* renamed from: i, reason: collision with root package name */
    public final int f13478i;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        u1.f0.B(5);
        u1.f0.B(6);
    }

    public l0(Object obj, int i10, y yVar, Object obj2, int i11, long j10, long j11, int i12, int i13) {
        a9.o.k(i10 >= 0);
        a9.o.k(i11 >= 0);
        this.f13470a = obj;
        this.f13471b = i10;
        this.f13472c = yVar;
        this.f13473d = obj2;
        this.f13474e = i11;
        this.f13475f = j10;
        this.f13476g = j11;
        this.f13477h = i12;
        this.f13478i = i13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l0.class != obj.getClass()) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return this.f13471b == l0Var.f13471b && this.f13474e == l0Var.f13474e && this.f13475f == l0Var.f13475f && this.f13476g == l0Var.f13476g && this.f13477h == l0Var.f13477h && this.f13478i == l0Var.f13478i && Objects.equals(this.f13472c, l0Var.f13472c) && Objects.equals(this.f13470a, l0Var.f13470a) && Objects.equals(this.f13473d, l0Var.f13473d);
    }

    public final int hashCode() {
        return Objects.hash(this.f13470a, Integer.valueOf(this.f13471b), this.f13472c, this.f13473d, Integer.valueOf(this.f13474e), Long.valueOf(this.f13475f), Long.valueOf(this.f13476g), Integer.valueOf(this.f13477h), Integer.valueOf(this.f13478i));
    }

    public final String toString() {
        String str = "mediaItem=" + this.f13471b + ", period=" + this.f13474e + ", pos=" + this.f13475f;
        int i10 = this.f13477h;
        if (i10 == -1) {
            return str;
        }
        StringBuilder sbB = d0.f.b(str, ", contentPos=");
        sbB.append(this.f13476g);
        sbB.append(", adGroup=");
        sbB.append(i10);
        sbB.append(", ad=");
        sbB.append(this.f13478i);
        return sbB.toString();
    }
}
