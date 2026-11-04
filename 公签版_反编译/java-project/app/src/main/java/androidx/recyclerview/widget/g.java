package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final c f2119a;

    /* renamed from: b, reason: collision with root package name */
    public int f2120b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2121c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f2122d = -1;

    public g(c cVar) {
        this.f2119a = cVar;
    }

    public final void a() {
        int i10 = this.f2120b;
        if (i10 == 0) {
            return;
        }
        c cVar = this.f2119a;
        if (i10 == 1) {
            cVar.d(this.f2121c, this.f2122d);
        } else if (i10 == 2) {
            cVar.e(this.f2121c, this.f2122d);
        } else if (i10 == 3) {
            ((m1) cVar.f2050a).f2188a.d(this.f2121c, this.f2122d);
        }
        this.f2120b = 0;
    }

    public final void b(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        if (this.f2120b == 3 && i10 <= (i13 = this.f2122d + (i12 = this.f2121c)) && (i14 = i10 + i11) >= i12) {
            this.f2121c = Math.min(i10, i12);
            this.f2122d = Math.max(i13, i14) - this.f2121c;
        } else {
            a();
            this.f2121c = i10;
            this.f2122d = i11;
            this.f2120b = 3;
        }
    }

    public final void c(int i10, int i11) {
        a();
        ((m1) this.f2119a.f2050a).f2188a.c(i10, i11);
    }
}
