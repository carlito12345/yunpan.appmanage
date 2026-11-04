package o5;

import android.graphics.Bitmap;
import android.graphics.Paint;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class j extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f11601b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(f5.f.f5618a);

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f11601b);
    }

    @Override // o5.e
    public final Bitmap c(i5.c cVar, Bitmap bitmap, int i10, int i11) {
        Paint paint = z.f11644a;
        return (bitmap.getWidth() > i10 || bitmap.getHeight() > i11) ? z.b(cVar, bitmap, i10, i11) : bitmap;
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        return obj instanceof j;
    }

    @Override // f5.f
    public final int hashCode() {
        return -670243078;
    }
}
