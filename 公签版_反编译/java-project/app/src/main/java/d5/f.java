package d5;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class f implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final FileInputStream f4487a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f4488b;

    /* renamed from: c, reason: collision with root package name */
    public int f4489c;

    /* renamed from: d, reason: collision with root package name */
    public int f4490d;

    public f(FileInputStream fileInputStream) {
        Charset charset = g.f4491a;
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(charset)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f4487a = fileInputStream;
        this.f4488b = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f4487a) {
            try {
                if (this.f4488b != null) {
                    this.f4488b = null;
                    this.f4487a.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String r() {
        int i10;
        synchronized (this.f4487a) {
            try {
                byte[] bArr = this.f4488b;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f4489c >= this.f4490d) {
                    int i11 = this.f4487a.read(bArr, 0, bArr.length);
                    if (i11 == -1) {
                        throw new EOFException();
                    }
                    this.f4489c = 0;
                    this.f4490d = i11;
                }
                for (int i12 = this.f4489c; i12 != this.f4490d; i12++) {
                    byte[] bArr2 = this.f4488b;
                    if (bArr2[i12] == 10) {
                        int i13 = this.f4489c;
                        if (i12 != i13) {
                            i10 = i12 - 1;
                            if (bArr2[i10] != 13) {
                                i10 = i12;
                            }
                        }
                        String str = new String(bArr2, i13, i10 - i13, g.f4491a.name());
                        this.f4489c = i12 + 1;
                        return str;
                    }
                }
                e eVar = new e(this, (this.f4490d - this.f4489c) + 80);
                while (true) {
                    byte[] bArr3 = this.f4488b;
                    int i14 = this.f4489c;
                    eVar.write(bArr3, i14, this.f4490d - i14);
                    this.f4490d = -1;
                    byte[] bArr4 = this.f4488b;
                    int i15 = this.f4487a.read(bArr4, 0, bArr4.length);
                    if (i15 == -1) {
                        throw new EOFException();
                    }
                    this.f4489c = 0;
                    this.f4490d = i15;
                    for (int i16 = 0; i16 != this.f4490d; i16++) {
                        byte[] bArr5 = this.f4488b;
                        if (bArr5[i16] == 10) {
                            int i17 = this.f4489c;
                            if (i16 != i17) {
                                eVar.write(bArr5, i17, i16 - i17);
                            }
                            this.f4489c = i16 + 1;
                            return eVar.toString();
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
