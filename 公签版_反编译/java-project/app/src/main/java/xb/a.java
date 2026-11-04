package xb;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final a f18421b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18422a = false;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f18422a == ((a) obj).f18422a;
    }

    public final int hashCode() {
        return this.f18422a ? 1231 : 1237;
    }

    public final String toString() {
        return "MinimapConfig(minimapDrawTextAsBlocks=" + this.f18422a + ")";
    }
}
