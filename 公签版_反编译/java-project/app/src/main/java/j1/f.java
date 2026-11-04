package j1;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class f extends b {
    public f(byte[] bArr) {
        super(bArr);
        this.f9622a.mark(Integer.MAX_VALUE);
    }

    public final void A(long j10) throws IOException {
        int i10 = this.f9624c;
        if (i10 > j10) {
            this.f9624c = 0;
            this.f9622a.reset();
        } else {
            j10 -= i10;
        }
        r((int) j10);
    }

    public f(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.f9622a.mark(Integer.MAX_VALUE);
            return;
        }
        throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
    }
}
