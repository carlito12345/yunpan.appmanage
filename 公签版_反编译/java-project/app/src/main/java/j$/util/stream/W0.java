package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
abstract class W0 extends N0 implements K0 {
    @Override // j$.util.stream.L0
    public final /* synthetic */ Object[] l(IntFunction intFunction) {
        return AbstractC0167z0.K(this, intFunction);
    }

    W0(K0 k02, K0 k03) {
        super(k02, k03);
    }

    @Override // j$.util.stream.K0
    public final void f(Object obj) {
        ((K0) this.f9287a).f(obj);
        ((K0) this.f9288b).f(obj);
    }

    @Override // j$.util.stream.K0
    public final void d(Object obj, int i10) {
        L0 l02 = this.f9287a;
        ((K0) l02).d(obj, i10);
        ((K0) this.f9288b).d(obj, i10 + ((int) ((K0) l02).count()));
    }

    @Override // j$.util.stream.K0
    public final Object e() {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objC = c((int) jCount);
        d(objC, 0);
        return objC;
    }

    public final String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f9287a, this.f9288b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
