package jg;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import javax.crypto.CipherOutputStream;

/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final CipherOutputStream f9887a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9888b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f9889c;

    /* renamed from: d, reason: collision with root package name */
    public int f9890d;

    public c(a aVar, OutputStream outputStream) {
        this.f9887a = new CipherOutputStream(outputStream, aVar.f9877d);
        int blockSize = aVar.f9877d.getBlockSize();
        this.f9888b = blockSize;
        this.f9889c = new byte[blockSize];
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i10 = this.f9890d;
        CipherOutputStream cipherOutputStream = this.f9887a;
        if (i10 > 0) {
            cipherOutputStream.write(this.f9889c);
        }
        cipherOutputStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.f9887a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f9890d;
        int i13 = i11 + i12;
        int i14 = this.f9888b;
        int i15 = i13 > i14 ? i14 - i12 : i11;
        byte[] bArr2 = this.f9889c;
        System.arraycopy(bArr, i10, bArr2, i12, i15);
        int i16 = this.f9890d + i15;
        this.f9890d = i16;
        if (i16 == i14) {
            CipherOutputStream cipherOutputStream = this.f9887a;
            cipherOutputStream.write(bArr2);
            this.f9890d = 0;
            Arrays.fill(bArr2, (byte) 0);
            int i17 = i11 - i15;
            if (i17 >= i14) {
                int i18 = (i17 / i14) * i14;
                cipherOutputStream.write(bArr, i10 + i15, i18);
                i15 += i18;
            }
            int i19 = i11 - i15;
            System.arraycopy(bArr, i10 + i15, bArr2, 0, i19);
            this.f9890d = i19;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        int i11 = this.f9890d;
        int i12 = i11 + 1;
        this.f9890d = i12;
        byte[] bArr = this.f9889c;
        bArr[i11] = (byte) i10;
        if (i12 == this.f9888b) {
            this.f9887a.write(bArr);
            this.f9890d = 0;
            Arrays.fill(bArr, (byte) 0);
        }
    }
}
