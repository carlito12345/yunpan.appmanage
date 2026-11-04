package h5;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class s implements f5.f {

    /* renamed from: b, reason: collision with root package name */
    public final Object f6647b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6648c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6649d;

    /* renamed from: e, reason: collision with root package name */
    public final Class f6650e;

    /* renamed from: f, reason: collision with root package name */
    public final Class f6651f;

    /* renamed from: g, reason: collision with root package name */
    public final f5.f f6652g;

    /* renamed from: h, reason: collision with root package name */
    public final a6.d f6653h;

    /* renamed from: i, reason: collision with root package name */
    public final f5.i f6654i;

    /* renamed from: j, reason: collision with root package name */
    public int f6655j;

    public s(Object obj, f5.f fVar, int i10, int i11, a6.d dVar, Class cls, Class cls2, f5.i iVar) {
        a6.h.c(obj, "Argument must not be null");
        this.f6647b = obj;
        this.f6652g = fVar;
        this.f6648c = i10;
        this.f6649d = i11;
        a6.h.c(dVar, "Argument must not be null");
        this.f6653h = dVar;
        a6.h.c(cls, "Resource class must not be null");
        this.f6650e = cls;
        a6.h.c(cls2, "Transcode class must not be null");
        this.f6651f = cls2;
        a6.h.c(iVar, "Argument must not be null");
        this.f6654i = iVar;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.f6647b.equals(sVar.f6647b) && this.f6652g.equals(sVar.f6652g) && this.f6649d == sVar.f6649d && this.f6648c == sVar.f6648c && this.f6653h.equals(sVar.f6653h) && this.f6650e.equals(sVar.f6650e) && this.f6651f.equals(sVar.f6651f) && this.f6654i.equals(sVar.f6654i);
    }

    @Override // f5.f
    public final int hashCode() {
        if (this.f6655j == 0) {
            int iHashCode = this.f6647b.hashCode();
            this.f6655j = iHashCode;
            int iHashCode2 = ((((this.f6652g.hashCode() + (iHashCode * 31)) * 31) + this.f6648c) * 31) + this.f6649d;
            this.f6655j = iHashCode2;
            int iHashCode3 = this.f6653h.hashCode() + (iHashCode2 * 31);
            this.f6655j = iHashCode3;
            int iHashCode4 = this.f6650e.hashCode() + (iHashCode3 * 31);
            this.f6655j = iHashCode4;
            int iHashCode5 = this.f6651f.hashCode() + (iHashCode4 * 31);
            this.f6655j = iHashCode5;
            this.f6655j = this.f6654i.f5624b.hashCode() + (iHashCode5 * 31);
        }
        return this.f6655j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f6647b + ", width=" + this.f6648c + ", height=" + this.f6649d + ", resourceClass=" + this.f6650e + ", transcodeClass=" + this.f6651f + ", signature=" + this.f6652g + ", hashCode=" + this.f6655j + ", transformations=" + this.f6653h + ", options=" + this.f6654i + '}';
    }
}
