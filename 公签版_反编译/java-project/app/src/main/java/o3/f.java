package o3;

import android.text.Layout;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public String f11555a;

    /* renamed from: b, reason: collision with root package name */
    public int f11556b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11557c;

    /* renamed from: d, reason: collision with root package name */
    public int f11558d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11559e;

    /* renamed from: k, reason: collision with root package name */
    public float f11565k;
    public String l;

    /* renamed from: o, reason: collision with root package name */
    public Layout.Alignment f11568o;

    /* renamed from: p, reason: collision with root package name */
    public Layout.Alignment f11569p;
    public b r;

    /* renamed from: t, reason: collision with root package name */
    public String f11572t;

    /* renamed from: u, reason: collision with root package name */
    public String f11573u;

    /* renamed from: f, reason: collision with root package name */
    public int f11560f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f11561g = -1;

    /* renamed from: h, reason: collision with root package name */
    public int f11562h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f11563i = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f11564j = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f11566m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f11567n = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f11570q = -1;

    /* renamed from: s, reason: collision with root package name */
    public float f11571s = Float.MAX_VALUE;

    public final void a(f fVar) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (fVar != null) {
            if (!this.f11557c && fVar.f11557c) {
                this.f11556b = fVar.f11556b;
                this.f11557c = true;
            }
            if (this.f11562h == -1) {
                this.f11562h = fVar.f11562h;
            }
            if (this.f11563i == -1) {
                this.f11563i = fVar.f11563i;
            }
            if (this.f11555a == null && (str = fVar.f11555a) != null) {
                this.f11555a = str;
            }
            if (this.f11560f == -1) {
                this.f11560f = fVar.f11560f;
            }
            if (this.f11561g == -1) {
                this.f11561g = fVar.f11561g;
            }
            if (this.f11567n == -1) {
                this.f11567n = fVar.f11567n;
            }
            if (this.f11568o == null && (alignment2 = fVar.f11568o) != null) {
                this.f11568o = alignment2;
            }
            if (this.f11569p == null && (alignment = fVar.f11569p) != null) {
                this.f11569p = alignment;
            }
            if (this.f11570q == -1) {
                this.f11570q = fVar.f11570q;
            }
            if (this.f11564j == -1) {
                this.f11564j = fVar.f11564j;
                this.f11565k = fVar.f11565k;
            }
            if (this.r == null) {
                this.r = fVar.r;
            }
            if (this.f11571s == Float.MAX_VALUE) {
                this.f11571s = fVar.f11571s;
            }
            if (this.f11572t == null) {
                this.f11572t = fVar.f11572t;
            }
            if (this.f11573u == null) {
                this.f11573u = fVar.f11573u;
            }
            if (!this.f11559e && fVar.f11559e) {
                this.f11558d = fVar.f11558d;
                this.f11559e = true;
            }
            if (this.f11566m != -1 || (i10 = fVar.f11566m) == -1) {
                return;
            }
            this.f11566m = i10;
        }
    }
}
