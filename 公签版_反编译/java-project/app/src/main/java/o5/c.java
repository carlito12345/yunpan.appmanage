package o5;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import ha.l2;
import java.io.IOException;

/* loaded from: classes.dex */
public final class c implements f5.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11583a;

    /* renamed from: b, reason: collision with root package name */
    public final i5.c f11584b;

    public c() {
        this.f11583a = 0;
        this.f11584b = new l2(11);
    }

    @Override // f5.k
    public final h5.z a(Object obj, int i10, int i11, f5.i iVar) {
        switch (this.f11583a) {
            case 0:
                return c(androidx.emoji2.text.b.g(obj), i10, i11, iVar);
            default:
                return d.b(((e5.d) obj).b(), this.f11584b);
        }
    }

    @Override // f5.k
    public final /* bridge */ /* synthetic */ boolean b(Object obj, f5.i iVar) {
        switch (this.f11583a) {
            case 0:
                androidx.emoji2.text.b.y(obj);
                break;
            default:
                break;
        }
        return true;
    }

    public d c(ImageDecoder.Source source, int i10, int i11, f5.i iVar) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new n5.c(i10, i11, iVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            bitmapDecodeBitmap.getWidth();
            bitmapDecodeBitmap.getHeight();
        }
        return new d(bitmapDecodeBitmap, (l2) this.f11584b);
    }

    public c(i5.c cVar) {
        this.f11583a = 1;
        this.f11584b = cVar;
    }
}
