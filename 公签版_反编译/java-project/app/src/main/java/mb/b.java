package mb;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f11056a;

    /* renamed from: b, reason: collision with root package name */
    public int f11057b;

    /* renamed from: c, reason: collision with root package name */
    public int f11058c;

    public b() {
    }

    public final b a() {
        b bVar = new b();
        bVar.f11056a = this.f11056a;
        bVar.f11057b = this.f11057b;
        bVar.f11058c = this.f11058c;
        return bVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return bVar.f11058c == this.f11058c && bVar.f11057b == this.f11057b && bVar.f11056a == this.f11056a;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f11056a), Integer.valueOf(this.f11057b), Integer.valueOf(this.f11058c));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CharPosition(line = ");
        sb2.append(this.f11057b);
        sb2.append(",column = ");
        sb2.append(this.f11058c);
        sb2.append(",index = ");
        return android.support.v4.media.session.a.s(sb2, this.f11056a, ")");
    }

    public b(int i10, int i11, int i12) {
        this.f11056a = i12;
        this.f11057b = i10;
        this.f11058c = i11;
    }
}
