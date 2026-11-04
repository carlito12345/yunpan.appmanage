package la;

import f5.f;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: b, reason: collision with root package name */
    public final String f10704b;

    public a(String str) {
        this.f10704b = str;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.f10704b.getBytes());
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        return this.f10704b.equals(((a) obj).f10704b);
    }

    @Override // f5.f
    public final int hashCode() {
        return this.f10704b.hashCode();
    }
}
