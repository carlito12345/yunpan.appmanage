package o5;

import a2.k1;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class t implements f5.e {
    @Override // f5.e
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // f5.e
    public final int b(ByteBuffer byteBuffer, k1 k1Var) {
        AtomicReference atomicReference = a6.c.f422a;
        return d(new a6.a(byteBuffer), k1Var);
    }

    @Override // f5.e
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // f5.e
    public final int d(InputStream inputStream, k1 k1Var) {
        int iC = new j1.g(inputStream).c();
        if (iC == 0) {
            return -1;
        }
        return iC;
    }
}
