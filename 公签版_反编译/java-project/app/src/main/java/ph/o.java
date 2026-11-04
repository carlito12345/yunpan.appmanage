package ph;

import java.util.Arrays;
import qh.f0;

/* loaded from: classes3.dex */
public final class o extends l {

    /* renamed from: j, reason: collision with root package name */
    public final rh.e f12738j;

    static {
        String[] strArr = oh.a.f11798d;
        String[] strArr2 = oh.f.f11806a;
        rh.v.R(oh.f.j(", ", Arrays.asList(strArr)));
    }

    public o(f0 f0Var, c cVar) {
        super(f0Var, null, cVar);
        this.f12738j = new rh.e();
    }

    @Override // ph.l
    /* renamed from: E */
    public final l clone() {
        return (o) super.clone();
    }

    @Override // ph.l, ph.q
    public final Object clone() {
        return (o) super.clone();
    }

    @Override // ph.l, ph.q
    /* renamed from: f */
    public final q clone() {
        return (o) super.clone();
    }

    @Override // ph.q
    public final void x(q qVar) {
        super.x(qVar);
        this.f12738j.remove(qVar);
    }
}
