package fh;

import j$.nio.charset.StandardCharsets;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
public final class b extends PushbackInputStream {

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f5888b;

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f5889c;

    /* renamed from: a, reason: collision with root package name */
    public int f5890a;

    static {
        String strLineSeparator = System.lineSeparator();
        f5888b = strLineSeparator.equals("\r\n");
        f5889c = strLineSeparator.getBytes(StandardCharsets.US_ASCII);
    }

    public b(BufferedInputStream bufferedInputStream) {
        super(bufferedInputStream, f5889c.length + 1);
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        if (((PushbackInputStream) this).in == null) {
            throw new IOException("Stream closed");
        }
        return ((PushbackInputStream) this).in.available() + (((PushbackInputStream) this).buf.length - ((PushbackInputStream) this).pos);
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        return f5888b ? super.read() : readInt();
    }

    public final int readInt() throws IOException {
        int i10 = super.read();
        if (i10 != 13) {
            return i10;
        }
        int i11 = super.read();
        if (i11 != 10) {
            if (i11 != -1) {
                unread(i11);
            }
            return 13;
        }
        unread(f5889c);
        this.f5890a--;
        return super.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (f5888b) {
            return super.read(bArr, i10, i11);
        }
        if (i11 < 1) {
            return 0;
        }
        int iMin = Math.min(i11, available());
        this.f5890a = iMin;
        if (iMin < 1) {
            this.f5890a = 1;
        }
        int i13 = readInt();
        if (i13 == -1) {
            return -1;
        }
        int i14 = i10;
        while (true) {
            i12 = i14 + 1;
            bArr[i14] = (byte) i13;
            int i15 = this.f5890a - 1;
            this.f5890a = i15;
            if (i15 <= 0 || (i13 = readInt()) == -1) {
                break;
            }
            i14 = i12;
        }
        return i12 - i10;
    }
}
