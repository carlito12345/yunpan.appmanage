package u7;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class i0 extends a0 {
    public i0() {
        super(4);
    }

    @Override // u7.a0
    public final /* bridge */ /* synthetic */ a0 a(Object obj) {
        g(obj);
        return this;
    }

    public final void g(Object obj) {
        obj.getClass();
        b(obj);
    }

    public final j0 h() {
        int i10 = this.f15425b;
        if (i10 == 0) {
            int i11 = j0.f15482c;
            return f1.f15464j;
        }
        if (i10 != 1) {
            j0 j0VarJ = j0.j(i10, this.f15424a);
            this.f15425b = j0VarJ.size();
            this.f15426c = true;
            return j0VarJ;
        }
        Object obj = this.f15424a[0];
        Objects.requireNonNull(obj);
        int i12 = j0.f15482c;
        return new m1(obj);
    }
}
