package h5;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class e implements f5.f {

    /* renamed from: b, reason: collision with root package name */
    public final f5.f f6548b;

    /* renamed from: c, reason: collision with root package name */
    public final f5.f f6549c;

    public e(f5.f fVar, f5.f fVar2) {
        this.f6548b = fVar;
        this.f6549c = fVar2;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        this.f6548b.b(messageDigest);
        this.f6549c.b(messageDigest);
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f6548b.equals(eVar.f6548b) && this.f6549c.equals(eVar.f6549c);
    }

    @Override // f5.f
    public final int hashCode() {
        return this.f6549c.hashCode() + (this.f6548b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f6548b + ", signature=" + this.f6549c + '}';
    }
}
