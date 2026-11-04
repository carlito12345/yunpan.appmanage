package o5;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public abstract class e implements f5.m {
    @Override // f5.m
    public final h5.z a(com.bumptech.glide.f fVar, h5.z zVar, int i10, int i11) {
        if (!a6.q.i(i10, i11)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i10 + " or height: " + i11 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        i5.c cVar = com.bumptech.glide.b.b(fVar).f3280a;
        Bitmap bitmap = (Bitmap) zVar.get();
        if (i10 == Integer.MIN_VALUE) {
            i10 = bitmap.getWidth();
        }
        if (i11 == Integer.MIN_VALUE) {
            i11 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(cVar, bitmap, i10, i11);
        return bitmap.equals(bitmapC) ? zVar : d.b(bitmapC, cVar);
    }

    public abstract Bitmap c(i5.c cVar, Bitmap bitmap, int i10, int i11);
}
