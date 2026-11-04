package sb;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14471a;

    /* renamed from: b, reason: collision with root package name */
    public int f14472b;

    /* renamed from: c, reason: collision with root package name */
    public long[] f14473c;

    public e() {
        this.f14471a = 0;
        this.f14473c = new long[64];
    }

    public final void a(long j10) {
        switch (this.f14471a) {
            case 0:
                long[] jArr = this.f14473c;
                int i10 = this.f14472b;
                int i11 = i10 + 1;
                this.f14472b = i11;
                jArr[i10] = j10;
                if (jArr.length == i11) {
                    long[] jArr2 = new long[i11 << 1];
                    System.arraycopy(jArr, 0, jArr2, 0, i11);
                    this.f14473c = jArr2;
                    break;
                }
                break;
            default:
                int i12 = this.f14472b;
                long[] jArr3 = this.f14473c;
                if (i12 == jArr3.length) {
                    this.f14473c = Arrays.copyOf(jArr3, i12 * 2);
                }
                long[] jArr4 = this.f14473c;
                int i13 = this.f14472b;
                this.f14472b = i13 + 1;
                jArr4[i13] = j10;
                break;
        }
    }

    public void b(long[] jArr) {
        int length = this.f14472b + jArr.length;
        long[] jArr2 = this.f14473c;
        if (length > jArr2.length) {
            this.f14473c = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.f14473c, this.f14472b, jArr.length);
        this.f14472b = length;
    }

    public final long c(int i10) {
        switch (this.f14471a) {
            case 0:
                if (i10 >= this.f14472b || i10 < 0) {
                    throw new ArrayIndexOutOfBoundsException(i10);
                }
                return this.f14473c[i10];
            default:
                if (i10 >= 0 && i10 < this.f14472b) {
                    return this.f14473c[i10];
                }
                StringBuilder sbN = g.b.n("Invalid index ", i10, ", size is ");
                sbN.append(this.f14472b);
                throw new IndexOutOfBoundsException(sbN.toString());
        }
    }

    public int d(int i10) {
        int i11 = this.f14472b - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            long j10 = (int) (this.f14473c[i13] >> 32);
            long j11 = i10;
            if (j10 < j11) {
                i12 = i13 + 1;
            } else {
                if (j10 <= j11) {
                    return i13;
                }
                i11 = i13 - 1;
            }
        }
        return i12;
    }

    public e(int i10) {
        this.f14471a = 1;
        this.f14473c = new long[i10];
    }
}
