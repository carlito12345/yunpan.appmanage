package a2;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final int f350a;

    /* renamed from: b, reason: collision with root package name */
    public final int f351b;

    /* renamed from: c, reason: collision with root package name */
    public final int f352c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f353d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f354e;

    /* renamed from: f, reason: collision with root package name */
    public final int f355f;

    /* renamed from: g, reason: collision with root package name */
    public final r1.d f356g;

    /* renamed from: h, reason: collision with root package name */
    public final int f357h;

    /* renamed from: i, reason: collision with root package name */
    public final int f358i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f359j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f360k;

    public x(w wVar) {
        this.f350a = wVar.f334a;
        this.f351b = wVar.f335b;
        this.f352c = wVar.f336c;
        this.f353d = wVar.f337d;
        this.f354e = wVar.f338e;
        this.f355f = wVar.f339f;
        this.f356g = wVar.f340g;
        this.f357h = wVar.f341h;
        this.f358i = wVar.f342i;
        this.f359j = wVar.f343j;
        this.f360k = wVar.f344k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        return this.f350a == xVar.f350a && this.f351b == xVar.f351b && this.f352c == xVar.f352c && this.f353d == xVar.f353d && this.f354e == xVar.f354e && this.f355f == xVar.f355f && this.f357h == xVar.f357h && this.f358i == xVar.f358i && this.f359j == xVar.f359j && this.f360k == xVar.f360k && this.f356g.equals(xVar.f356g);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f350a), Integer.valueOf(this.f351b), Integer.valueOf(this.f352c), Boolean.valueOf(this.f353d), Boolean.valueOf(this.f354e), Integer.valueOf(this.f355f), this.f356g, Integer.valueOf(this.f357h), Integer.valueOf(this.f358i), Boolean.valueOf(this.f360k), Boolean.valueOf(this.f359j));
    }
}
