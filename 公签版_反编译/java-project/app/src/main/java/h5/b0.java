package h5;

import a2.k1;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class b0 implements f5.f {

    /* renamed from: j, reason: collision with root package name */
    public static final a6.m f6527j = new a6.m(50);

    /* renamed from: b, reason: collision with root package name */
    public final k1 f6528b;

    /* renamed from: c, reason: collision with root package name */
    public final f5.f f6529c;

    /* renamed from: d, reason: collision with root package name */
    public final f5.f f6530d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6531e;

    /* renamed from: f, reason: collision with root package name */
    public final int f6532f;

    /* renamed from: g, reason: collision with root package name */
    public final Class f6533g;

    /* renamed from: h, reason: collision with root package name */
    public final f5.i f6534h;

    /* renamed from: i, reason: collision with root package name */
    public final f5.m f6535i;

    public b0(k1 k1Var, f5.f fVar, f5.f fVar2, int i10, int i11, f5.m mVar, Class cls, f5.i iVar) {
        this.f6528b = k1Var;
        this.f6529c = fVar;
        this.f6530d = fVar2;
        this.f6531e = i10;
        this.f6532f = i11;
        this.f6535i = mVar;
        this.f6533g = cls;
        this.f6534h = iVar;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        Object objG;
        k1 k1Var = this.f6528b;
        synchronized (k1Var) {
            i5.b bVar = (i5.b) k1Var.f209d;
            i5.i iVarT = (i5.i) ((ArrayDeque) bVar.f1a).poll();
            if (iVarT == null) {
                iVarT = bVar.t();
            }
            i5.f fVar = (i5.f) iVarT;
            fVar.f8615b = 8;
            fVar.f8616c = byte[].class;
            objG = k1Var.g(fVar, byte[].class);
        }
        byte[] bArr = (byte[]) objG;
        ByteBuffer.wrap(bArr).putInt(this.f6531e).putInt(this.f6532f).array();
        this.f6530d.b(messageDigest);
        this.f6529c.b(messageDigest);
        messageDigest.update(bArr);
        f5.m mVar = this.f6535i;
        if (mVar != null) {
            mVar.b(messageDigest);
        }
        this.f6534h.b(messageDigest);
        a6.m mVar2 = f6527j;
        Class cls = this.f6533g;
        byte[] bytes = (byte[]) mVar2.a(cls);
        if (bytes == null) {
            bytes = cls.getName().getBytes(f5.f.f5618a);
            mVar2.d(cls, bytes);
        }
        messageDigest.update(bytes);
        this.f6528b.i(bArr);
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return this.f6532f == b0Var.f6532f && this.f6531e == b0Var.f6531e && a6.q.b(this.f6535i, b0Var.f6535i) && this.f6533g.equals(b0Var.f6533g) && this.f6529c.equals(b0Var.f6529c) && this.f6530d.equals(b0Var.f6530d) && this.f6534h.equals(b0Var.f6534h);
    }

    @Override // f5.f
    public final int hashCode() {
        int iHashCode = ((((this.f6530d.hashCode() + (this.f6529c.hashCode() * 31)) * 31) + this.f6531e) * 31) + this.f6532f;
        f5.m mVar = this.f6535i;
        if (mVar != null) {
            iHashCode = (iHashCode * 31) + mVar.hashCode();
        }
        return this.f6534h.f5624b.hashCode() + ((this.f6533g.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f6529c + ", signature=" + this.f6530d + ", width=" + this.f6531e + ", height=" + this.f6532f + ", decodedResourceClass=" + this.f6533g + ", transformation='" + this.f6535i + "', options=" + this.f6534h + '}';
    }
}
