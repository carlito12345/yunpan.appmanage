package l5;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f10593a;

    public j(String str) {
        this.f10593a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f10593a.equals(((j) obj).f10593a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10593a.hashCode();
    }

    public final String toString() {
        return g.b.l(this.f10593a, "'}", new StringBuilder("StringHeaderFactory{value='"));
    }
}
