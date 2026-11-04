package z1;

import f2.c0;
import j$.util.Objects;
import r1.q0;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final long f19328a;

    /* renamed from: b, reason: collision with root package name */
    public final q0 f19329b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19330c;

    /* renamed from: d, reason: collision with root package name */
    public final c0 f19331d;

    /* renamed from: e, reason: collision with root package name */
    public final long f19332e;

    /* renamed from: f, reason: collision with root package name */
    public final q0 f19333f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19334g;

    /* renamed from: h, reason: collision with root package name */
    public final c0 f19335h;

    /* renamed from: i, reason: collision with root package name */
    public final long f19336i;

    /* renamed from: j, reason: collision with root package name */
    public final long f19337j;

    public a(long j10, q0 q0Var, int i10, c0 c0Var, long j11, q0 q0Var2, int i11, c0 c0Var2, long j12, long j13) {
        this.f19328a = j10;
        this.f19329b = q0Var;
        this.f19330c = i10;
        this.f19331d = c0Var;
        this.f19332e = j11;
        this.f19333f = q0Var2;
        this.f19334g = i11;
        this.f19335h = c0Var2;
        this.f19336i = j12;
        this.f19337j = j13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f19328a == aVar.f19328a && this.f19330c == aVar.f19330c && this.f19332e == aVar.f19332e && this.f19334g == aVar.f19334g && this.f19336i == aVar.f19336i && this.f19337j == aVar.f19337j && Objects.equals(this.f19329b, aVar.f19329b) && Objects.equals(this.f19331d, aVar.f19331d) && Objects.equals(this.f19333f, aVar.f19333f) && Objects.equals(this.f19335h, aVar.f19335h);
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f19328a), this.f19329b, Integer.valueOf(this.f19330c), this.f19331d, Long.valueOf(this.f19332e), this.f19333f, Integer.valueOf(this.f19334g), this.f19335h, Long.valueOf(this.f19336i), Long.valueOf(this.f19337j));
    }
}
