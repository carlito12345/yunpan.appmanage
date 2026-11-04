package yf;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public final class g extends RandomAccessFile {

    /* renamed from: a, reason: collision with root package name */
    public final long f19169a;

    /* renamed from: b, reason: collision with root package name */
    public final File[] f19170b;

    /* renamed from: c, reason: collision with root package name */
    public RandomAccessFile f19171c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f19172d;

    /* renamed from: e, reason: collision with root package name */
    public int f19173e;

    /* renamed from: f, reason: collision with root package name */
    public final String f19174f;

    public g(File file, File[] fileArr) throws IOException {
        super(file, "r");
        this.f19172d = new byte[1];
        this.f19173e = 0;
        super.close();
        int i10 = 1;
        for (File file2 : fileArr) {
            String name = file2.getName();
            String strSubstring = !name.contains(".") ? "" : name.substring(name.lastIndexOf(".") + 1);
            try {
                if (i10 != Integer.parseInt(strSubstring)) {
                    throw new IOException("Split file number " + i10 + " does not exist");
                }
                i10++;
            } catch (NumberFormatException unused) {
                throw new IOException(g.b.A("Split file extension not in expected format. Found: ", strSubstring, " expected of format: .001, .002, etc"));
            }
        }
        this.f19171c = new RandomAccessFile(file, "r");
        this.f19170b = fileArr;
        this.f19169a = file.length();
        this.f19174f = "r";
    }

    @Override // java.io.RandomAccessFile, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f19171c;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        super.close();
    }

    @Override // java.io.RandomAccessFile
    public final long getFilePointer() {
        return this.f19171c.getFilePointer();
    }

    @Override // java.io.RandomAccessFile
    public final long length() {
        return this.f19171c.length();
    }

    public final void r(int i10) throws IOException {
        if (this.f19173e == i10) {
            return;
        }
        File[] fileArr = this.f19170b;
        if (i10 > fileArr.length - 1) {
            throw new IOException("split counter greater than number of split files");
        }
        RandomAccessFile randomAccessFile = this.f19171c;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        this.f19171c = new RandomAccessFile(fileArr[i10], this.f19174f);
        this.f19173e = i10;
    }

    @Override // java.io.RandomAccessFile
    public final int read() {
        byte[] bArr = this.f19172d;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.RandomAccessFile
    public final void seek(long j10) throws IOException {
        long j11 = this.f19169a;
        int i10 = (int) (j10 / j11);
        if (i10 != this.f19173e) {
            r(i10);
        }
        this.f19171c.seek(j10 - (i10 * j11));
    }

    @Override // java.io.RandomAccessFile, java.io.DataOutput
    public final void write(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.RandomAccessFile, java.io.DataOutput
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
        throw null;
    }

    @Override // java.io.RandomAccessFile
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.RandomAccessFile, java.io.DataOutput
    public final void write(byte[] bArr, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.RandomAccessFile
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f19171c.read(bArr, i10, i11);
        if (i12 != -1) {
            return i12;
        }
        int i13 = this.f19173e;
        if (i13 == this.f19170b.length - 1) {
            return -1;
        }
        r(i13 + 1);
        return read(bArr, i10, i11);
    }
}
