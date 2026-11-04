package yh;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class y extends InputStream {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f19310j = 0;

    /* renamed from: a, reason: collision with root package name */
    public InputStream f19311a;

    /* renamed from: b, reason: collision with root package name */
    public final gi.b f19312b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f19313c = new byte[4096];

    /* renamed from: d, reason: collision with root package name */
    public int f19314d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f19315e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f19316f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19317g = false;

    /* renamed from: h, reason: collision with root package name */
    public IOException f19318h = null;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f19319i = new byte[1];

    public y(InputStream inputStream, gi.b bVar) {
        inputStream.getClass();
        this.f19311a = inputStream;
        this.f19312b = bVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        if (this.f19311a == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19318h;
        if (iOException == null) {
            return this.f19315e;
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f19311a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f19311a = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19319i;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        byte[] bArr2 = this.f19313c;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        if (this.f19311a == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19318h;
        if (iOException != null) {
            throw iOException;
        }
        int i13 = 0;
        while (true) {
            try {
                int iMin = Math.min(this.f19315e, i11);
                System.arraycopy(bArr2, this.f19314d, bArr, i10, iMin);
                int i14 = this.f19314d + iMin;
                this.f19314d = i14;
                int i15 = this.f19315e - iMin;
                this.f19315e = i15;
                i10 += iMin;
                i11 -= iMin;
                i13 += iMin;
                int i16 = this.f19316f;
                if (i14 + i15 + i16 == 4096) {
                    System.arraycopy(bArr2, i14, bArr2, 0, i15 + i16);
                    this.f19314d = 0;
                }
                if (i11 == 0 || this.f19317g) {
                    break;
                }
                int i17 = this.f19314d + this.f19315e + this.f19316f;
                int i18 = this.f19311a.read(bArr2, i17, 4096 - i17);
                if (i18 == -1) {
                    this.f19317g = true;
                    this.f19315e = this.f19316f;
                    this.f19316f = 0;
                } else {
                    int i19 = this.f19316f + i18;
                    this.f19316f = i19;
                    int iG = this.f19312b.g(this.f19314d, i19, bArr2);
                    this.f19315e = iG;
                    this.f19316f -= iG;
                }
            } catch (IOException e7) {
                this.f19318h = e7;
                throw e7;
            }
        }
        if (i13 > 0) {
            return i13;
        }
        return -1;
    }
}
