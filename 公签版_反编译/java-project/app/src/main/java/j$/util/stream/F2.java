package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class F2 extends B2 {

    /* renamed from: c, reason: collision with root package name */
    private T2 f9225c;

    F2(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9225c = j10 > 0 ? new T2((int) j10) : new T2();
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        double[] dArr = (double[]) this.f9225c.e();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC0125q2 interfaceC0125q2 = this.f9474a;
        interfaceC0125q2.n(length);
        int i10 = 0;
        if (!this.f9195b) {
            int length2 = dArr.length;
            while (i10 < length2) {
                interfaceC0125q2.accept(dArr[i10]);
                i10++;
            }
        } else {
            int length3 = dArr.length;
            while (i10 < length3) {
                double d10 = dArr[i10];
                if (interfaceC0125q2.p()) {
                    break;
                }
                interfaceC0125q2.accept(d10);
                i10++;
            }
        }
        interfaceC0125q2.m();
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        this.f9225c.accept(d10);
    }
}
