package androidx.media3.exoplayer.video;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public long f1880a;

    /* renamed from: b, reason: collision with root package name */
    public long f1881b;

    /* renamed from: c, reason: collision with root package name */
    public long f1882c;

    /* renamed from: d, reason: collision with root package name */
    public long f1883d;

    /* renamed from: e, reason: collision with root package name */
    public long f1884e;

    /* renamed from: f, reason: collision with root package name */
    public long f1885f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean[] f1886g = new boolean[15];

    /* renamed from: h, reason: collision with root package name */
    public int f1887h;

    public final boolean a() {
        return this.f1883d > 15 && this.f1887h == 0;
    }

    public final void b(long j10) {
        long j11 = this.f1883d;
        if (j11 == 0) {
            this.f1880a = j10;
        } else if (j11 == 1) {
            long j12 = j10 - this.f1880a;
            this.f1881b = j12;
            this.f1885f = j12;
            this.f1884e = 1L;
        } else {
            long j13 = j10 - this.f1882c;
            int i10 = (int) (j11 % 15);
            long jAbs = Math.abs(j13 - this.f1881b);
            boolean[] zArr = this.f1886g;
            if (jAbs <= 1000000) {
                this.f1884e++;
                this.f1885f += j13;
                if (zArr[i10]) {
                    zArr[i10] = false;
                    this.f1887h--;
                }
            } else if (!zArr[i10]) {
                zArr[i10] = true;
                this.f1887h++;
            }
        }
        this.f1883d++;
        this.f1882c = j10;
    }

    public final void c() {
        this.f1883d = 0L;
        this.f1884e = 0L;
        this.f1885f = 0L;
        this.f1887h = 0;
        Arrays.fill(this.f1886g, false);
    }
}
