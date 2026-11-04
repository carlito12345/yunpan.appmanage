package w;

/* loaded from: classes.dex */
public final class r2 {

    /* renamed from: a, reason: collision with root package name */
    public int f17234a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f17235b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f17236c = Integer.MIN_VALUE;

    /* renamed from: d, reason: collision with root package name */
    public int f17237d = Integer.MIN_VALUE;

    /* renamed from: e, reason: collision with root package name */
    public int f17238e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f17239f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17240g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17241h = false;

    public final void a(int i10, int i11) {
        this.f17236c = i10;
        this.f17237d = i11;
        this.f17241h = true;
        if (this.f17240g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f17234a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f17235b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f17234a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f17235b = i11;
        }
    }
}
