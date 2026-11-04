package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class H2 extends D2 {

    /* renamed from: c, reason: collision with root package name */
    private X2 f9238c;

    H2(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9238c = j10 > 0 ? new X2((int) j10) : new X2();
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        long[] jArr = (long[]) this.f9238c.e();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC0125q2 interfaceC0125q2 = this.f9495a;
        interfaceC0125q2.n(length);
        int i10 = 0;
        if (!this.f9209b) {
            int length2 = jArr.length;
            while (i10 < length2) {
                interfaceC0125q2.accept(jArr[i10]);
                i10++;
            }
        } else {
            int length3 = jArr.length;
            while (i10 < length3) {
                long j10 = jArr[i10];
                if (interfaceC0125q2.p()) {
                    break;
                }
                interfaceC0125q2.accept(j10);
                i10++;
            }
        }
        interfaceC0125q2.m();
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9238c.accept(j10);
    }
}
