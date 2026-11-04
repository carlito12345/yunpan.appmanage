package o5;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class i extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f11600b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(f5.f.f5618a);

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f11600b);
    }

    @Override // o5.e
    public final Bitmap c(i5.c cVar, Bitmap bitmap, int i10, int i11) {
        float width;
        float height;
        Paint paint = z.f11644a;
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i11 > bitmap.getHeight() * i10) {
            width = i11 / bitmap.getHeight();
            width2 = (i10 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i10 / bitmap.getWidth();
            height = (i11 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapF = cVar.f(i10, i11, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapF.setHasAlpha(bitmap.hasAlpha());
        z.a(bitmap, bitmapF, matrix);
        return bitmapF;
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // f5.f
    public final int hashCode() {
        return -599754482;
    }
}
