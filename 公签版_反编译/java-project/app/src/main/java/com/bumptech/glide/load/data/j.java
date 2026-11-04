package com.bumptech.glide.load.data;

import com.hsae.autosdk.p001os.SocConst;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f3362c = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, SocConst.Upgrade.FLASH_DATA, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: d, reason: collision with root package name */
    public static final int f3363d = 31;

    /* renamed from: a, reason: collision with root package name */
    public final byte f3364a;

    /* renamed from: b, reason: collision with root package name */
    public int f3365b;

    public j(InputStream inputStream, int i10) {
        super(inputStream);
        if (i10 < -1 || i10 > 8) {
            throw new IllegalArgumentException(da.b.a(i10, "Cannot add invalid orientation: "));
        }
        this.f3364a = (byte) i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int i10;
        int i11 = this.f3365b;
        int i12 = (i11 < 2 || i11 > (i10 = f3363d)) ? super.read() : i11 == i10 ? this.f3364a : f3362c[i11 - 2] & 255;
        if (i12 != -1) {
            this.f3365b++;
        }
        return i12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = super.skip(j10);
        if (jSkip > 0) {
            this.f3365b = (int) (this.f3365b + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = this.f3365b;
        int i14 = f3363d;
        if (i13 > i14) {
            i12 = super.read(bArr, i10, i11);
        } else if (i13 == i14) {
            bArr[i10] = this.f3364a;
            i12 = 1;
        } else if (i13 < 2) {
            i12 = super.read(bArr, i10, 2 - i13);
        } else {
            int iMin = Math.min(i14 - i13, i11);
            System.arraycopy(f3362c, this.f3365b - 2, bArr, i10, iMin);
            i12 = iMin;
        }
        if (i12 > 0) {
            this.f3365b += i12;
        }
        return i12;
    }
}
