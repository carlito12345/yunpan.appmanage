package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class N2 extends B2 {

    /* renamed from: c, reason: collision with root package name */
    private double[] f9293c;

    /* renamed from: d, reason: collision with root package name */
    private int f9294d;

    N2(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9293c = new double[(int) j10];
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = 0;
        Arrays.sort(this.f9293c, 0, this.f9294d);
        long j10 = this.f9294d;
        InterfaceC0125q2 interfaceC0125q2 = this.f9474a;
        interfaceC0125q2.n(j10);
        if (!this.f9195b) {
            while (i10 < this.f9294d) {
                interfaceC0125q2.accept(this.f9293c[i10]);
                i10++;
            }
        } else {
            while (i10 < this.f9294d && !interfaceC0125q2.p()) {
                interfaceC0125q2.accept(this.f9293c[i10]);
                i10++;
            }
        }
        interfaceC0125q2.m();
        this.f9293c = null;
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        double[] dArr = this.f9293c;
        int i10 = this.f9294d;
        this.f9294d = i10 + 1;
        dArr[i10] = d10;
    }
}
