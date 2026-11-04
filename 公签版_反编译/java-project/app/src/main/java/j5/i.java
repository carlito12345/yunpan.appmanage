package j5;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class i implements b6.b {

    /* renamed from: a, reason: collision with root package name */
    public final MessageDigest f9766a;

    /* renamed from: b, reason: collision with root package name */
    public final b6.d f9767b = new b6.d();

    public i(MessageDigest messageDigest) {
        this.f9766a = messageDigest;
    }

    @Override // b6.b
    public final b6.d b() {
        return this.f9767b;
    }
}
