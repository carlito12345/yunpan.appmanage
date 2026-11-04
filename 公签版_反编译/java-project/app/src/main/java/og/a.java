package og;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class a extends mg.a {

    /* renamed from: a, reason: collision with root package name */
    public InputStream f11773a;

    /* renamed from: b, reason: collision with root package name */
    public e f11774b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f11775c;

    public a(InputStream inputStream) {
        e eVar = new e(inputStream);
        this.f11775c = new byte[1];
        this.f11774b = eVar;
        this.f11773a = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        e eVar = this.f11774b;
        if (eVar != null) {
            return eVar.f11793b.b();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            e eVar = this.f11774b;
            byte[] bArr = sg.b.f14563a;
            if (eVar != null) {
                try {
                    eVar.close();
                } catch (Exception unused) {
                }
            }
            this.f11774b = null;
            InputStream inputStream = this.f11773a;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f11773a = null;
        } catch (Throwable th2) {
            InputStream inputStream2 = this.f11773a;
            byte[] bArr2 = sg.b.f14563a;
            if (inputStream2 != null) {
                inputStream2.close();
            }
            this.f11773a = null;
            throw th2;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr;
        int i10;
        do {
            bArr = this.f11775c;
            i10 = read(bArr);
            if (i10 == -1) {
                return -1;
            }
        } while (i10 == 0);
        if (i10 == 1) {
            return bArr[0] & 255;
        }
        throw new IllegalStateException(da.b.a(i10, "Invalid return value from read: "));
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        e eVar = this.f11774b;
        if (eVar == null) {
            return -1;
        }
        try {
            int iA = eVar.A(i10, i11, bArr);
            this.f11774b.f11794c.f13770a.J();
            if (iA == -1) {
                e eVar2 = this.f11774b;
                byte[] bArr2 = sg.b.f14563a;
                if (eVar2 != null) {
                    try {
                        eVar2.close();
                    } catch (Exception unused) {
                    }
                }
                this.f11774b = null;
            }
            return iA;
        } catch (RuntimeException e7) {
            throw new IOException("Invalid Deflate64 input", e7);
        }
    }
}
