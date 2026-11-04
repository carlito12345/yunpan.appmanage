package e3;

import java.math.RoundingMode;
import l2.b0;
import l2.y;
import u1.f0;

/* loaded from: classes.dex */
public final class b implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long f4720a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4721b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4722c;

    /* renamed from: d, reason: collision with root package name */
    public final y f4723d;

    public b(long j10, long j11, long j12) {
        this.f4723d = new y(j10, new long[]{j11}, new long[]{0});
        this.f4720a = j11;
        this.f4721b = j12;
        int i10 = -2147483647;
        if (j10 == -9223372036854775807L) {
            this.f4722c = -2147483647;
            return;
        }
        long jM = f0.M(j11 - j12, 8L, j10, RoundingMode.HALF_UP);
        if (jM > 0 && jM <= 2147483647L) {
            i10 = (int) jM;
        }
        this.f4722c = i10;
    }

    @Override // e3.i
    public final long a() {
        return this.f4721b;
    }

    @Override // e3.i
    public final long b() {
        return this.f4720a;
    }

    @Override // l2.c0
    public final boolean c() {
        return this.f4723d.c();
    }

    @Override // e3.i
    public final long d(long j10) {
        y yVar = this.f4723d;
        sb.e eVar = yVar.f10548b;
        if (eVar.f14472b == 0) {
            return -9223372036854775807L;
        }
        return eVar.c(f0.b(yVar.f10547a, j10));
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        return this.f4723d.f(j10);
    }

    @Override // e3.i
    public final int g() {
        return this.f4722c;
    }

    @Override // l2.c0
    public final long h() {
        return this.f4723d.f10549c;
    }

    public final boolean i(long j10) {
        sb.e eVar = this.f4723d.f10548b;
        int i10 = eVar.f14472b;
        return i10 != 0 && j10 - eVar.c(i10 - 1) < 100000;
    }
}
