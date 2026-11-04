package j$.util.stream;

import java.util.function.IntFunction;

/* renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0163y1 extends C0046a3 implements L0, D0 {
    @Override // j$.util.stream.D0
    public final L0 a() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(int i10) {
        AbstractC0167z0.I();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j10) {
        AbstractC0167z0.J();
        throw null;
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.U(this, j10, j11, intFunction);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.L0
    public final L0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.L0
    public final void j(Object[] objArr, int i10) {
        long j10 = i10;
        long jCount = count() + j10;
        if (jCount > objArr.length || jCount < j10) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f9411c == 0) {
            System.arraycopy(this.f9392e, 0, objArr, i10, this.f9410b);
            return;
        }
        for (int i11 = 0; i11 < this.f9411c; i11++) {
            Object[] objArr2 = this.f9393f[i11];
            System.arraycopy(objArr2, 0, objArr, i10, objArr2.length);
            i10 += this.f9393f[i11].length;
        }
        int i12 = this.f9410b;
        if (i12 > 0) {
            System.arraycopy(this.f9392e, 0, objArr, i10, i12);
        }
    }

    @Override // j$.util.stream.L0
    public final Object[] l(IntFunction intFunction) {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        j(objArr, 0);
        return objArr;
    }

    C0163y1() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        clear();
        s(j10);
    }
}
