package f5;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class i implements f {

    /* renamed from: b, reason: collision with root package name */
    public final a6.d f5624b = new a6.d();

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        int i10 = 0;
        while (true) {
            a6.d dVar = this.f5624b;
            if (i10 >= dVar.f65c) {
                return;
            }
            h hVar = (h) dVar.f(i10);
            Object objJ = this.f5624b.j(i10);
            g gVar = hVar.f5621b;
            if (hVar.f5623d == null) {
                hVar.f5623d = hVar.f5622c.getBytes(f.f5618a);
            }
            gVar.a(hVar.f5623d, objJ, messageDigest);
            i10++;
        }
    }

    public final Object c(h hVar) {
        a6.d dVar = this.f5624b;
        return dVar.containsKey(hVar) ? dVar.get(hVar) : hVar.f5620a;
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            return this.f5624b.equals(((i) obj).f5624b);
        }
        return false;
    }

    @Override // f5.f
    public final int hashCode() {
        return this.f5624b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f5624b + '}';
    }
}
