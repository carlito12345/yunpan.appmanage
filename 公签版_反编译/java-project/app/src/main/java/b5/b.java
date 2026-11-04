package b5;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2553a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f2554b;

    /* renamed from: c, reason: collision with root package name */
    public int f2555c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f2556d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2557e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2558f;

    public b() {
        this(new byte[1000], true);
    }

    public static void g() {
        throw new IndexOutOfBoundsException("attempt to write past the end");
    }

    public final void a(int i10) {
        int i11 = i10 - 1;
        if (i10 < 0 || (i10 & i11) != 0) {
            throw new IllegalArgumentException("bogus alignment");
        }
        int i12 = (this.f2555c + i11) & (i11 ^ (-1));
        if (this.f2553a) {
            f(i12);
        } else if (i12 > this.f2554b.length) {
            g();
            throw null;
        }
        Arrays.fill(this.f2554b, this.f2555c, i12, (byte) 0);
        this.f2555c = i12;
    }

    public final void b(int i10, String str) {
        if (this.f2556d == null) {
            return;
        }
        e();
        int size = this.f2556d.size();
        int i11 = size == 0 ? 0 : ((a) this.f2556d.get(size - 1)).f2552a;
        int i12 = this.f2555c;
        if (i11 <= i12) {
            i11 = i12;
        }
        this.f2556d.add(new a(i11, i10 + i11, str));
    }

    public final void c(String str) {
        if (this.f2556d == null) {
            return;
        }
        e();
        this.f2556d.add(new a(this.f2555c, Integer.MAX_VALUE, str));
    }

    public final boolean d() {
        return this.f2556d != null;
    }

    public final void e() {
        int size;
        ArrayList arrayList = this.f2556d;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        a aVar = (a) this.f2556d.get(size - 1);
        int i10 = this.f2555c;
        if (aVar.f2552a == Integer.MAX_VALUE) {
            aVar.f2552a = i10;
        }
    }

    public final void f(int i10) {
        byte[] bArr = this.f2554b;
        if (bArr.length < i10) {
            byte[] bArr2 = new byte[(i10 * 2) + 1000];
            System.arraycopy(bArr, 0, bArr2, 0, this.f2555c);
            this.f2554b = bArr2;
        }
    }

    public final void h(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.f2555c;
        int i11 = i10 + length;
        if ((length | i11) < 0 || length > bArr.length) {
            throw new IndexOutOfBoundsException("bytes.length " + bArr.length + "; 0..!" + i11);
        }
        if (this.f2553a) {
            f(i11);
        } else if (i11 > this.f2554b.length) {
            g();
            throw null;
        }
        System.arraycopy(bArr, 0, this.f2554b, i10, length);
        this.f2555c = i11;
    }

    public final void i(int i10) {
        int i11 = this.f2555c;
        int i12 = i11 + 1;
        if (this.f2553a) {
            f(i12);
        } else if (i12 > this.f2554b.length) {
            g();
            throw null;
        }
        this.f2554b[i11] = (byte) i10;
        this.f2555c = i12;
    }

    public final void j(int i10) {
        int i11 = this.f2555c;
        int i12 = i11 + 4;
        if (this.f2553a) {
            f(i12);
        } else if (i12 > this.f2554b.length) {
            g();
            throw null;
        }
        byte[] bArr = this.f2554b;
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >> 8);
        bArr[i11 + 2] = (byte) (i10 >> 16);
        bArr[i11 + 3] = (byte) (i10 >> 24);
        this.f2555c = i12;
    }

    public final void k(int i10) {
        int i11 = this.f2555c;
        int i12 = i11 + 2;
        if (this.f2553a) {
            f(i12);
        } else if (i12 > this.f2554b.length) {
            g();
            throw null;
        }
        byte[] bArr = this.f2554b;
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >> 8);
        this.f2555c = i12;
    }

    public final void l(int i10) {
        if (this.f2553a) {
            f(this.f2555c + 5);
        }
        int i11 = i10 >> 7;
        int i12 = (Integer.MIN_VALUE & i10) == 0 ? 0 : -1;
        boolean z = true;
        while (true) {
            int i13 = i11;
            int i14 = i10;
            i10 = i13;
            if (!z) {
                return;
            }
            z = (i10 == i12 && (i10 & 1) == ((i14 >> 6) & 1)) ? false : true;
            i((byte) ((i14 & 127) | (z ? 128 : 0)));
            i11 = i10 >> 7;
        }
    }

    public final int m(int i10) {
        if (this.f2553a) {
            f(this.f2555c + 5);
        }
        int i11 = this.f2555c;
        while (true) {
            int i12 = i10;
            i10 >>>= 7;
            if (i10 == 0) {
                i((byte) (i12 & 127));
                return this.f2555c - i11;
            }
            i((byte) ((i12 & 127) | 128));
        }
    }

    public final void n(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("count < 0");
        }
        int i11 = this.f2555c + i10;
        if (this.f2553a) {
            f(i11);
        } else if (i11 > this.f2554b.length) {
            g();
            throw null;
        }
        Arrays.fill(this.f2554b, this.f2555c, i11, (byte) 0);
        this.f2555c = i11;
    }

    public b(byte[] bArr, boolean z) {
        this.f2553a = z;
        this.f2554b = bArr;
        this.f2555c = 0;
        this.f2556d = null;
        this.f2557e = 0;
        this.f2558f = 0;
    }
}
