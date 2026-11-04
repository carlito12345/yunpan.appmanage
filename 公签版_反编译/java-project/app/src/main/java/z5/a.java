package z5;

import a6.q;
import f5.f;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: b, reason: collision with root package name */
    public final int f19433b;

    /* renamed from: c, reason: collision with root package name */
    public final f f19434c;

    public a(int i10, f fVar) {
        this.f19433b = i10;
        this.f19434c = fVar;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        this.f19434c.b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f19433b).array());
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f19433b == aVar.f19433b && this.f19434c.equals(aVar.f19434c);
    }

    @Override // f5.f
    public final int hashCode() {
        return q.h(this.f19433b, this.f19434c);
    }
}
