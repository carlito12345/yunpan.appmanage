package g3;

import java.math.BigInteger;
import l2.b0;
import l2.c0;
import l2.d0;
import u1.f0;

/* loaded from: classes.dex */
public final class a implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f5989a;

    public a(b bVar) {
        this.f5989a = bVar;
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        b bVar = this.f5989a;
        BigInteger bigIntegerValueOf = BigInteger.valueOf((bVar.f5993d.f6030i * j10) / 1000000);
        long j11 = bVar.f5992c;
        long j12 = bVar.f5991b;
        d0 d0Var = new d0(j10, f0.h((bigIntegerValueOf.multiply(BigInteger.valueOf(j11 - j12)).divide(BigInteger.valueOf(bVar.f5995f)).longValue() + j12) - 30000, bVar.f5991b, j11 - 1));
        return new b0(d0Var, d0Var);
    }

    @Override // l2.c0
    public final long h() {
        return (this.f5989a.f5995f * 1000000) / r0.f5993d.f6030i;
    }
}
