package f3;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class d implements c {

    /* renamed from: a, reason: collision with root package name */
    public int f5467a;

    /* renamed from: b, reason: collision with root package name */
    public int f5468b;

    /* renamed from: c, reason: collision with root package name */
    public int f5469c;

    /* renamed from: d, reason: collision with root package name */
    public int f5470d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5471e;

    public d() {
        int iHighestOneBit = Integer.bitCount(16) != 1 ? Integer.highestOneBit(15) << 1 : 16;
        this.f5467a = 0;
        this.f5468b = -1;
        this.f5469c = 0;
        this.f5471e = new long[iHighestOneBit];
        this.f5470d = iHighestOneBit - 1;
    }

    public long a() {
        int i10 = this.f5469c;
        if (i10 == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = (long[]) this.f5471e;
        int i11 = this.f5467a;
        long j10 = jArr[i11];
        this.f5467a = this.f5470d & (i11 + 1);
        this.f5469c = i10 - 1;
        return j10;
    }

    @Override // f3.c
    public int b() {
        return -1;
    }

    @Override // f3.c
    public int c() {
        return this.f5467a;
    }

    @Override // f3.c
    public int e() {
        u1.q qVar = (u1.q) this.f5471e;
        int i10 = this.f5468b;
        if (i10 == 8) {
            return qVar.B();
        }
        if (i10 == 16) {
            return qVar.I();
        }
        int i11 = this.f5469c;
        this.f5469c = i11 + 1;
        if (i11 % 2 != 0) {
            return this.f5470d & 15;
        }
        int iB = qVar.B();
        this.f5470d = iB;
        return (iB & 240) >> 4;
    }

    public d(v1.d dVar) {
        u1.q qVar = dVar.f16331c;
        this.f5471e = qVar;
        qVar.O(12);
        this.f5468b = qVar.F() & 255;
        this.f5467a = qVar.F();
    }
}
