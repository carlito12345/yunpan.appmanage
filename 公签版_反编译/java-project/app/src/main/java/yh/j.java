package yh;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class j extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public InputStream f19243a;

    /* renamed from: b, reason: collision with root package name */
    public final bi.b f19244b;

    /* renamed from: c, reason: collision with root package name */
    public IOException f19245c = null;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f19246d = new byte[1];

    public j(InputStream inputStream, int i10) {
        inputStream.getClass();
        this.f19243a = inputStream;
        this.f19244b = new bi.b(i10);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        InputStream inputStream = this.f19243a;
        if (inputStream == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19245c;
        if (iOException == null) {
            return inputStream.available();
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f19243a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f19243a = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19246d;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        byte[] bArr2;
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = this.f19243a;
        if (inputStream == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19245c;
        if (iOException != null) {
            throw iOException;
        }
        try {
            int i12 = inputStream.read(bArr, i10, i11);
            if (i12 == -1) {
                return -1;
            }
            bi.b bVar = this.f19244b;
            int i13 = bVar.f2818a;
            int iMin = Math.min(i12, i13);
            int i14 = 0;
            while (true) {
                bArr2 = (byte[]) bVar.f2819b;
                if (i14 >= iMin) {
                    break;
                }
                int i15 = i10 + i14;
                bArr[i15] = (byte) (bArr[i15] + bArr2[i14]);
                i14++;
            }
            while (i14 < i12) {
                int i16 = i10 + i14;
                bArr[i16] = (byte) (bArr[i16] + bArr[i16 - i13]);
                i14++;
            }
            if (i12 >= i13) {
                System.arraycopy(bArr, (i10 + i12) - i13, bArr2, 0, i13);
            } else {
                int i17 = i13 - i14;
                System.arraycopy(bArr2, i14, bArr2, 0, i17);
                System.arraycopy(bArr, i10, bArr2, i17, i12);
            }
            return i12;
        } catch (IOException e7) {
            this.f19245c = e7;
            throw e7;
        }
    }
}
