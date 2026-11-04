package z5;

import a6.h;
import f5.f;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class d implements f {

    /* renamed from: b, reason: collision with root package name */
    public final Object f19437b;

    public d(Object obj) {
        h.c(obj, "Argument must not be null");
        this.f19437b = obj;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.f19437b.toString().getBytes(f.f5618a));
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f19437b.equals(((d) obj).f19437b);
        }
        return false;
    }

    @Override // f5.f
    public final int hashCode() {
        return this.f19437b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f19437b + '}';
    }
}
