package j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes2.dex */
final class Q2 extends E2 {

    /* renamed from: d, reason: collision with root package name */
    private Object[] f9317d;

    /* renamed from: e, reason: collision with root package name */
    private int f9318e;

    Q2(InterfaceC0125q2 interfaceC0125q2, Comparator comparator) {
        super(interfaceC0125q2, comparator);
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9317d = new Object[(int) j10];
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = 0;
        Arrays.sort(this.f9317d, 0, this.f9318e, this.f9215b);
        long j10 = this.f9318e;
        InterfaceC0125q2 interfaceC0125q2 = this.f9501a;
        interfaceC0125q2.n(j10);
        if (!this.f9216c) {
            while (i10 < this.f9318e) {
                interfaceC0125q2.accept((InterfaceC0125q2) this.f9317d[i10]);
                i10++;
            }
        } else {
            while (i10 < this.f9318e && !interfaceC0125q2.p()) {
                interfaceC0125q2.accept((InterfaceC0125q2) this.f9317d[i10]);
                i10++;
            }
        }
        interfaceC0125q2.m();
        this.f9317d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.f9317d;
        int i10 = this.f9318e;
        this.f9318e = i10 + 1;
        objArr[i10] = obj;
    }
}
