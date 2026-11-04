package yf;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public final class k extends mg.a {

    /* renamed from: a, reason: collision with root package name */
    public RandomAccessFile f19190a;

    /* renamed from: b, reason: collision with root package name */
    public final File f19191b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19192c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19193d;

    /* renamed from: e, reason: collision with root package name */
    public int f19194e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f19195f = new byte[1];

    public k(File file, boolean z, int i10) {
        this.f19194e = 0;
        this.f19190a = new RandomAccessFile(file, "r");
        this.f19191b = file;
        this.f19193d = z;
        this.f19192c = i10;
        if (z) {
            this.f19194e = i10;
        }
    }

    public final void A(int i10) throws IOException {
        int i11 = this.f19192c;
        File file = this.f19191b;
        if (i10 != i11) {
            String canonicalPath = file.getCanonicalPath();
            file = new File(canonicalPath.substring(0, canonicalPath.lastIndexOf(".")) + (i10 >= 9 ? ".z" : ".z0") + (i10 + 1));
        }
        if (file.exists()) {
            this.f19190a.close();
            this.f19190a = new RandomAccessFile(file, "r");
        } else {
            throw new FileNotFoundException("zip split file does not exist: " + file);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f19190a;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override // mg.a
    public final void r(ag.f fVar) throws IOException {
        if (this.f19193d) {
            int i10 = this.f19194e;
            int i11 = fVar.f676w;
            if (i10 != i11) {
                A(i11);
                this.f19194e = fVar.f676w;
            }
        }
        this.f19190a.seek(fVar.f678y);
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19195f;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f19190a.read(bArr, i10, i11);
        if ((i12 == i11 && i12 != -1) || !this.f19193d) {
            return i12;
        }
        A(this.f19194e + 1);
        this.f19194e++;
        if (i12 < 0) {
            i12 = 0;
        }
        int i13 = this.f19190a.read(bArr, i12, i11 - i12);
        return i13 > 0 ? i12 + i13 : i12;
    }
}
