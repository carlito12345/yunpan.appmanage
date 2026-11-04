package l2;

/* loaded from: classes.dex */
public final class h0 extends u {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c0 f10469b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.h f10470c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(androidx.recyclerview.widget.h hVar, c0 c0Var, c0 c0Var2) {
        super(c0Var);
        this.f10470c = hVar;
        this.f10469b = c0Var2;
    }

    @Override // l2.u, l2.c0
    public final b0 f(long j10) {
        b0 b0VarF = this.f10469b.f(j10);
        d0 d0Var = b0VarF.f10421a;
        long j11 = d0Var.f10442a;
        long j12 = this.f10470c.f2143b;
        d0 d0Var2 = new d0(j11, d0Var.f10443b + j12);
        d0 d0Var3 = b0VarF.f10422b;
        return new b0(d0Var2, new d0(d0Var3.f10442a, d0Var3.f10443b + j12));
    }
}
