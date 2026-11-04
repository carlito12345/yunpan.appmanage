package rg;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import yh.p;

/* loaded from: classes.dex */
public final class c extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13775a = 1;

    public c(p pVar) {
        super(pVar);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        switch (this.f13775a) {
            case 1:
                ((FilterOutputStream) this).out.flush();
                break;
            default:
                super.close();
                break;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        switch (this.f13775a) {
            case 0:
                break;
            default:
                super.flush();
                break;
        }
    }

    public void r() throws IOException {
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        switch (this.f13775a) {
            case 1:
                ((FilterOutputStream) this).out.write(bArr, i10, i11);
                break;
            default:
                super.write(bArr, i10, i11);
                break;
        }
    }

    public c(OutputStream outputStream) {
        super(outputStream instanceof BufferedOutputStream ? outputStream : new BufferedOutputStream(outputStream));
    }

    private final void A() {
    }
}
