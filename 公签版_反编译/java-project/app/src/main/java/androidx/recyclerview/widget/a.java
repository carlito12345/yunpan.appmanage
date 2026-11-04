package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f2023a;

    /* renamed from: b, reason: collision with root package name */
    public int f2024b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2025c;

    /* renamed from: d, reason: collision with root package name */
    public int f2026d;

    public a(Object obj, int i10, int i11, int i12) {
        this.f2023a = i10;
        this.f2024b = i11;
        this.f2026d = i12;
        this.f2025c = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i10 = this.f2023a;
        if (i10 != aVar.f2023a) {
            return false;
        }
        if (i10 == 8 && Math.abs(this.f2026d - this.f2024b) == 1 && this.f2026d == aVar.f2024b && this.f2024b == aVar.f2026d) {
            return true;
        }
        if (this.f2026d != aVar.f2026d || this.f2024b != aVar.f2024b) {
            return false;
        }
        Object obj2 = this.f2025c;
        if (obj2 != null) {
            if (!obj2.equals(aVar.f2025c)) {
                return false;
            }
        } else if (aVar.f2025c != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f2023a * 31) + this.f2024b) * 31) + this.f2026d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("[");
        int i10 = this.f2023a;
        sb2.append(i10 != 1 ? i10 != 2 ? i10 != 4 ? i10 != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb2.append(",s:");
        sb2.append(this.f2024b);
        sb2.append("c:");
        sb2.append(this.f2026d);
        sb2.append(",p:");
        sb2.append(this.f2025c);
        sb2.append("]");
        return sb2.toString();
    }
}
