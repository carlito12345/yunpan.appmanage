package yg;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a extends OutputStream {

    /* renamed from: b, reason: collision with root package name */
    public int f19197b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f19198c;

    /* renamed from: e, reason: collision with root package name */
    public int f19200e;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f19196a = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public int f19199d = -1;

    public a() {
        synchronized (this) {
            r(1024);
        }
    }

    public final synchronized byte[] A() {
        byte[] bArr;
        int i10 = this.f19197b;
        if (i10 == 0) {
            bArr = sg.b.f14563a;
        } else {
            byte[] bArr2 = sg.b.f14563a;
            byte[] bArr3 = new byte[i10];
            Iterator it = this.f19196a.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                byte[] bArr4 = (byte[]) it.next();
                int iMin = Math.min(bArr4.length, i10);
                System.arraycopy(bArr4, 0, bArr3, i11, iMin);
                i11 += iMin;
                i10 -= iMin;
                if (i10 == 0) {
                    break;
                }
            }
            bArr = bArr3;
        }
        return bArr;
    }

    public final void r(int i10) {
        int i11 = this.f19199d;
        ArrayList arrayList = this.f19196a;
        if (i11 < arrayList.size() - 1) {
            this.f19200e += this.f19198c.length;
            int i12 = this.f19199d + 1;
            this.f19199d = i12;
            this.f19198c = (byte[]) arrayList.get(i12);
            return;
        }
        byte[] bArr = this.f19198c;
        if (bArr == null) {
            if (i10 <= 0) {
                i10 = 1024;
            }
            this.f19200e = 0;
        } else {
            i10 = Math.max(bArr.length << 1, i10 - this.f19200e);
            this.f19200e += this.f19198c.length;
        }
        this.f19199d++;
        byte[] bArr2 = sg.b.f14563a;
        byte[] bArr3 = new byte[i10];
        this.f19198c = bArr3;
        arrayList.add(bArr3);
    }

    public final String toString() {
        return new String(A(), Charset.defaultCharset());
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 < 0 || i10 > bArr.length || i11 < 0 || (i12 = i10 + i11) > bArr.length || i12 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return;
        }
        synchronized (this) {
            int i13 = this.f19197b;
            int i14 = i13 + i11;
            int i15 = i13 - this.f19200e;
            int i16 = i11;
            while (i16 > 0) {
                int iMin = Math.min(i16, this.f19198c.length - i15);
                System.arraycopy(bArr, (i10 + i11) - i16, this.f19198c, i15, iMin);
                i16 -= iMin;
                if (i16 > 0) {
                    r(i14);
                    i15 = 0;
                }
            }
            this.f19197b = i14;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i10) {
        int i11 = this.f19197b;
        int i12 = i11 - this.f19200e;
        if (i12 == this.f19198c.length) {
            r(i11 + 1);
            i12 = 0;
        }
        this.f19198c[i12] = (byte) i10;
        this.f19197b++;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
