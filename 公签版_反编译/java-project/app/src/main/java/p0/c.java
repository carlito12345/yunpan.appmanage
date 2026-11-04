package p0;

import android.graphics.Insets;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f12539e = new c(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f12540a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12541b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12542c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12543d;

    public c(int i10, int i11, int i12, int i13) {
        this.f12540a = i10;
        this.f12541b = i11;
        this.f12542c = i12;
        this.f12543d = i13;
    }

    public static c a(c cVar, c cVar2) {
        return b(Math.max(cVar.f12540a, cVar2.f12540a), Math.max(cVar.f12541b, cVar2.f12541b), Math.max(cVar.f12542c, cVar2.f12542c), Math.max(cVar.f12543d, cVar2.f12543d));
    }

    public static c b(int i10, int i11, int i12, int i13) {
        return (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) ? f12539e : new c(i10, i11, i12, i13);
    }

    public static c c(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets d() {
        return b.a(this.f12540a, this.f12541b, this.f12542c, this.f12543d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f12543d == cVar.f12543d && this.f12540a == cVar.f12540a && this.f12542c == cVar.f12542c && this.f12541b == cVar.f12541b;
    }

    public final int hashCode() {
        return (((((this.f12540a * 31) + this.f12541b) * 31) + this.f12542c) * 31) + this.f12543d;
    }

    public final String toString() {
        return "Insets{left=" + this.f12540a + ", top=" + this.f12541b + ", right=" + this.f12542c + ", bottom=" + this.f12543d + '}';
    }
}
