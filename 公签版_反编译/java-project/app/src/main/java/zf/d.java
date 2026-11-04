package zf;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class d extends OutputStream implements g {

    /* renamed from: a, reason: collision with root package name */
    public final FileOutputStream f19551a;

    /* renamed from: b, reason: collision with root package name */
    public long f19552b = 0;

    public d(FileOutputStream fileOutputStream) {
        this.f19551a = fileOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19551a.close();
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f19551a.write(bArr, i10, i11);
        this.f19552b += i11;
    }
}
