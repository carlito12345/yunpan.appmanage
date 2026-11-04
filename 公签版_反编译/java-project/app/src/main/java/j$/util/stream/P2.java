package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class P2 extends D2 {

    /* renamed from: c, reason: collision with root package name */
    private long[] f9311c;

    /* renamed from: d, reason: collision with root package name */
    private int f9312d;

    P2(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9311c = new long[(int) j10];
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        int i10 = 0;
        Arrays.sort(this.f9311c, 0, this.f9312d);
        long j10 = this.f9312d;
        InterfaceC0125q2 interfaceC0125q2 = this.f9495a;
        interfaceC0125q2.n(j10);
        if (!this.f9209b) {
            while (i10 < this.f9312d) {
                interfaceC0125q2.accept(this.f9311c[i10]);
                i10++;
            }
        } else {
            while (i10 < this.f9312d && !interfaceC0125q2.p()) {
                interfaceC0125q2.accept(this.f9311c[i10]);
                i10++;
            }
        }
        interfaceC0125q2.m();
        this.f9311c = null;
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        long[] jArr = this.f9311c;
        int i10 = this.f9312d;
        this.f9312d = i10 + 1;
        jArr[i10] = j10;
    }
}
