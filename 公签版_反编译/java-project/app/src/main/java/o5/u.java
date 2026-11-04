package o5;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class u extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f11627b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(f5.f.f5618a);

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f11627b);
    }

    @Override // o5.e
    public final Bitmap c(i5.c cVar, Bitmap bitmap, int i10, int i11) {
        return z.b(cVar, bitmap, i10, i11);
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        return obj instanceof u;
    }

    @Override // f5.f
    public final int hashCode() {
        return 1572326941;
    }
}
