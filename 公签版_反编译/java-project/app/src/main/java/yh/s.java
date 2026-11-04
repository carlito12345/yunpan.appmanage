package yh;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class s extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final b f19254a;

    /* renamed from: b, reason: collision with root package name */
    public DataInputStream f19255b;

    /* renamed from: c, reason: collision with root package name */
    public di.c f19256c;

    /* renamed from: d, reason: collision with root package name */
    public fi.b f19257d;

    /* renamed from: e, reason: collision with root package name */
    public ei.f f19258e;

    /* renamed from: f, reason: collision with root package name */
    public int f19259f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19260g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f19261h = true;

    /* renamed from: i, reason: collision with root package name */
    public boolean f19262i = true;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19263j = false;

    /* renamed from: k, reason: collision with root package name */
    public IOException f19264k = null;
    public final byte[] l = new byte[1];

    public s(InputStream inputStream, int i10, b bVar) {
        inputStream.getClass();
        this.f19254a = bVar;
        this.f19255b = new DataInputStream(inputStream);
        this.f19257d = new fi.b(bVar);
        this.f19256c = new di.c(A(i10), bVar);
    }

    public static int A(int i10) {
        if (i10 < 4096 || i10 > 2147483632) {
            throw new IllegalArgumentException(da.b.a(i10, "Unsupported dictionary size "));
        }
        return (i10 + 15) & (-16);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        DataInputStream dataInputStream = this.f19255b;
        if (dataInputStream == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19264k;
        if (iOException == null) {
            return this.f19260g ? this.f19259f : Math.min(this.f19259f, dataInputStream.available());
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f19255b != null) {
            di.c cVar = this.f19256c;
            if (cVar != null) {
                b bVar = this.f19254a;
                bVar.c(cVar.f4699a);
                this.f19256c = null;
                bVar.c(this.f19257d.f5896n);
                this.f19257d = null;
            }
            try {
                this.f19255b.close();
            } finally {
                this.f19255b = null;
            }
        }
    }

    public final void r() throws IOException {
        int unsignedByte = this.f19255b.readUnsignedByte();
        if (unsignedByte == 0) {
            this.f19263j = true;
            di.c cVar = this.f19256c;
            if (cVar != null) {
                b bVar = this.f19254a;
                bVar.c(cVar.f4699a);
                this.f19256c = null;
                bVar.c(this.f19257d.f5896n);
                this.f19257d = null;
                return;
            }
            return;
        }
        if (unsignedByte >= 224 || unsignedByte == 1) {
            this.f19262i = true;
            this.f19261h = false;
            di.c cVar2 = this.f19256c;
            cVar2.f4701c = 0;
            cVar2.f4702d = 0;
            cVar2.f4703e = 0;
            cVar2.f4704f = 0;
            cVar2.f4699a[cVar2.f4700b - 1] = 0;
        } else if (this.f19261h) {
            throw new h();
        }
        if (unsignedByte < 128) {
            if (unsignedByte > 2) {
                throw new h();
            }
            this.f19260g = false;
            this.f19259f = this.f19255b.readUnsignedShort() + 1;
            return;
        }
        this.f19260g = true;
        int i10 = (unsignedByte & 31) << 16;
        this.f19259f = i10;
        this.f19259f = this.f19255b.readUnsignedShort() + 1 + i10;
        int unsignedShort = this.f19255b.readUnsignedShort();
        int i11 = unsignedShort + 1;
        if (unsignedByte >= 192) {
            this.f19262i = false;
            int unsignedByte2 = this.f19255b.readUnsignedByte();
            if (unsignedByte2 > 224) {
                throw new h();
            }
            int i12 = unsignedByte2 / 45;
            int i13 = unsignedByte2 - (i12 * 45);
            int i14 = i13 / 9;
            int i15 = i13 - (i14 * 9);
            if (i15 + i14 > 4) {
                throw new h();
            }
            this.f19258e = new ei.f(this.f19256c, this.f19257d, i15, i14, i12);
        } else {
            if (this.f19262i) {
                throw new h();
            }
            if (unsignedByte >= 160) {
                this.f19258e.a();
            }
        }
        fi.b bVar2 = this.f19257d;
        DataInputStream dataInputStream = this.f19255b;
        bVar2.getClass();
        if (i11 < 5) {
            throw new h();
        }
        if (dataInputStream.readUnsignedByte() != 0) {
            throw new h();
        }
        bVar2.f5895m = dataInputStream.readInt();
        bVar2.l = -1;
        int i16 = unsignedShort - 4;
        byte[] bArr = bVar2.f5896n;
        int length = bArr.length - i16;
        bVar2.f5897o = length;
        dataInputStream.readFully(bArr, length, i16);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.l;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        if (this.f19255b == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19264k;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f19263j) {
            return -1;
        }
        int i13 = 0;
        while (i11 > 0) {
            try {
                if (this.f19259f == 0) {
                    r();
                    if (this.f19263j) {
                        if (i13 == 0) {
                            return -1;
                        }
                        return i13;
                    }
                }
                int iMin = Math.min(this.f19259f, i11);
                if (this.f19260g) {
                    di.c cVar = this.f19256c;
                    int i14 = cVar.f4702d;
                    int i15 = cVar.f4700b;
                    if (i15 - i14 <= iMin) {
                        cVar.f4704f = i15;
                    } else {
                        cVar.f4704f = i14 + iMin;
                    }
                    this.f19258e.b();
                } else {
                    di.c cVar2 = this.f19256c;
                    DataInputStream dataInputStream = this.f19255b;
                    int iMin2 = Math.min(cVar2.f4700b - cVar2.f4702d, iMin);
                    dataInputStream.readFully(cVar2.f4699a, cVar2.f4702d, iMin2);
                    int i16 = cVar2.f4702d + iMin2;
                    cVar2.f4702d = i16;
                    if (cVar2.f4703e < i16) {
                        cVar2.f4703e = i16;
                    }
                }
                di.c cVar3 = this.f19256c;
                int i17 = cVar3.f4702d;
                int i18 = cVar3.f4701c;
                int i19 = i17 - i18;
                if (i17 == cVar3.f4700b) {
                    cVar3.f4702d = 0;
                }
                System.arraycopy(cVar3.f4699a, i18, bArr, i10, i19);
                cVar3.f4701c = cVar3.f4702d;
                i10 += i19;
                i11 -= i19;
                i13 += i19;
                int i20 = this.f19259f - i19;
                this.f19259f = i20;
                if (i20 == 0) {
                    fi.b bVar = this.f19257d;
                    if (bVar.f5897o == bVar.f5896n.length && bVar.f5895m == 0) {
                        if (!(this.f19256c.f4705g > 0)) {
                        }
                    }
                    throw new h();
                }
            } catch (IOException e7) {
                this.f19264k = e7;
                throw e7;
            }
        }
        return i13;
    }
}
