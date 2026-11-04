package j1;

import android.media.MediaDataSource;
import java.io.IOException;

/* loaded from: classes.dex */
public final class a extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public long f9618a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f9619b;

    public a(f fVar) {
        this.f9619b = fVar;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return -1L;
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        if (j10 < 0) {
            return -1;
        }
        try {
            long j11 = this.f9618a;
            if (j11 != j10) {
                if (j11 >= 0 && j10 >= j11 + this.f9619b.f9622a.available()) {
                    return -1;
                }
                this.f9619b.A(j10);
                this.f9618a = j10;
            }
            if (i11 > this.f9619b.f9622a.available()) {
                i11 = this.f9619b.f9622a.available();
            }
            int i12 = this.f9619b.read(bArr, i10, i11);
            if (i12 >= 0) {
                this.f9618a += i12;
                return i12;
            }
        } catch (IOException unused) {
        }
        this.f9618a = -1L;
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
