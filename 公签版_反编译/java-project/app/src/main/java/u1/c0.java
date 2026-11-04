package u1;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public long[] f15192a = new long[10];

    /* renamed from: b, reason: collision with root package name */
    public Object[] f15193b = new Object[10];

    /* renamed from: c, reason: collision with root package name */
    public int f15194c;

    /* renamed from: d, reason: collision with root package name */
    public int f15195d;

    public final synchronized void a(Object obj, long j10) {
        if (this.f15195d > 0) {
            if (j10 <= this.f15192a[((this.f15194c + r0) - 1) % this.f15193b.length]) {
                b();
            }
        }
        c();
        int i10 = this.f15194c;
        int i11 = this.f15195d;
        Object[] objArr = this.f15193b;
        int length = (i10 + i11) % objArr.length;
        this.f15192a[length] = j10;
        objArr[length] = obj;
        this.f15195d = i11 + 1;
    }

    public final synchronized void b() {
        this.f15194c = 0;
        this.f15195d = 0;
        Arrays.fill(this.f15193b, (Object) null);
    }

    public final void c() {
        int length = this.f15193b.length;
        if (this.f15195d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        Object[] objArr = new Object[i10];
        int i11 = this.f15194c;
        int i12 = length - i11;
        System.arraycopy(this.f15192a, i11, jArr, 0, i12);
        System.arraycopy(this.f15193b, this.f15194c, objArr, 0, i12);
        int i13 = this.f15194c;
        if (i13 > 0) {
            System.arraycopy(this.f15192a, 0, jArr, i12, i13);
            System.arraycopy(this.f15193b, 0, objArr, i12, this.f15194c);
        }
        this.f15192a = jArr;
        this.f15193b = objArr;
        this.f15194c = 0;
    }

    public final Object d(long j10, boolean z) {
        Object objG = null;
        long j11 = Long.MAX_VALUE;
        while (this.f15195d > 0) {
            long j12 = j10 - this.f15192a[this.f15194c];
            if (j12 < 0 && (z || (-j12) >= j11)) {
                break;
            }
            objG = g();
            j11 = j12;
        }
        return objG;
    }

    public final synchronized Object e() {
        return this.f15195d == 0 ? null : g();
    }

    public final synchronized Object f(long j10) {
        return d(j10, true);
    }

    public final Object g() {
        a9.o.t(this.f15195d > 0);
        Object[] objArr = this.f15193b;
        int i10 = this.f15194c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f15194c = (i10 + 1) % objArr.length;
        this.f15195d--;
        return obj;
    }

    public final synchronized int h() {
        return this.f15195d;
    }
}
