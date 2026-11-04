package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class O2 extends C2 {

    /* renamed from: c, reason: collision with root package name */
    private int[] f9304c;

    /* renamed from: d, reason: collision with root package name */
    private int f9305d;

    O2(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9304c = new int[(int) j10];
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = 0;
        Arrays.sort(this.f9304c, 0, this.f9305d);
        long j10 = this.f9305d;
        InterfaceC0125q2 interfaceC0125q2 = this.f9485a;
        interfaceC0125q2.n(j10);
        if (!this.f9201b) {
            while (i10 < this.f9305d) {
                interfaceC0125q2.accept(this.f9304c[i10]);
                i10++;
            }
        } else {
            while (i10 < this.f9305d && !interfaceC0125q2.p()) {
                interfaceC0125q2.accept(this.f9304c[i10]);
                i10++;
            }
        }
        interfaceC0125q2.m();
        this.f9304c = null;
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        int[] iArr = this.f9304c;
        int i11 = this.f9305d;
        this.f9305d = i11 + 1;
        iArr[i11] = i10;
    }
}
