package fh;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import jg.t;

/* loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5891a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5892b;

    public c(Socket socket, InputStream inputStream) {
        super(inputStream);
        this.f5892b = socket;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        switch (this.f5891a) {
            case 0:
                super.close();
                ((Socket) this.f5892b).close();
                return;
            case 1:
                Inflater inflater = (Inflater) this.f5892b;
                try {
                    super.close();
                    return;
                } finally {
                    inflater.end();
                }
            default:
                super.close();
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        switch (this.f5891a) {
            case 2:
                int i10 = ((FilterInputStream) this).in.read();
                if (i10 >= 0) {
                    ((t) this.f5892b).getClass();
                }
                return i10;
            default:
                return super.read();
        }
    }

    public c(InflaterInputStream inflaterInputStream, Inflater inflater) {
        super(inflaterInputStream);
        this.f5892b = inflater;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        switch (this.f5891a) {
            case 2:
                return read(bArr, 0, bArr.length);
            default:
                return super.read(bArr);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        switch (this.f5891a) {
            case 2:
                if (i11 == 0) {
                    return 0;
                }
                int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
                if (i12 < 0) {
                    return i12;
                }
                ((t) this.f5892b).getClass();
                return i12;
            default:
                return super.read(bArr, i10, i11);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(t tVar, BufferedInputStream bufferedInputStream) {
        super(bufferedInputStream);
        this.f5892b = tVar;
    }
}
