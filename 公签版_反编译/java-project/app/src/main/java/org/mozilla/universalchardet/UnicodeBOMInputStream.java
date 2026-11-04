package org.mozilla.universalchardet;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes3.dex */
public class UnicodeBOMInputStream extends InputStream {
    private final BOM bom;
    private final PushbackInputStream in;
    private boolean skipped;

    public static final class BOM {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        final byte[] bytes;
        private final String description;
        public static final BOM NONE = new BOM(new byte[0], "NONE");
        public static final BOM UTF_8 = new BOM(new byte[]{-17, -69, -65}, HTTP.UTF_8);
        public static final BOM UTF_16_LE = new BOM(new byte[]{-1, -2}, "UTF-16 little-endian");
        public static final BOM UTF_16_BE = new BOM(new byte[]{-2, -1}, "UTF-16 big-endian");
        public static final BOM UTF_32_LE = new BOM(new byte[]{-1, -2, 0, 0}, "UTF-32 little-endian");
        public static final BOM UTF_32_BE = new BOM(new byte[]{0, 0, -2, -1}, "UTF-32 big-endian");

        private BOM(byte[] bArr, String str) {
            this.bytes = bArr;
            this.description = str;
        }

        public final byte[] getBytes() {
            byte[] bArr = this.bytes;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            return bArr2;
        }

        public final String toString() {
            return this.description;
        }
    }

    public UnicodeBOMInputStream(InputStream inputStream) {
        this(inputStream, true);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public final BOM getBOM() {
        return this.bom;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i10) {
        this.in.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        this.skipped = true;
        return this.in.read();
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        this.in.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        this.skipped = true;
        return this.in.skip(j10);
    }

    public final synchronized UnicodeBOMInputStream skipBOM() {
        try {
            if (!this.skipped) {
                long length = this.bom.bytes.length;
                for (long jSkip = this.in.skip(length); jSkip < length; jSkip++) {
                    this.in.read();
                }
                this.skipped = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UnicodeBOMInputStream(InputStream inputStream, boolean z) throws IOException {
        this.skipped = false;
        if (inputStream == null) {
            throw new NullPointerException("invalid input stream: null is not allowed");
        }
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 4);
        this.in = pushbackInputStream;
        byte[] bArr = new byte[4];
        int i10 = pushbackInputStream.read(bArr);
        if (i10 == 2) {
            byte b10 = bArr[0];
            if (b10 == -1 && bArr[1] == -2) {
                this.bom = BOM.UTF_16_LE;
            } else if (b10 == -2 && bArr[1] == -1) {
                this.bom = BOM.UTF_16_BE;
            } else {
                this.bom = BOM.NONE;
            }
        } else if (i10 == 3) {
            if (bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
                this.bom = BOM.UTF_8;
            }
        } else if (i10 == 4) {
            byte b11 = bArr[0];
            if (b11 == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0) {
                this.bom = BOM.UTF_32_LE;
            } else if (b11 == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) {
                this.bom = BOM.UTF_32_BE;
            }
        }
        if (i10 > 0) {
            pushbackInputStream.unread(bArr, 0, i10);
        }
        if (z) {
            skipBOM();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        this.skipped = true;
        return this.in.read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        this.skipped = true;
        return this.in.read(bArr, i10, i11);
    }
}
