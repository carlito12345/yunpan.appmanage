package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class G2 extends C2 {

    /* renamed from: c, reason: collision with root package name */
    private V2 f9233c;

    G2(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9233c = j10 > 0 ? new V2((int) j10) : new V2();
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        int[] iArr = (int[]) this.f9233c.e();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC0125q2 interfaceC0125q2 = this.f9485a;
        interfaceC0125q2.n(length);
        int i10 = 0;
        if (!this.f9201b) {
            int length2 = iArr.length;
            while (i10 < length2) {
                interfaceC0125q2.accept(iArr[i10]);
                i10++;
            }
        } else {
            int length3 = iArr.length;
            while (i10 < length3) {
                int i11 = iArr[i10];
                if (interfaceC0125q2.p()) {
                    break;
                }
                interfaceC0125q2.accept(i11);
                i10++;
            }
        }
        interfaceC0125q2.m();
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        this.f9233c.accept(i10);
    }
}
