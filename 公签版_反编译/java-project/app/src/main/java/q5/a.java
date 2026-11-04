package q5;

import a2.k1;
import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import f5.i;
import f5.k;
import h5.z;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import kf.d;

/* loaded from: classes.dex */
public final class a implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13024a;

    /* renamed from: b, reason: collision with root package name */
    public final d f13025b;

    public /* synthetic */ a(d dVar, int i10) {
        this.f13024a = i10;
        this.f13025b = dVar;
    }

    @Override // f5.k
    public final z a(Object obj, int i10, int i11, i iVar) {
        switch (this.f13024a) {
            case 0:
                return d.u(ImageDecoder.createSource((ByteBuffer) obj), i10, i11, iVar);
            default:
                return d.u(ImageDecoder.createSource(a6.c.b((InputStream) obj)), i10, i11, iVar);
        }
    }

    @Override // f5.k
    public final boolean b(Object obj, i iVar) throws IOException {
        switch (this.f13024a) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeO = android.support.v4.media.session.b.o((ArrayList) this.f13025b.f10286b, (ByteBuffer) obj);
                if (imageHeaderParser$ImageTypeO == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeO == ImageHeaderParser$ImageType.ANIMATED_AVIF)) {
                }
                break;
            default:
                d dVar = this.f13025b;
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeN = android.support.v4.media.session.b.n((ArrayList) dVar.f10286b, (InputStream) obj, (k1) dVar.f10287c);
                if (imageHeaderParser$ImageTypeN == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeN == ImageHeaderParser$ImageType.ANIMATED_AVIF)) {
                }
                break;
        }
        return true;
    }
}
