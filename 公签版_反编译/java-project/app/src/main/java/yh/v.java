package yh;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class v extends InputStream {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f19287k = 0;

    /* renamed from: a, reason: collision with root package name */
    public InputStream f19288a;

    /* renamed from: b, reason: collision with root package name */
    public final b f19289b;

    /* renamed from: c, reason: collision with root package name */
    public di.c f19290c;

    /* renamed from: d, reason: collision with root package name */
    public final fi.c f19291d;

    /* renamed from: e, reason: collision with root package name */
    public final ei.f f19292e;

    /* renamed from: i, reason: collision with root package name */
    public long f19296i;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19293f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19294g = false;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f19295h = new byte[1];

    /* renamed from: j, reason: collision with root package name */
    public IOException f19297j = null;

    public v(InputStream inputStream, long j10, byte b10, int i10) throws h, c0 {
        b bVar = b.f19214a;
        if (j10 < -1) {
            throw new c0("Uncompressed size is too big");
        }
        int i11 = b10 & 255;
        if (i11 > 224) {
            throw new h("Invalid LZMA properties byte");
        }
        int i12 = i11 / 45;
        int i13 = i11 - (i12 * 45);
        int i14 = i13 / 9;
        int i15 = i13 - (i14 * 9);
        if (i10 < 0 || i10 > 2147483632) {
            throw new c0("LZMA dictionary is too big for this implementation");
        }
        if (j10 < -1 || i15 < 0 || i15 > 8 || i14 < 0 || i14 > 4 || i12 < 0 || i12 > 4) {
            throw new IllegalArgumentException();
        }
        this.f19288a = inputStream;
        this.f19289b = bVar;
        int iR = r(i10);
        if (j10 >= 0 && iR > j10) {
            iR = r((int) j10);
        }
        this.f19290c = new di.c(r(iR), bVar);
        fi.c cVar = new fi.c(inputStream);
        this.f19291d = cVar;
        this.f19292e = new ei.f(this.f19290c, cVar, i15, i14, i12);
        this.f19296i = j10;
    }

    public static int r(int i10) {
        if (i10 < 0 || i10 > 2147483632) {
            throw new IllegalArgumentException("LZMA dictionary is too big for this implementation");
        }
        if (i10 < 4096) {
            i10 = 4096;
        }
        return (i10 + 15) & (-16);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f19288a != null) {
            di.c cVar = this.f19290c;
            if (cVar != null) {
                this.f19289b.c(cVar.f4699a);
                this.f19290c = null;
            }
            try {
                this.f19288a.close();
            } finally {
                this.f19288a = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19295h;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i14 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (this.f19288a == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19297j;
        if (iOException != null) {
            throw iOException;
        }
        int i15 = -1;
        if (this.f19293f) {
            return -1;
        }
        int i16 = i10;
        int i17 = i11;
        int i18 = 0;
        while (i17 > 0) {
            try {
                long j10 = this.f19296i;
                int i19 = (j10 < 0 || j10 >= ((long) i17)) ? i17 : (int) j10;
                di.c cVar = this.f19290c;
                int i20 = cVar.f4702d;
                int i21 = cVar.f4700b;
                if (i21 - i20 <= i19) {
                    cVar.f4704f = i21;
                } else {
                    cVar.f4704f = i20 + i19;
                }
                try {
                    this.f19292e.b();
                } catch (h e7) {
                    if (this.f19296i == -1) {
                        if (this.f19292e.f5002b[i14] == i15) {
                            this.f19293f = true;
                            this.f19291d.q0();
                        }
                    }
                    throw e7;
                }
                di.c cVar2 = this.f19290c;
                int i22 = cVar2.f4702d;
                int i23 = cVar2.f4701c;
                int i24 = i22 - i23;
                if (i22 == cVar2.f4700b) {
                    cVar2.f4702d = i14;
                }
                System.arraycopy(cVar2.f4699a, i23, bArr, i16, i24);
                cVar2.f4701c = cVar2.f4702d;
                i16 += i24;
                i17 -= i24;
                i18 += i24;
                long j11 = this.f19296i;
                if (j11 >= 0) {
                    long j12 = j11 - i24;
                    this.f19296i = j12;
                    if (j12 == 0) {
                        this.f19293f = true;
                    }
                }
                if (this.f19293f) {
                    di.c cVar3 = this.f19290c;
                    if (cVar3.f4705g > 0) {
                        throw new h();
                    }
                    if (!(this.f19291d.f5895m == 0)) {
                        if (this.f19296i == -1 || !this.f19294g) {
                            throw new h();
                        }
                        int i25 = cVar3.f4702d;
                        int i26 = cVar3.f4700b;
                        if (i26 - i25 <= 1) {
                            cVar3.f4704f = i26;
                        } else {
                            cVar3.f4704f = i25 + 1;
                        }
                        try {
                            this.f19292e.b();
                        } catch (h e10) {
                            i13 = -1;
                            if (!(this.f19292e.f5002b[0] == -1)) {
                                throw e10;
                            }
                            this.f19291d.q0();
                            if (this.f19291d.f5895m == 0) {
                            }
                        }
                        throw new h();
                    }
                    i13 = -1;
                    di.c cVar4 = this.f19290c;
                    if (cVar4 != null) {
                        this.f19289b.c(cVar4.f4699a);
                        this.f19290c = null;
                    }
                    return i18 == 0 ? i13 : i18;
                }
                i14 = 0;
                i15 = -1;
            } catch (IOException e11) {
                this.f19297j = e11;
                throw e11;
            }
        }
        return i18;
    }
}
