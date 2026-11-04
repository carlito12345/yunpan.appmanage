package o5;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* loaded from: classes.dex */
public final class d implements h5.z, h5.w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11586a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11587b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11588c;

    public d(Bitmap bitmap, i5.c cVar) {
        a6.h.c(bitmap, "Bitmap must not be null");
        this.f11587b = bitmap;
        a6.h.c(cVar, "BitmapPool must not be null");
        this.f11588c = cVar;
    }

    public static d b(Bitmap bitmap, i5.c cVar) {
        if (bitmap == null) {
            return null;
        }
        return new d(bitmap, cVar);
    }

    @Override // h5.z
    public final Class a() {
        switch (this.f11586a) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    @Override // h5.z
    public final Object get() {
        switch (this.f11586a) {
            case 0:
                return (Bitmap) this.f11587b;
            default:
                return new BitmapDrawable((Resources) this.f11587b, (Bitmap) ((h5.z) this.f11588c).get());
        }
    }

    @Override // h5.z
    public final int getSize() {
        switch (this.f11586a) {
            case 0:
                return a6.q.c((Bitmap) this.f11587b);
            default:
                return ((h5.z) this.f11588c).getSize();
        }
    }

    @Override // h5.w
    public final void initialize() {
        switch (this.f11586a) {
            case 0:
                ((Bitmap) this.f11587b).prepareToDraw();
                break;
            default:
                h5.z zVar = (h5.z) this.f11588c;
                if (zVar instanceof h5.w) {
                    ((h5.w) zVar).initialize();
                    break;
                }
                break;
        }
    }

    @Override // h5.z
    public final void recycle() {
        switch (this.f11586a) {
            case 0:
                ((i5.c) this.f11588c).c((Bitmap) this.f11587b);
                break;
            default:
                ((h5.z) this.f11588c).recycle();
                break;
        }
    }

    public d(Resources resources, h5.z zVar) {
        a6.h.c(resources, "Argument must not be null");
        this.f11587b = resources;
        a6.h.c(zVar, "Argument must not be null");
        this.f11588c = zVar;
    }
}
