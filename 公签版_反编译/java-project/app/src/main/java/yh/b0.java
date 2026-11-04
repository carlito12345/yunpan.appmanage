package yh;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class b0 extends p {

    /* renamed from: a, reason: collision with root package name */
    public final b f19215a;

    /* renamed from: b, reason: collision with root package name */
    public q f19216b;

    /* renamed from: c, reason: collision with root package name */
    public final DataOutputStream f19217c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f19218d;

    /* renamed from: e, reason: collision with root package name */
    public int f19219e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19220f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19221g = false;

    /* renamed from: h, reason: collision with root package name */
    public IOException f19222h = null;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f19223i = new byte[1];

    public b0(q qVar, b bVar) {
        this.f19216b = qVar;
        this.f19217c = new DataOutputStream(qVar);
        this.f19215a = bVar;
        this.f19218d = bVar.a(65536);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f19216b != null) {
            if (!this.f19221g) {
                try {
                    r();
                } catch (IOException unused) {
                }
            }
            try {
                this.f19216b.close();
            } catch (IOException e7) {
                if (this.f19222h == null) {
                    this.f19222h = e7;
                }
            }
            this.f19216b = null;
        }
        IOException iOException = this.f19222h;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        IOException iOException = this.f19222h;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f19221g) {
            throw new f0("Stream finished or closed");
        }
        try {
            int i10 = this.f19219e;
            if (i10 > 0) {
                DataOutputStream dataOutputStream = this.f19217c;
                dataOutputStream.writeByte(this.f19220f ? 1 : 2);
                dataOutputStream.writeShort(i10 - 1);
                dataOutputStream.write(this.f19218d, 0, i10);
                this.f19220f = false;
                this.f19219e = 0;
            }
            this.f19216b.flush();
        } catch (IOException e7) {
            this.f19222h = e7;
            throw e7;
        }
    }

    public final void r() throws IOException {
        IOException iOException = this.f19222h;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f19221g) {
            throw new f0("Stream finished or closed");
        }
        try {
            int i10 = this.f19219e;
            byte[] bArr = this.f19218d;
            if (i10 > 0) {
                DataOutputStream dataOutputStream = this.f19217c;
                dataOutputStream.writeByte(this.f19220f ? 1 : 2);
                dataOutputStream.writeShort(i10 - 1);
                dataOutputStream.write(bArr, 0, i10);
                this.f19220f = false;
                this.f19219e = 0;
            }
            this.f19216b.write(0);
            this.f19221g = true;
            this.f19215a.c(bArr);
        } catch (IOException e7) {
            this.f19222h = e7;
            throw e7;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f19223i;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        byte[] bArr2 = this.f19218d;
        if (i10 >= 0 && i11 >= 0 && (i12 = i10 + i11) >= 0 && i12 <= bArr.length) {
            IOException iOException = this.f19222h;
            if (iOException == null) {
                if (this.f19221g) {
                    throw new f0("Stream finished or closed");
                }
                while (i11 > 0) {
                    try {
                        int iMin = Math.min(65536 - this.f19219e, i11);
                        DataOutputStream dataOutputStream = this.f19217c;
                        if (iMin == 65536) {
                            dataOutputStream.writeByte(this.f19220f ? 1 : 2);
                            dataOutputStream.writeShort(iMin - 1);
                            dataOutputStream.write(bArr, i10, iMin);
                            this.f19220f = false;
                        } else {
                            System.arraycopy(bArr, i10, bArr2, this.f19219e, iMin);
                            int i13 = this.f19219e + iMin;
                            this.f19219e = i13;
                            if (i13 == 65536) {
                                dataOutputStream.writeByte(this.f19220f ? 1 : 2);
                                dataOutputStream.writeShort(i13 - 1);
                                dataOutputStream.write(bArr2, 0, i13);
                                this.f19220f = false;
                                this.f19219e = 0;
                            }
                        }
                        i10 += iMin;
                        i11 -= iMin;
                    } catch (IOException e7) {
                        this.f19222h = e7;
                        throw e7;
                    }
                }
                return;
            }
            throw iOException;
        }
        throw new IndexOutOfBoundsException();
    }
}
