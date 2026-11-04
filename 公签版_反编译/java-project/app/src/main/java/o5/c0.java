package o5;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class c0 extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f11585a;

    public c0(ByteBuffer byteBuffer) {
        this.f11585a = byteBuffer;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f11585a.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j10, byte[] bArr, int i10, int i11) {
        if (j10 >= this.f11585a.limit()) {
            return -1;
        }
        this.f11585a.position((int) j10);
        int iMin = Math.min(i11, this.f11585a.remaining());
        this.f11585a.get(bArr, i10, iMin);
        return iMin;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
