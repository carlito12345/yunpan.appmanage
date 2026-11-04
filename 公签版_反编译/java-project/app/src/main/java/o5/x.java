package o5;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public final class x extends e {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f11642c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(f5.f.f5618a);

    /* renamed from: b, reason: collision with root package name */
    public final int f11643b;

    public x(int i10) {
        a6.h.a("roundingRadius must be greater than 0.", i10 > 0);
        this.f11643b = i10;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f11642c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f11643b).array());
    }

    @Override // o5.e
    public final Bitmap c(i5.c cVar, Bitmap bitmap, int i10, int i11) {
        Bitmap bitmapF;
        Paint paint = z.f11644a;
        int i12 = this.f11643b;
        a6.h.a("roundingRadius must be greater than 0.", i12 > 0);
        int i13 = Build.VERSION.SDK_INT;
        Bitmap.Config config = (i13 < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
        Bitmap.Config config2 = (i13 < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
        if (config2.equals(bitmap.getConfig())) {
            bitmapF = bitmap;
        } else {
            bitmapF = cVar.f(bitmap.getWidth(), bitmap.getHeight(), config2);
            new Canvas(bitmapF).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        Bitmap bitmapF2 = cVar.f(bitmapF.getWidth(), bitmapF.getHeight(), config);
        bitmapF2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmapF, tileMode, tileMode);
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, bitmapF2.getWidth(), bitmapF2.getHeight());
        Lock lock = z.f11645b;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapF2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f10 = i12;
            canvas.drawRoundRect(rectF, f10, f10, paint2);
            canvas.setBitmap(null);
            lock.unlock();
            if (!bitmapF.equals(bitmap)) {
                cVar.c(bitmapF);
            }
            return bitmapF2;
        } catch (Throwable th2) {
            lock.unlock();
            throw th2;
        }
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        return (obj instanceof x) && this.f11643b == ((x) obj).f11643b;
    }

    @Override // f5.f
    public final int hashCode() {
        return a6.q.g(-569625254, a6.q.g(this.f11643b, 17));
    }
}
