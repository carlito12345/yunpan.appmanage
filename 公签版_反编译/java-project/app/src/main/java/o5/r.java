package o5;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final q f11624a = new q();

    public static d a(i5.c cVar, Drawable drawable, int i10, int i11) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            if (i10 != Integer.MIN_VALUE || current.getIntrinsicWidth() > 0) {
                if (i11 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                    if (current.getIntrinsicWidth() > 0) {
                        i10 = current.getIntrinsicWidth();
                    }
                    if (current.getIntrinsicHeight() > 0) {
                        i11 = current.getIntrinsicHeight();
                    }
                    Lock lock = z.f11645b;
                    lock.lock();
                    Bitmap bitmapF = cVar.f(i10, i11, Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(bitmapF);
                        current.setBounds(0, 0, i10, i11);
                        current.draw(canvas);
                        canvas.setBitmap(null);
                        lock.unlock();
                        bitmap = bitmapF;
                        z = true;
                    } catch (Throwable th2) {
                        lock.unlock();
                        throw th2;
                    }
                } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                    current.toString();
                }
            } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                current.toString();
            }
            bitmap = null;
            z = true;
        }
        if (!z) {
            cVar = f11624a;
        }
        return d.b(bitmap, cVar);
    }
}
