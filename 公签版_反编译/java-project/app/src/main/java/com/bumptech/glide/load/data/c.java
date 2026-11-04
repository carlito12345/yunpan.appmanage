package com.bumptech.glide.load.data;

import a2.k1;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final FileOutputStream f3354a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f3355b;

    /* renamed from: c, reason: collision with root package name */
    public final k1 f3356c;

    /* renamed from: d, reason: collision with root package name */
    public int f3357d;

    public c(FileOutputStream fileOutputStream, k1 k1Var) {
        this.f3354a = fileOutputStream;
        this.f3356c = k1Var;
        this.f3355b = (byte[]) k1Var.e(byte[].class, 65536);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileOutputStream fileOutputStream = this.f3354a;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.f3355b;
            if (bArr != null) {
                this.f3356c.i(bArr);
                this.f3355b = null;
            }
        } catch (Throwable th2) {
            fileOutputStream.close();
            throw th2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i10 = this.f3357d;
        FileOutputStream fileOutputStream = this.f3354a;
        if (i10 > 0) {
            fileOutputStream.write(this.f3355b, 0, i10);
            this.f3357d = 0;
        }
        fileOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f3355b;
        int i11 = this.f3357d;
        int i12 = i11 + 1;
        this.f3357d = i12;
        bArr[i11] = (byte) i10;
        if (i12 != bArr.length || i12 <= 0) {
            return;
        }
        this.f3354a.write(bArr, 0, i12);
        this.f3357d = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        do {
            int i13 = i11 - i12;
            int i14 = i10 + i12;
            int i15 = this.f3357d;
            FileOutputStream fileOutputStream = this.f3354a;
            if (i15 == 0 && i13 >= this.f3355b.length) {
                fileOutputStream.write(bArr, i14, i13);
                return;
            }
            int iMin = Math.min(i13, this.f3355b.length - i15);
            System.arraycopy(bArr, i14, this.f3355b, this.f3357d, iMin);
            int i16 = this.f3357d + iMin;
            this.f3357d = i16;
            i12 += iMin;
            byte[] bArr2 = this.f3355b;
            if (i16 == bArr2.length && i16 > 0) {
                fileOutputStream.write(bArr2, 0, i16);
                this.f3357d = 0;
            }
        } while (i12 < i11);
    }
}
