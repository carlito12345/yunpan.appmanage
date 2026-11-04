package o5;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;

/* loaded from: classes.dex */
public final class a0 implements h5.z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11577a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11578b;

    public /* synthetic */ a0(int i10, Object obj) {
        this.f11577a = i10;
        this.f11578b = obj;
    }

    @Override // h5.z
    public final Class a() {
        switch (this.f11577a) {
            case 0:
                return Bitmap.class;
            case 1:
                return byte[].class;
            case 2:
                return Drawable.class;
            default:
                return ((File) this.f11578b).getClass();
        }
    }

    @Override // h5.z
    public final Object get() {
        switch (this.f11577a) {
            case 0:
                return (Bitmap) this.f11578b;
            case 1:
                return (byte[]) this.f11578b;
            case 2:
                return (AnimatedImageDrawable) this.f11578b;
            default:
                return (File) this.f11578b;
        }
    }

    @Override // h5.z
    public final int getSize() {
        switch (this.f11577a) {
            case 0:
                return a6.q.c((Bitmap) this.f11578b);
            case 1:
                return ((byte[]) this.f11578b).length;
            case 2:
                return a6.q.d(Bitmap.Config.ARGB_8888) * ((AnimatedImageDrawable) this.f11578b).getIntrinsicHeight() * ((AnimatedImageDrawable) this.f11578b).getIntrinsicWidth() * 2;
            default:
                return 1;
        }
    }

    @Override // h5.z
    public final void recycle() {
        switch (this.f11577a) {
            case 2:
                ((AnimatedImageDrawable) this.f11578b).stop();
                ((AnimatedImageDrawable) this.f11578b).clearAnimationCallbacks();
                break;
        }
    }

    public a0(byte[] bArr) {
        this.f11577a = 1;
        a6.h.c(bArr, "Argument must not be null");
        this.f11578b = bArr;
    }

    public a0(File file) {
        this.f11577a = 3;
        a6.h.c(file, "Argument must not be null");
        this.f11578b = file;
    }

    private final void b() {
    }

    private final void c() {
    }

    private final void d() {
    }
}
